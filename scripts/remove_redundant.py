import pcbnew as k,pathlib,json
R=pathlib.Path(__file__).resolve().parents[1];P=R/'hardware/romcart.kicad_pcb';B=k.LoadBoard(str(P));d=json.loads((R/'validation/drc-final.json').read_text());remove={v['items'][0]['uuid'] for v in d['violations'] if v['type']=='via_dangling'}
a=k.VECTOR2I(48800000,39450000);c=k.VECTOR2I(48300000,39700000)
for t in B.GetTracks():
 if isinstance(t,k.PCB_VIA):
  if t.GetPosition()==a:remove.add(t.m_Uuid.AsString())
 else:
  if t.GetStart()==a:t.SetStart(c)
  if t.GetEnd()==a:t.SetEnd(c)
for z in B.Zones():z.SetNet(B.FindNet('GND'));z.SetIslandRemovalMode(k.ISLAND_REMOVAL_MODE_ALWAYS)
k.SaveBoard(str(P),B)
s=P.read_text();blocks=[];depth=0;start=None;quoted=False;esc=False
for j,c in enumerate(s):
 if quoted:
  if esc:esc=False
  elif c=='\\':esc=True
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
 if s[a:c].startswith('(via') and any(u in s[a:c] for u in remove):s=s[:a]+s[c:]
P.write_text(s)
