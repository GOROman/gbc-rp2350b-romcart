import pcbnew as k,pathlib,json
R=pathlib.Path(__file__).resolve().parents[1];P=R/'hardware/romcart.kicad_pcb';B=k.LoadBoard(str(P));d=json.loads((R/'validation/drc-final.json').read_text());rm={v['items'][0]['uuid'] for v in d['violations'] if v['type']=='track_dangling'}
f=next(f for f in B.GetFootprints() if f.GetReference()=='M1');p=next(p for p in f.Pads() if p.GetNumber()=='GND1');p.SetLocalZoneConnection(k.ZONE_CONNECTION_FULL)
k.PCB_IO_MGR.FindPlugin(k.PCB_IO_MGR.KICAD_SEXP).FootprintSave(str(R/'hardware/RomCart.pretty'),f);k.SaveBoard(str(P),B)
s=P.read_text();parts=[];depth=0;start=None;quote=False;esc=False
for j,c in enumerate(s):
 if quote:
  if esc:esc=False
  elif c=='\\':esc=True
  elif c=='"':quote=False
  continue
 if c=='"':quote=True;continue
 if c=='(':
  if depth==1:start=j
  depth+=1
 elif c==')':
  depth-=1
  if depth==1 and start is not None:parts.append((start,j+1));start=None
for a,c in reversed(parts):
 if s[a:c].startswith('(segment') and any(u in s[a:c] for u in rm):s=s[:a]+s[c:]
P.write_text(s)
