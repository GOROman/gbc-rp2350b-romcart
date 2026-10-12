from pathlib import Path
import xml.etree.ElementTree as E,re
for name,src,width,title in [('pcb-preview','pcb-top.svg',2400,'R0 ROUTED — ERC / DRC / PARITY PASS — HARDWARE UNTESTED'),('schematic-preview','romcart.svg',3000,'R0 SCHEMATIC — ERC PASS — HARDWARE UNTESTED / REVIEW REQUIRED')]:
 p=Path('previews')/src;txt=p.read_text();root=E.fromstring(txt);vb=root.attrib['viewBox'].split();height=width*float(vb[3])/float(vb[2]);inner=txt[txt.index('<svg'):];inner=re.sub(r'<svg\b','<svg x="0" y="100"',inner,count=1);inner=re.sub(r'width="[^"]+"',f'width="{width}"',inner,count=1);inner=re.sub(r'height="[^"]+"',f'height="{height}"',inner,count=1)
 wrapper=f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height+100}" viewBox="0 0 {width} {height+100}"><rect width="100%" height="100%" fill="white"/><text x="30" y="60" font-family="sans-serif" font-size="{width/65}" fill="#991b1b">{title}</text>'+inner+'</svg>'
 (Path('previews')/(name+'.svg')).write_text(wrapper)
