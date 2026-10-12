import pcbnew as k,pathlib,json
R=pathlib.Path(__file__).resolve().parents[1];P=R/'hardware/romcart.kicad_pcb';B=k.LoadBoard(str(P));d=json.loads((R/'validation/drc-final.json').read_text());remove=set()
for t in B.GetTracks():
 if t.GetNetname() in ['D'+str(i)+'_GB' for i in range(8)]:remove.add(t.m_Uuid.AsString())
for v in d['violations']:
 if v['type']=='tracks_crossing':
  for a in v['items']:
   if a['description'].startswith(('Track [A0]','Track [A1]')):remove.add(a['uuid'])
# Adjust actual hole geometry, not DRC constraints. Retarget all existing copper anchors.
for old,new,delete in [((14.6,17),(14.8,17),True),((8.55,20),(8.7,20.1),True),((48.8,39.7),(48.9,39.7),False),((17.9,29),(17.8,29.1),False)]:
 a=k.VECTOR2I(round(old[0]*1e6),round(old[1]*1e6));c=k.VECTOR2I(round(new[0]*1e6),round(new[1]*1e6))
 for t in B.GetTracks():
  if isinstance(t,k.PCB_VIA):
   if t.GetPosition()==a:
    if delete:remove.add(t.m_Uuid.AsString())
    else:t.SetPosition(c)
  else:
   if t.GetStart()==a:t.SetStart(c)
   if t.GetEnd()==a:t.SetEnd(c)
# Solder-mask tented standard through-via fanout outside resistor and contact pads.
for i in range(8):
 n=B.FindNet('D'+str(i)+'_GB').GetNetCode();src=(22+i*2.3,44.825);v1=(src[0],45.85);dst=(37+i*1.5,49.5);v2=(dst[0],46.65)
 for a,c in [(src,v1),(v2,dst)]:
  t=k.PCB_TRACK(B);t.SetStart(k.VECTOR2I(round(a[0]*1e6),round(a[1]*1e6)));t.SetEnd(k.VECTOR2I(round(c[0]*1e6),round(c[1]*1e6)));t.SetWidth(150000);t.SetLayer(k.F_Cu);t.SetNetCode(n);B.Add(t)
 for x,y in [v1,v2]:
  v=k.PCB_VIA(B);v.SetPosition(k.VECTOR2I(round(x*1e6),round(y*1e6)));v.SetWidth(600000);v.SetDrill(300000);v.SetViaType(k.VIATYPE_THROUGH);v.SetLayerPair(k.F_Cu,k.B_Cu);v.SetNetCode(n);B.Add(v)
k.SaveBoard(str(P),B)
s=P.read_text();blocks=[];depth=0;start=None;quoted=False;escape=False
for j,c in enumerate(s):
 if quoted:
  if escape:escape=False
  elif c=='\\':escape=True
  elif c=='"':quoted=False
  continue
 if c=='"':quoted=True;continue
 if c=='(':
  if depth==1:start=j
  depth+=1
 elif c==')':
  depth-=1
  if depth==1 and start is not None:blocks.append((start,j+1));start=None
for a,c in reversed(blocks):
 sub=s[a:c]
 if sub.startswith(('(segment','(via')) and any(u in sub for u in remove):s=s[:a]+s[c:]
P.write_text(s)
print('Removed/retargeted routing for controlled reroute')
