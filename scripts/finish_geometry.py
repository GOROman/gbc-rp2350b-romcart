import pcbnew as k,pathlib
R=pathlib.Path(__file__).resolve().parents[1];P=R/'hardware/romcart.kicad_pcb';B=k.LoadBoard(str(P))
for old,new in [((17.8,29.1),(17.87,29.0)),((48.9,39.7),(48.8,39.45)),((22.0,45.85),(22.6,45.85))]:
 a=k.VECTOR2I(round(old[0]*1e6),round(old[1]*1e6));c=k.VECTOR2I(round(new[0]*1e6),round(new[1]*1e6))
 for t in B.GetTracks():
  if isinstance(t,k.PCB_VIA):
   if t.GetPosition()==a:t.SetPosition(c)
  else:
   if t.GetStart()==a:t.SetStart(c)
   if t.GetEnd()==a:t.SetEnd(c)
print([x for x in dir(k) if 'ISLAND' in x])
print([x for x in dir(k.ZONE) if 'Island' in x])
for z in B.Zones():z.SetIslandRemovalMode(k.ISLAND_REMOVAL_MODE_ALWAYS)
f=next(f for f in B.GetFootprints() if f.GetReference()=='J1');k.PCB_IO_MGR.FindPlugin(k.PCB_IO_MGR.KICAD_SEXP).FootprintSave(str(R/'hardware/RomCart.pretty'),f)
B.BuildConnectivity();k.SaveBoard(str(P),B)
