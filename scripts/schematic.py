#!/usr/bin/env python3
"""Generate a fully connected editable KiCad schematic from components.json."""
import json,pathlib,uuid,math
R=pathlib.Path(__file__).resolve().parents[1];C=json.loads((R/'hardware/components.json').read_text());u=lambda:str(uuid.uuid4());root=u()
def q(s):return json.dumps(str(s),ensure_ascii=False)
def prop(n,v,x,y,hide=False):return f'(property {q(n)} {q(v)} (at {x} {y} 0)(effects(font(size 1.27 1.27)){"(hide yes)" if hide else ""}))'
lib=[];instances=[];wires=[];notes=[]
for idx,c in enumerate(C):
 ref=c['ref'];pins=list(c['pins']);N=len(pins); half=(N+1)//2
 h=max(5.08,math.ceil((half+1)/2)*2.54);width=17.78 if ref=='M1' else (13.97 if N>10 else 7.62)
 sid='RomCart:'+ref
 part=[f'(symbol {q(sid)} (pin_names(offset 1.016))(in_bom yes)(on_board yes)',prop('Reference',ref,0,h+3),prop('Value',c['value'],0,h+5.5),prop('Footprint',c['footprint'],0,0,True),f'(symbol {q(ref+"_0_1")}(rectangle(start {-width} {h})(end {width} {-h})(stroke(width .254) (type default))(fill(type background))))',f'(symbol {q(ref+"_1_1")}']
 loc=[]
 for j,pn in enumerate(pins):
  right=j>=half; ix=j-half if right else j; x=(width+5.08)*(1 if right else -1);y=h-2.54*(ix+1);ang=180 if right else 0
  typ=c['types'].get(pn,'passive');name=c['names'].get(pn,pn)
  # Module unused functions are explicit NC, not hidden power pins.
  part.append(f'(pin {typ} line(at {x} {y} {ang})(length 5.08)(name {q(name)}(effects(font(size 1.016 1.016))))(number {q(pn)}(effects(font(size 1.016 1.016)))))')
  loc.append((pn,x,y,right))
 part+=['))'];lib.append(''.join(part))
 if ref=='M1':sx,sy=250,105
 elif ref=='J1':sx,sy=70,300
 elif ref in ['U1','U2','U3']:sx,sy=75,45+['U1','U2','U3'].index(ref)*75
 elif ref=='U4':sx,sy=425,70
 elif ref in ['U5','U6']:sx,sy=405+(ref=='U6')*90,150
 else:
  others=[x for x in C if x['ref'] not in ['M1','J1','U1','U2','U3','U4','U5','U6']];j=others.index(c);sx,sy=180+(j%5)*70,250+(j//5)*38
 sx=round(sx/1.27)*1.27;sy=round(sy/1.27)*1.27
 inst=[f'(symbol(lib_id {q(sid)})(at {sx} {sy} 0)(unit 1)(in_bom yes)(on_board yes)(dnp no)(uuid {q(c["uuid"])})',prop('Reference',ref,sx,sy-h-5),prop('Value',c['value'],sx,sy-h-2.5),prop('Footprint',c['footprint'],sx,sy,True),prop('MPN',c['mpn'],sx,sy,True),prop('Assembly',c['assembly'],sx,sy,True)]
 for pn,px,py,right in loc:
  x=sx+px;y=sy-py;n=c['pins'][pn]
  if n:
   ex=x+(5.08 if right else -5.08)
   wires.append(f'(wire(pts(xy {x} {y})(xy {ex} {y}))(stroke(width 0) (type default))(uuid {q(u())}))')
   wires.append(f'(label {q(n)}(at {ex} {y} {180 if right else 0})(effects(font(size 1.016 1.016))(justify {"right" if right else "left"} bottom))(uuid {q(u())}))')
  else:wires.append(f'(no_connect(at {x} {y})(uuid {q(u())}))')
  inst.append(f'(pin {q(pn)}(uuid {q(u())}))')
 inst.append(f'(instances(project "romcart"(path {q("/"+root)}(reference {q(ref)})(unit 1)))))');instances.append(''.join(inst))
for text,x,y in [('R0 PROTOTYPE — NOT HARDWARE VERIFIED',180,15),('Waveshare Core2350B2 carrier; initial scope: 32 KiB / no MBC',180,22),('Read enable: /OE = /RD OR A15 OR NOT(VALID AND /WR AND /RESET)',360,205),('VALID is cleared for every read, then asserted only after correct data is loaded.',360,212),('Module: hand assembly. J1: PCB fingers. All other parts: PCBA.',180,400)]:
 notes.append(f'(text {q(text)}(at {x} {y} 0)(effects(font(size 1.27 1.27))(justify left))(uuid {q(u())}))')
# Diode output is passive, flag MOD_VBUS as intentionally supplied by J1 through D1.
lib.append('(symbol "RomCart:PWR_FLAG"(power)(pin_names(offset 0))(in_bom no)(on_board no)(property "Reference" "#FLG"(at 0 0 0)(effects(font(size 1.27 1.27))(hide yes)))(property "Value" "PWR_FLAG"(at 0 0 0)(effects(font(size 1.27 1.27))(hide yes)))(symbol "PWR_FLAG_1_1"(pin power_out line(at 0 0 90)(length 0)(name "pwr"(effects(font(size 1.27 1.27))))(number "1"(effects(font(size 1.27 1.27)))))))')
instances.append(f'(symbol(lib_id "RomCart:PWR_FLAG")(at 152.4 228.6 0)(unit 1)(in_bom no)(on_board no)(uuid {q(u())})'+prop('Reference','#FLG01',152.4,228.6,True)+prop('Value','PWR_FLAG',152.4,228.6,True)+f'(instances(project "romcart"(path {q("/"+root)}(reference "#FLG01")(unit 1)))))')
wires.append(f'(label "MOD_VBUS"(at 152.4 228.6 0)(effects(font(size 1.016 1.016))(justify left bottom))(uuid {q(u())}))')
s=f'(kicad_sch(version 20250114)(generator "eeschema")(uuid {q(root)})(paper "A2")(title_block(title "RP2350B ROM cartridge — Core2350B2 carrier")(date "2026-10-12")(rev "R0 prototype")(comment 1 "Electrical / mechanical validation required"))(lib_symbols'+''.join(lib)+')'+''.join(wires+notes+instances)+f'(sheet_instances(path "/"(page "1"))))'
(R/'hardware/romcart.kicad_sch').write_text(s)
# Pin-map source stays in sync with schematic.
(R/'docs/pin-allocation.csv').write_text('GPIO,Function,Direction\n'+''.join(f'{i},A{i},input\n' for i in range(16))+''.join(f'{16+i},D{i},output to U4\n' for i in range(8))+'24,/RD,input\n25,/WR,input\n26,/RESET,input\n27,CLK,input\n28,VALID,output\n29,RESET_HOLD,output (1 holds console reset)\n')
print('Schematic generated')

(R/'hardware/RomCart.kicad_sym').write_text('(kicad_symbol_lib (version 20241209)(generator \"kicad_symbol_editor\")'+''.join(lib).replace('\"RomCart:', '\"')+')')
(R/'hardware/sym-lib-table').write_text('(sym_lib_table\n (version 7)\n (lib (name \"RomCart\") (type \"KiCad\") (uri \"${KIPRJMOD}/RomCart.kicad_sym\") (options \"\") (descr \"Carrier electrical symbols\")))')
