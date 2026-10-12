from pathlib import Path
import sys
b = Path(sys.argv[1]).read_bytes()
assert len(b) == 32768, 'Require exactly 32768 bytes'
assert b[0x147:0x14a] == b'\x00\x00\x00', 'Require ROM ONLY, 32KB, no RAM'
x = 0
for c in b[0x134:0x14d]: x = (x-c-1)&255
assert x == b[0x14d], 'Header checksum mismatch'
Path('rom_image.h').write_text('#pragma once\n#include <stdint.h>\nstatic const uint8_t rom_image[32768] = {\n' + '\n'.join(','.join(f'0x{x:02x}' for x in b[i:i+32])+',' for i in range(0,len(b),32))+'\n};\n')
print('rom_image.h generated; verify Nintendo logo and CGB flag separately')
