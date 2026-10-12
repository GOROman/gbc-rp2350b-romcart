import pcbnew as k,pathlib,json,math
R=pathlib.Path(__file__).resolve().parents[1];path=R/'hardware/romcart.kicad_pcb';B=k.LoadBoard(str(path));d=json.loads((R/'validation/drc-final.json').read_text());remove=set()
# Remove diagnosed unused segments and duplicated vias, keeping one electrically equivalent via.
for v in d['violations']:
 if v['type'] in ['track_dangling','copper_edge_clearance']:
  for a in v['items']:
   if a['description'].startswith('Track '):remove.add(a['uuid'])
 if v['type']=='holes_co_located':remove.add(v['items'][1]['uuid'])
# Contacts extend downwards, leaving routed ends at y48 inside the new 5 mm contact region.
f=next(f for f in B.GetFootprints() if f.GetReference()=='J1')
for p in f.Pads():v=p.GetPosition();p.SetPosition(k.VECTOR2I(v.x,49500000))
for s in B.GetDrawings():
 if s.GetLayer()==k.Edge_Cuts:
  for getter,setter in [(s.GetStart,s.SetStart),(s.GetEnd,s.SetEnd)]:
   v=getter()
   if v.y==51000000:setter(k.VECTOR2I(v.x,52500000))
# Via under the plastic TSSOP body, away from solder pads; no via-in-pad is required.
for ref in ['U1','U2']:
 f=next(f for f in B.GetFootprints() if f.GetReference()==ref);p=next(p for p in f.Pads() if p.GetNumber()=='18');v=p.GetPosition();x=9500000;y=v.y;n=p.GetNetCode()
 t=k.PCB_TRACK(B);t.SetStart(v);t.SetEnd(k.VECTOR2I(x,y));t.SetWidth(150000);t.SetLayer(k.F_Cu);t.SetNetCode(n);B.Add(t)
 vi=k.PCB_VIA(B);vi.SetPosition(k.VECTOR2I(x,y));vi.SetWidth(600000);vi.SetDrill(300000);vi.SetViaType(k.VIATYPE_THROUGH);vi.SetLayerPair(k.F_Cu,k.B_Cu);vi.SetNetCode(n);B.Add(vi)
k.SaveBoard(str(path),B)
# Delete exact top-level routing records without the KiCad 10 SWIG remove ownership issue.
s=path.read_text();blocks=[];depth=0;start=None;quoted=False;esc=False
for i,c in enumerate(s):
 if quoted:
  if esc:esc=False
  elif c=='\\':esc=True
  elif c=='"':quoted=False
  continue
 if c=='"':quoted=True;continue
 if c=='(':
  if depth==1:start=i
  depth+=1
 elif c==')':
  depth-=1
  if depth==1 and start is not None:blocks.append((start,i+1));start=None
for a,c in reversed(blocks):
 sub=s[a:c]
 if sub.startswith(('(segment','(via')) and any(u in sub for u in remove):s=s[:a]+s[c:]
path.write_text(s)
# Source generator and manufacture notes follow the actual prototype geometry.
p=R/'scripts/design.py';t=p.read_text().replace('1.5*i,48','1.5*i,49.5').replace('(57.5,51)','(57.5,52.5)').replace('(0,51)','(0,52.5)');p.write_text(t)
for name in ['README.md','manufacturing/README.md']:
 p=R/name;t=p.read_text().replace('57.5×51mm','57.5×52.5mm').replace('57.5×51.0mm','57.5×52.5mm');p.write_text(t)
