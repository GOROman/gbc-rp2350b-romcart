import pcbnew as k,pathlib,json,re
R=pathlib.Path(__file__).resolve().parents[1];C=json.loads((R/'hardware/components.json').read_text());B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb'));root=re.search(r'\(uuid "([^"]+)"\)',(R/'hardware/romcart.kicad_sch').read_text()).group(1)
for n in B.GetNetsByNetcode().values():
 if n.GetNetCode() and n.GetNetname() and not n.GetNetname().startswith(('/', 'unconnected-')):n.SetNetname('/'+n.GetNetname())
for f in B.GetFootprints():
 c=next(c for c in C if c['ref']==f.GetReference());p=k.KIID_PATH();p.push_back(k.KIID(root));p.push_back(k.KIID(c['uuid']));f.SetPath(p);f.SetSheetfile('romcart.kicad_sch');f.SetSheetname('/')
B.BuildConnectivity();k.SaveBoard(str(R/'hardware/romcart.kicad_pcb'),B)
print('KiCad schematic UUID paths and qualified net names synchronized')
# Populate symbol metadata and exact NC net identities from KiCad's own netlist.
import xml.etree.ElementTree as E
B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb'))
for f in B.GetFootprints():
 c=next(c for c in C if c['ref']==f.GetReference())
 f.SetField('MPN',c['mpn']);f.SetField('Assembly',c['assembly']);f.GetField('MPN').SetVisible(False);f.GetField('Assembly').SetVisible(False)
for el in E.parse(R/'validation/schematic.net').findall('.//nets/net'):
 name=el.attrib['name']
 if not name.startswith('unconnected-'):continue
 n=B.FindNet(name)
 if n is None:
  n=k.NETINFO_ITEM(B,name,len(B.GetNetsByNetcode()));B.Add(n)
 for nd in el.findall('node'):
  if nd.attrib['ref'].startswith('#'):continue
  f=next(f for f in B.GetFootprints() if f.GetReference()==nd.attrib['ref']);p=next(p for p in f.Pads() if p.GetNumber()==nd.attrib['pin']);p.SetNet(n)
B.BuildConnectivity();k.SaveBoard(str(R/'hardware/romcart.kicad_pcb'),B)
