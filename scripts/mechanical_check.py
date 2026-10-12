import pcbnew as k,pathlib,json,csv,math
R=pathlib.Path(__file__).resolve().parents[1];B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb'));C=json.loads((R/'hardware/components.json').read_text());f={f.GetReference():f for f in B.GetFootprints()}
# Actual geometry, not the README or a generator's requested geometry.
edge=[s for s in B.GetDrawings() if s.GetLayer()==k.Edge_Cuts];pts=[(p.x/1e6,p.y/1e6) for s in edge for p in [s.GetStart(),s.GetEnd()]]
assert len(edge)==4
xs=sorted(set(x for x,y in pts));ys=sorted(set(y for x,y in pts));assert xs==[0,57.5] and ys==[0,52.5],(xs,ys)
J=sorted(f['J1'].Pads(),key=lambda p:int(p.GetNumber()));assert len(J)==32
for i,p in enumerate(J):
 x,y=p.GetPosition().x/1e6,p.GetPosition().y/1e6;w,h=p.GetSize().x/1e6,p.GetSize().y/1e6
 assert math.isclose(x,5.5+1.5*i) and math.isclose(y,49.5) and(w,h)==(1,5)
 assert p.IsOnLayer(k.F_Cu) and not p.IsOnLayer(k.B_Cu)
 # Copper contact reaches y52, keeping nominal 0.5mm to straight lower edge.
 assert y+h/2==52
M={p.GetNumber():p for p in f['M1'].Pads()};assert len(M)==64
for row in csv.DictReader((R/'docs/module-pad-map.csv').open()):
 p=M[row['Pad']];x=p.GetPosition().x/1e6-30;y=p.GetPosition().y/1e6-17
 assert math.isclose(x,float(row['x_mm_from_center']),abs_tol=1e-6) and math.isclose(y,float(row['y_mm_from_center']),abs_tol=1e-6)
for c in C:
 for p in f[c['ref']].Pads():
  n=c['pins'].get(p.GetNumber());actual=p.GetNetname()
  assert (actual.lstrip('/')==n) if n else actual.startswith('unconnected-'),(c['ref'],p.GetNumber(),n,actual)
report={'outline_mm':[57.5,52.5],'thickness_mm':B.GetDesignSettings().GetBoardThickness()/1e6,'copper_layers':B.GetCopperLayerCount(),'fingers':{'count':32,'pitch_mm':1.5,'width_mm':1.0,'length_mm':5.0,'face':'F.Cu','edge_gap_mm':0.5},'module_pads':64,'module_size_from_official_drawing_mm':[25.4,25.4],'module_grid_from_official_drawing_mm':2.54,'pad_position_mismatches':0,'pin_net_mismatches':0,'physical_B2_and_console_fit_confirmed':False}
(R/'validation/mechanical.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
