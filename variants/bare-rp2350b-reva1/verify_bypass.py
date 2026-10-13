import json,csv,xml.etree.ElementTree as E
from pathlib import Path
root=Path(__file__).resolve().parent;d=root/'design';data=json.loads((root/'design_data.json').read_text())
rows=list(csv.DictReader((d/'pin_netlist.csv').open()))
expected={(a['Reference'],a['Physical_pin']):a['Net'] for a in rows if a['Net']!='NC'}
actual={}
for net in E.parse(d/'gbc_rom.sch').findall('drawing/schematic/sheets/sheet/nets/net'):
 for pr in net.findall('segment/pinref'):
  k=(pr.attrib['part'],pr.attrib['pin'][1:]);assert k not in actual;actual[k]=net.attrib['name']
assert expected==actual
for i in range(17):
 sig=f'A{i}' if i<16 else 'RD';p=data['pins'][f'JP{i+1}']
 assert p['1'][1]==sig+'_BUFFERED' and p['2'][1]==sig+'_RP' and p['3'][1]==sig+'_5V'
 # Treat all same-named nets as joined; selected bridge merges only 2 nets.
 for mode,bridge in [('BUFFERED',(1,2)),('DIRECT',(2,3))]:
  joined={p[str(v)][1] for v in bridge}
  assert sig+'_RP' in joined
  assert (sig+'_5V' in joined)==(mode=='DIRECT')
  assert (sig+'_BUFFERED' in joined)==(mode=='BUFFERED')
 assert len(set(p[str(v)][1] for v in [1,2,3]))==3
# Each LVC Y now lands on BUFFERED only, each MCU input lands on RP only.
for i in range(16):
 gp=[77,78,79,80,1,2,3,4,6,7,8,9,11,12,13,14][i]
 assert data['pins']['U1'][str(gp)][1]==f'A{i}_RP'
assert data['pins']['U1']['25'][1]=='RD_RP'
assert data['pins']['U4']['4'][1]=='RD_BUFFERED'
assert 'D0_3V3'==data['pins']['U1']['16'][1]
print('PASS: 17 selector mappings; 34 selected paths; EAGLE/CSV endpoint consistency')
