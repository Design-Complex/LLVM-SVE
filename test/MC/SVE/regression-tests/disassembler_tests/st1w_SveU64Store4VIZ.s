# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xad,0x48,0xe5
# CHECK: st1w    {z23.d}, p3, [z13.d, #32] // encoding: [0xb7,0xad,0x48,0xe5]
# CHECK-ERROR-NOT: st1w    {z23.d}, p3, [z13.d, #32] 
0x55,0xb5,0x55,0xe5
# CHECK: st1w    {z21.d}, p5, [z10.d, #84] // encoding: [0x55,0xb5,0x55,0xe5]
# CHECK-ERROR-NOT: st1w    {z21.d}, p5, [z10.d, #84] 
0xff,0xbf,0x5f,0xe5
# CHECK: st1w    {z31.d}, p7, [z31.d, #124] // encoding: [0xff,0xbf,0x5f,0xe5]
# CHECK-ERROR-NOT: st1w    {z31.d}, p7, [z31.d, #124] 
0x00,0xa0,0x40,0xe5
# CHECK: st1w    {z0.d}, p0, [z0.d] // encoding: [0x00,0xa0,0x40,0xe5]
# CHECK-ERROR-NOT: st1w    {z0.d}, p0, [z0.d] 
