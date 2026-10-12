#!/usr/bin/env python3
import pcbnew as k,pathlib
R=pathlib.Path(__file__).resolve().parents[1];B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb'));n=B.FindNet('/GND') or B.FindNet('GND')
for layer in [k.In1_Cu,k.B_Cu]:
 z=k.ZONE(B);z.SetNet(n);z.SetLayer(layer);z.SetLocalClearance(200000);z.SetMinThickness(200000);z.SetThermalReliefGap(250000);z.SetThermalReliefSpokeWidth(250000)
 z.Outline().NewOutline()
 for x,y in [(0.5,.5),(57,.5),(57,50.5),(.5,50.5)]:z.Outline().Append(round(x*1e6),round(y*1e6))
 B.Add(z)
B.BuildConnectivity();k.SaveBoard(str(R/'hardware/romcart.kicad_pcb'),B)
