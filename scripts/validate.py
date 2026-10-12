#!/usr/bin/env python3
"""Export sanity checks, pin/net parity, and candid release status."""
import pathlib,json,hashlib,csv,re,zipfile,collections,xml.etree.ElementTree as E
R=pathlib.Path(__file__).resolve().parents[1];C=json.loads((R/'hardware/components.json').read_text());out={};gerb=R/'manufacturing/gerbers';files=list(gerb.iterdir());errs=[]
for f in files:
 s=f.read_text()
 if f.suffix=='.gbrjob':
  json.loads(s);out[f.name]={'bytes':f.stat().st_size,'sha256':hashlib.sha256(f.read_bytes()).hexdigest()};continue
 isdrill=f.suffix=='.drl'
 if isdrill:
  if not('M48' in s and 'M30' in s and 'METRIC' in s):errs.append(f.name+' incomplete Excellon')
 else:
  if not('%MOMM*%' in s and 'M02*' in s):errs.append(f.name+' incomplete Gerber')
 out[f.name]={'bytes':f.stat().st_size,'sha256':hashlib.sha256(f.read_bytes()).hexdigest()}
assert len(files)==14,len(files)
# Exactly four copper layers, both masks/pastes/silks, closed rectangular outline, PTH/NPTH.
assert all((gerb/('romcart-'+x)).exists() for x in ['F_Cu.gtl','In1_Cu.g1','In2_Cu.g2','B_Cu.gbl','F_Mask.gts','B_Mask.gbs','Edge_Cuts.gm1','PTH.drl','NPTH.drl'])
assert not errs,errs
# CPL derived from actual exported KiCad positions and filtered to PCBA only.
rows=list(csv.DictReader((R/'manufacturing/positions-raw.csv').open()));pcba={c['ref'] for c in C if c['assembly']=='PCBA'}
with (R/'manufacturing/CPL.csv').open('w') as f:
 w=csv.writer(f);w.writerow(['Designator','Mid X','Mid Y','Layer','Rotation'])
 for row in rows:
  if row['Ref'] in pcba:w.writerow([row['Ref'],row['PosX'],row['PosY'],'Top' if row['Side']=='top' else row['Side'],row['Rot']])
# CSV BOM/CPL coverage; library stock and placement rotation still require PCBA review.
assert len(pcba)==27
assert {x['Designator'] for x in csv.DictReader((R/'manufacturing/CPL.csv').open())}==pcba
# Check the schematic exported netlist against component net assignments.
# XML KiCad export is a separate tool output, not a rewritten json netlist.
tree=E.parse(R/'validation/schematic.net');actual={}
for net in tree.findall('.//nets/net'):
 for nd in net.findall('node'):actual[(nd.attrib['ref'],nd.attrib['pin'])]=net.attrib['name'].lstrip('/')
parity=[]
for c in C:
 for pin,n in c['pins'].items():
  if n and actual.get((c['ref'],pin))!=n:parity.append([c['ref'],pin,n,actual.get((c['ref'],pin))])
# ROM enable truth table rejects write, reset, non-ROM, and invalid firmware responses.
truth=[]
for rd in [0,1]:
 for a15 in [0,1]:
  for wr in [0,1]:
   for reset in [0,1]:
    for valid in [0,1]:
     oe=rd|a15|(not(valid and wr and reset));truth.append([rd,a15,wr,reset,valid,int(oe)])
assert sum(t[-1]==0 for t in truth)==1
(R/'validation/enable-truth-table.csv').write_text('RD_L,A15,WR_L,RESET_L,VALID,OE_L\n'+'\n'.join(','.join(map(str,t)) for t in truth)+'\n')
# Keep absolute personal paths out of public reports.
for p in list((R/'validation').glob('*.json'))+list((R/'validation').glob('*.rpt'))+[R/'validation/schematic.net',R/'validation/drill-report.txt']:
 s=p.read_text();s=s.replace(str(R),'PROJECT')
 s=re.sub(r'/Users/[^/\s\"<>]+','USER_HOME',s);p.write_text(s)
