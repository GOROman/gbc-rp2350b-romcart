#!/usr/bin/env python3
"""Remove DRC-reported conflicting routing segments; never suppress DRC rules."""
import pcbnew as k,json,pathlib
R=pathlib.Path(__file__).resolve().parents[1];B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb'));d=json.loads((R/'validation/drc-routed.json').read_text());rm=set()
for v in d['violations']:
 if v['type'] in ['shorting_items','clearance','hole_clearance','hole_to_hole','holes_co_located','solder_mask_bridge','via_dangling']:
  for x in v['items']:
   if x['description'].startswith(('Track ','Via ')):rm.add(x['uuid'])
count=0
for t in list(B.GetTracks()):
 if t.m_Uuid.AsString() in rm:B.Remove(t);count+=1
B.BuildConnectivity();k.SaveBoard(str(R/'hardware/romcart.kicad_pcb'),B)
print('Removed',count,'conflicting/unneeded route items; connectivity must be checked again.')
