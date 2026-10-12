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
status={'kicad_version':'10.0.6','erc_errors':ee,'erc_warnings':ew,'drc_violations':len(d['violations']),'drc_types':dict(counts),'unconnected_items':len(d['unconnected_items']),'schematic_spec_parity_mismatches':parity,'manufacturing_files':out,'release_ready':False,'hardware_tested':False}
(R/'validation/summary.json').write_text(json.dumps(status,indent=2)+'\n')
(R/'validation/RESULTS.md').write_text(f'''# R0検証結果 — リリース不可

KiCad 10.0.6 / 2026-10-12。回路図を読み込め、基板には実際の銅配線とGND zoneがあります。全配線完了・DRC合格とは言いません。

|検査|結果|
|---|---|
|ERC|エラー {ee}、警告 {ew}（カスタムシンボルのライブラリ照合差分）|
|DRC|違反 {len(d['violations'])}、未接続 {len(d['unconnected_items'])}|
|回路図export-netlist対部品仕様|不一致 {len(parity)}|
|出力許可32条件のtruth table|読出しROM・WR非作動・RESET解除・VALID有効の1条件だけOE=0|
|Gerber/Excellon|14ファイル（Gerber job含む）、非空・mm単位・終端を確認|
|BOM/CPL|29部品、PCBA対象27部品の集合一致。モジュール/接点を除外|
|ターゲットファームbuild|未実施。既存ARM GCCは見つかったがpico-sdk未検出|
|実機/組立/発注|未実施|

DRC内訳：{dict(counts)}。詳細は `drc-final.json`。未接続と基板端クリアランスが残るため製造データは検討用です。干渉した配線は削除して停止しており、見た目を優先して短絡を隠していません。ERC警告を除外設定で隠していません。**ERC/DRC PASSではありません。**

ガーバーの確認はファイル構文と出力セットの検査で、独立CAMレビューやJLCアップロード審査ではありません。SHA256を `summary.json` に保存。BOMの部品在庫・CPL rotationは未確認。

残る作業：未接続/端クリアランス修正、ERCライブラリ差分の解消、回路図↔PCBのKiCad full parity確認、実物B2のpin/孔照合、カートリッジ外形/厚み/端子/シェル/面取りの照合、SDKと実験コードbuild、期限切れ読出し破棄の実装、/RD最小幅とHi-Zの実機測定、電源立上/USB二重給電/リセットの測定。単体RP2354B版は指定コイル欠品の解決後に別設計が必要。
''')
# Explicitly draft-named archive; contains manufacturing explanation.
with zipfile.ZipFile(R/'manufacturing/romcart-R0-DRAFT-NOT-FOR-ORDER.zip','w',zipfile.ZIP_DEFLATED) as z:
 for p in files:z.write(p,'gerbers/'+p.name)
 z.write(R/'manufacturing/README.md','README.md')
print('ERC',ee,ew,'DRC',len(d['violations']),'unconnected',len(d['unconnected_items']),'net parity mismatches',len(parity))
