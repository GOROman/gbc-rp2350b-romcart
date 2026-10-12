#!/usr/bin/env python3
"""Generate carrier sources. Run with KiCad's bundled Python (pcbnew)."""
import pcbnew as k, json, pathlib, uuid, csv
ROOT=pathlib.Path(__file__).resolve().parents[1]; H=ROOT/'hardware'; H.mkdir(exist_ok=True)
LIB=pathlib.Path('/Applications/KiCad/KiCad.app/Contents/SharedSupport/footprints')
FP=H/'RomCart.pretty'; FP.mkdir(exist_ok=True)
def uid(): return str(uuid.uuid4())
def layers(*ls):
 z=k.LSET()
 for l in ls:z.AddLayer(l)
 return z
def mm(x,y): return k.VECTOR2I(round(x*1e6),round(y*1e6))
b=k.BOARD(); b.SetCopperLayerCount(4); b.GetDesignSettings().SetBoardThickness(800000)
nets={}; comps=[]
def net(n):
 if not n:return None
 if n not in nets:
  z=k.NETINFO_ITEM(b,n,len(nets)+1); b.Add(z); nets[n]=z
 return nets[n]
def add(ref,value,foot,x,y,pins,mpn,man='Texas Instruments',assembly='PCBA',rot=0,names=None,types=None):
 if isinstance(foot,str):
  lib,item=foot.split(':'); f=k.FootprintLoad(str(LIB/(lib+'.pretty')),item)
 else:f=foot;item=f.GetValue()
 f.SetReference(ref);f.SetValue(value); f.SetFPID(k.LIB_ID('RomCart',item));f.SetPosition(mm(x,y));f.SetOrientationDegrees(rot)
 for p in f.Pads():
  n=pins.get(p.GetNumber());
  if n:p.SetNet(net(n))
 f.Reference().SetTextSize(mm(1,1)); f.Reference().SetTextThickness(120000)
 f.Value().SetVisible(False)
 b.Add(f)
 # Vendored footprint keeps no external 3D model references.
 f.Models().clear()
 k.PCB_IO_MGR.FindPlugin(k.PCB_IO_MGR.KICAD_SEXP).FootprintSave(str(FP),f)
 c=dict(ref=ref,value=value,footprint='RomCart:'+item,mpn=mpn,manufacturer=man,assembly=assembly,pins=pins,names=names or {},types=types or {},uuid=uid(),x=x,y=y,rotation=rot)
 comps.append(c);return f
# Physical ring from official Waveshare 25.40 mm module photograph/dimension drawing.
# Named pad numbers eliminate opaque connector renumbering.
pos={}
def put(name,x,y):pos[name]=(x,y)
put('GND1',-11.43,-11.43);put('GND2',-11.43,11.43);put('GND3',11.43,11.43);put('GND4',11.43,-11.43)
for i in range(7):put('GP'+str(2*i+2),-11.43,-8.89+2.54*i)
put('GND7',-11.43,8.89)
for i in range(8):put('GP'+str(2*i+1),-8.89,-8.89+2.54*i)
for i in range(7):put('GP'+str(17+2*i),-8.89+2.54*i,11.43)
put('GP30',8.89,11.43)
for i in range(7):put('GP'+str(16+2*i),-6.35+2.54*i,8.89)
for i in range(7):put('GP'+str(32+2*i),11.43,8.89-2.54*i)
put('GP45',11.43,-8.89)
for i in range(7):put('GP'+str(31+2*i),8.89,6.35-2.54*i)
for name,x in zip(['GP0','VBUS','3V3_EN','RUN','USB_DP','USB_DM','BOOTSEL','GP47'],[-8.89,-6.35,-3.81,-1.27,1.27,3.81,6.35,8.89]):put(name,x,-11.43)
for name,x in zip(['3V3','GND6','ADC_VREF','SWCLK','SWD','GP46'],[-6.35,-3.81,-1.27,1.27,3.81,6.35]):put(name,x,-8.89)
assert len(pos)==64,len(pos)
f=k.FOOTPRINT(b);f.SetValue('Core2350B_64_TH')
for n,(x,y) in pos.items():
 p=k.PAD(f);p.SetNumber(n);p.SetPosition(mm(x,y));p.SetSize(mm(1.65,1.65));p.SetDrillSize(mm(1,1));p.SetShape(k.PAD_SHAPE_CIRCLE);p.SetAttribute(k.PAD_ATTRIB_PTH);p.SetLayerSet(layers(k.F_Cu,k.In1_Cu,k.In2_Cu,k.B_Cu,k.F_Mask,k.B_Mask));f.Add(p)
def line(f,a,c,layer=k.F_SilkS,width=.15):
 s=k.PCB_SHAPE(f);s.SetShape(k.SHAPE_T_SEGMENT);s.SetStart(mm(*a));s.SetEnd(mm(*c));s.SetWidth(round(width*1e6));s.SetLayer(layer);f.Add(s)