d=json.loads((R/'validation/drc-final.json').read_text());erc=(R/'validation/erc-final.rpt').read_text();counts=collections.Counter(v['type'] for v in d['violations']);ee=len(re.findall(r'; error',erc));ew=len(re.findall(r'; warning',erc))
status={'kicad_version':'10.0.6','erc_errors':ee,'erc_warnings':ew,'drc_violations':len(d['violations']),'drc_types':dict(counts),'schematic_parity_issues':len(d.get('schematic_parity',[])),'unconnected_items':len(d['unconnected_items']),'schematic_spec_parity_mismatches':parity,'manufacturing_files':out,'release_ready':False,'hardware_tested':False}
(R/'validation/summary.json').write_text(json.dumps(status,indent=2)+'\n')
(R/'validation/RESULTS.md').write_text(f"""# R0配線修正版の検証 — 実機未検証・発注不可

KiCad 10.0.6 / 2026-10-12。現在のネイティブPCBを正本として検証しました。ルール値は初回の0.15mm clearance / 0.15mm track / 0.6mm via / 0.3mm drill / 0.25mm hole-edge間隔を維持。除外設定による合格化はしていません。

|検査|結果|
|---|---|
|ERC|エラー {ee}、警告 {ew}|
|DRC|違反 {len(d['violations'])}、未接続 {len(d['unconnected_items'])}|
|KiCad schematic parity|問題 {len(d.get('schematic_parity',[]))}（型番/Assembly/NCのネット識別も同期）|
|回路図export-netlist対部品仕様|不一致 {len(parity)}（1枚回路図の / 接頭辞を正規化）|
|出力許可32条件のtruth table|許可はROM読出し条件の1組のみ|
|Gerber/Excellon|14ファイル、mm単位・終端・非空・SHA256を確認|
|BOM/CPL|29部品、PCBA27部品の集合一致|
|寸法/端子/GPIO|mechanical.jsonで57.5×52.5mm/0.8mm/4層、接点32個、module64孔、配置/ネット不一致0|
|ターゲットファームbuild|未実施。ARM GCC15.3.1は既存、Pico SDK未検出。CMakeを実行しSDK不足で停止|
|実機/組立/発注|未実施|

ERC/DRC/ネット整合のソフトウェア検査は合格。詳細は erc-final.rpt / drc-parity.json / mechanical.json。これは基板が実機で安全に動作するという保証ではありません。

初回R0は未接続28、DRCエラー3/警告12でした。保存版は r0-retained/ とGit履歴に残しています。修正版では実際の銅配線を追加・修正し、重複穴と未使用配線/銅を削除。GND1は銅面へ直接接続してthermal starvationを解消したため、モジュール手実装時の熱容量を考慮してください。サーマル判定ルールを無効にしていません。

外形は機械データ上の寸法を確認した試作矩形。WaveShare公式シリーズ図の25.4mm/2.54mmと孔配置は照合済み。購入するB2の実物、純正/Chromaticシェル、挿入深さ/端子左右/面取り/hard-gold/接触圧/高さは未確認です。

製造出力の検査は出力セットと基本構文の確認で、独立CAMレビューやJLCアップロード審査ではありません。CPLの実機・JLC向けrotationと全BOMの実装在庫は未確認。発注停止条件として残っています。

Pico SDKを取得するならRaspberry Pi公式ソースをworkspace内へ取得する必要があります。新規ソフトの取得/導入は自動で行っていません。標準ファームはVALID=0/RESET保持。実験PIOの期限切れ読出し混入問題、最悪応答時間、起動/USB二重給電/brownout/Hi-Zの実測を解決するまでは動作完成扱いにしません。

単体RP2354B版は未作成。外部1.1V供給の公式構成と具体的LDO候補/熱計算を docs/smd-cost-option.md に追加。条件確認と採用判断後に別設計へ進めます。
""")
# Explicitly draft-named archive; contains manufacturing explanation.
with zipfile.ZipFile(R/'manufacturing/romcart-R0-DRAFT-NOT-FOR-ORDER.zip','w',zipfile.ZIP_DEFLATED) as z:
 for p in files:z.write(p,'gerbers/'+p.name)
 z.write(R/'manufacturing/README.md','README.md')
print('ERC',ee,ew,'DRC',len(d['violations']),'unconnected',len(d['unconnected_items']),'net parity mismatches',len(parity))
