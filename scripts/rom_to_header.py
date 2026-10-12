#!/usr/bin/env python3
"""Convert a user-owned ROM locally; generated ROM is gitignored."""
import argparse,pathlib,hashlib
p=argparse.ArgumentParser();p.add_argument('rom',type=pathlib.Path);p.add_argument('--output',type=pathlib.Path,default=pathlib.Path('firmware/user_rom.h'));a=p.parse_args();data=a.rom.read_bytes()
if len(data)!=32768:raise SystemExit('exactly 32768 bytes required')
if data[0x147:0x14a]!=b'\0\0\0':raise SystemExit('initial scope requires ROM-only, 32KiB, no RAM (header 147..149 = 0)')
check=0
for b in data[0x134:0x14d]:check=(check-b-1)&255
if check!=data[0x14d]:raise SystemExit('invalid header checksum')
a.output.write_text('#include <stdint.h>\nstatic const uint8_t user_rom[32768]={\n'+',\n'.join(','.join(str(b) for b in data[j:j+32]) for j in range(0,len(data),32))+'\n};\n')
print('Created local header; SHA256',hashlib.sha256(data).hexdigest())