for a,c in [((-12.7,-12.7),(12.7,-12.7)),((12.7,-12.7),(12.7,12.7)),((12.7,12.7),(-12.7,12.7)),((-12.7,12.7),(-12.7,-12.7))]:line(f,a,c)
for a,c in [((-13,-13),(13,-13)),((13,-13),(13,13)),((13,13),(-13,13)),((-13,13),(-13,-13))]:line(f,a,c,k.F_CrtYd,.05)
pins={n:None for n in pos};pins.update({n:'GND' for n in pos if n.startswith('GND')});pins['VBUS']='MOD_VBUS';pins['3V3']='+3V3'
for i in range(16):pins['GP'+str(i)]='A'+str(i)+'_3V3'
for i in range(8):pins['GP'+str(16+i)]='D'+str(i)+'_3V3'
for i,n in enumerate(['RD_L','WR_L','RESET_L','CLK']):pins['GP'+str(24+i)]=n+'_3V3'
pins['GP28']='VALID';pins['GP29']='RESET_HOLD'
types={n:'input' for n in pins if n.startswith('GP')};types.update({n:'output' for n in ['GP'+str(i) for i in range(16,24)]+['GP28','GP29']});types.update(VBUS='power_in',**{'3V3':'power_out'});types.update({n:'passive' for n in pins if n.startswith('GND')})
add('M1','Core2350B2 (31692)',f,30,17,pins,'Core2350B2-Kit','Waveshare','HAND',types=types)
# 5V tolerant input, fixed direction A->B at 3.3 V. Ioff on power loss.
for j,(x,y) in enumerate([(8,23),(8,36),(49,27)]):
 pp={'1':'+3V3','10':'GND','19':'GND','20':'+3V3'};tt={'1':'input','10':'power_in','19':'input','20':'power_in'}
 for i in range(8):
  if j<2:a='A'+str(j*8+i);c=a+'_3V3'
  elif i<4:a=['RD_L','WR_L','RESET_L','CLK'][i];c=a+'_3V3'
  else:a='GND';c=None
  pp[str(i+2)]=a;pp[str(18-i)]=c;tt[str(i+2)]='input';tt[str(18-i)]='output'
 add('U'+str(j+1),'SN74LVC245APWR','Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm',x,y,pp,'SN74LVC245APWR',types=tt)
pp={'1':'+3V3','2':'+3V3','11':'GND','12':'GND','13':'GND','22':'OE_L','23':'+5V_GB','24':'+5V_GB'}
for i in range(8):pp[str(3+i)]='D'+str(i)+'_3V3';pp[str(21-i)]='D'+str(i)
tt={str(i+3):'input' for i in range(8)};tt.update({str(21-i):'output' for i in range(8)});tt.update({'1':'power_in','23':'power_in','24':'passive','11':'power_in','12':'passive','13':'passive','2':'input','22':'input'})
add('U4','SN74LVC8T245PWR','Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm',35,38,pp,'SN74LVC8T245PWR',types=tt)
# OE_L = RD_L OR A15 OR NAND(VALID, WR_L, RESET_L)
for ref,val,x,y,pp in [('U5','SN74LVC1G10DBVR',48,36,{'1':'VALID','2':'GND','3':'WR_L_3V3','4':'INHIBIT','5':'+3V3','6':'RESET_L_3V3'}),('U6','SN74LVC1G332DBVR',48,42,{'1':'INHIBIT','2':'GND','3':'RD_L_3V3','4':'OE_L','5':'+3V3','6':'A15_3V3'})]:
 add(ref,val,'Package_TO_SOT_SMD:SOT-23-6',x,y,pp,val,types={'1':'input','2':'power_in','3':'input','4':'output','5':'power_in','6':'input'})
add('Q1','2N7002','Package_TO_SOT_SMD:SOT-23',15,6,{'1':'RESET_HOLD','2':'GND','3':'RESET_L'},'2N7002','Nexperia',types={'1':'input','2':'passive','3':'open_collector'})
add('D1','SS14','Diode_SMD:D_SMA',8,7,{'1':'MOD_VBUS','2':'+5V_GB'},'SS14','Diodes Incorporated')
for ref,val,x,y,pp,mpn in [('R1','4.7k',44,32.5,{'1':'VALID','2':'GND'},'RC0603FR-074K7L'),('R2','10k',15,10,{'1':'+3V3','2':'RESET_HOLD'},'RC0603FR-0710KL'),('R3','10k',54,41,{'1':'+3V3','2':'OE_L'},'RC0603FR-0710KL')]:
 add(ref,val,'Resistor_SMD:R_0603_1608Metric',x,y,pp,mpn,'Yageo')
