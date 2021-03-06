# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xed,0xa8,0xc4
# CHECK: ldff1h  {z23.d}, p3/z, [z13.d, #16] // encoding: [0xb7,0xed,0xa8,0xc4]
# CHECK-ERROR-NOT: ldff1h  {z23.d}, p3/z, [z13.d, #16] 
0x55,0xf5,0xb5,0xc4
# CHECK: ldff1h  {z21.d}, p5/z, [z10.d, #42] // encoding: [0x55,0xf5,0xb5,0xc4]
# CHECK-ERROR-NOT: ldff1h  {z21.d}, p5/z, [z10.d, #42] 
0x00,0xe0,0xa0,0xc4
# CHECK: ldff1h  {z0.d}, p0/z, [z0.d] // encoding: [0x00,0xe0,0xa0,0xc4]
# CHECK-ERROR-NOT: ldff1h  {z0.d}, p0/z, [z0.d] 
0xff,0xff,0xbf,0xc4
# CHECK: ldff1h  {z31.d}, p7/z, [z31.d, #62] // encoding: [0xff,0xff,0xbf,0xc4]
# CHECK-ERROR-NOT: ldff1h  {z31.d}, p7/z, [z31.d, #62] 