for i,(x,y,n) in enumerate([(14,17,'+3V3'),(14,30.5,'+3V3'),(54,20,'+3V3'),(42,34,'+3V3'),(42,39,'+5V_GB'),(54,34,'+3V3'),(54,38,'+3V3')]):
 add('C'+str(i+1),'100nF','Capacitor_SMD:C_0603_1608Metric',x,y,{'1':n,'2':'GND'},'GRM188R71H104KA93D','Murata')
add('C8','10uF','Capacitor_SMD:C_0805_2012Metric',10,11,{'1':'MOD_VBUS','2':'GND'},'GRM21BR61A106KE19L','Murata')
# GB contact fingers. 1.50 mm pitch, component-side left-to-right.
f=k.FOOTPRINT(b);f.SetValue('GB_32_EDGE_1.50mm')
cart=['+5V_GB','CLK','WR_L','RD_L','CS_L']+['A'+str(i) for i in range(16)]+['D'+str(i) for i in range(8)]+['RESET_L','VIN','GND']
for i in range(32):
 p=k.PAD(f);p.SetNumber(str(i+1));p.SetPosition(mm(5.5+1.5*i,48));p.SetSize(mm(1,5));p.SetShape(k.PAD_SHAPE_RECT);p.SetAttribute(k.PAD_ATTRIB_SMD);p.SetLayerSet(layers(k.F_Cu,k.F_Mask));f.Add(p)
pp={str(i+1):n if n not in ['CS_L','VIN'] else None for i,n in enumerate(cart)}
tt={str(i+1):'passive' for i in range(32)};tt['1']='power_out';tt['32']='power_out'
add('J1','GAME BOY 32 CONTACTS',f,0,0,pp,'PCB gold fingers','PCB','PCB',names={str(i+1):n for i,n in enumerate(cart)},types=tt)
# Per-data-series termination, buffers->cartridge; 33ohm prevents fast edge overshoot.
for i in range(8):
 n='D'+str(i);out=n+'_GB'; c=next(c for c in comps if c['ref']=='J1');c['pins'][str(22+i)]=out
 p=next(p for f in b.GetFootprints() if f.GetReference()=='J1' for p in f.Pads() if p.GetNumber()==str(22+i));p.SetNet(net(out))
 add('R'+str(4+i),'33','Resistor_SMD:R_0603_1608Metric',22+i*2.3,44,{'1':n,'2':out},'RC0603FR-0733RL','Yageo',rot=-90)
# Board development outline; shell/mechanical fit remains a release gate.
for a,c in [((0,0),(57.5,0)),((57.5,0),(57.5,51)),((57.5,51),(0,51)),((0,51),(0,0))]:line(b,a,c,k.Edge_Cuts,.05)
t=k.PCB_TEXT(b);t.SetText('RP2350B ROMCART R0\nPROTOTYPE / UNTESTED');t.SetPosition(mm(29,1.7));t.SetTextSize(mm(1,1));t.SetTextThickness(120000);t.SetLayer(k.F_SilkS);b.Add(t)
for f in b.GetFootprints():f.Reference().SetVisible(False)
b.BuildConnectivity();k.SaveBoard(str(H/'romcart.kicad_pcb'),b)
(ROOT/'hardware/components.json').write_text(json.dumps(comps,indent=2)+'\n')
(H/'fp-lib-table').write_text('(fp_lib_table (version 7) (lib (name "RomCart")(type "KiCad")(uri "${KIPRJMOD}/RomCart.pretty")(options "")(descr "Vendored carrier footprints")))\n')
# Standalone project local rules; no exclusions hide connectivity or shorts.
pro={'board':{'design_settings':{'rules':{'min_clearance':0.15,'min_track_width':0.15,'min_via_diameter':0.6,'min_through_hole_diameter':0.3,'min_copper_edge_clearance':0.25,'min_hole_clearance':0.25}}},'net_settings':{'classes':[{'name':'Default','clearance':0.15,'track_width':0.2,'via_diameter':0.6,'via_drill':0.3}]},'meta':{'version':1}}
(H/'romcart.kicad_pro').write_text(json.dumps(pro,indent=2))
# Sources include annotated pin coordinates for physical verification.
with (ROOT/'docs/module-pad-map.csv').open('w') as h:
 w=csv.writer(h);w.writerow(['Pad','x_mm_from_center','y_mm_from_center','Carrier_net']);w.writerows((n,*xy,pins[n] or 'NC') for n,xy in pos.items())
with (ROOT/'manufacturing/BOM.csv').open('w') as h:
 w=csv.writer(h);w.writerow(['Designator','Quantity','Value','Footprint','Manufacturer','MPN','Assembly','LCSC']);w.writerows((c['ref'],1,c['value'],c['footprint'],c['manufacturer'],c['mpn'],c['assembly'],'VERIFY') for c in comps)
print('Generated',len(comps),'components',len(nets),'nets')
