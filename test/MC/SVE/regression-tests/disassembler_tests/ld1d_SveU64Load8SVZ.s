# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xcd,0xe8,0xc5
# CHECK: ld1d    {z23.d}, p3/z, [x13, z8.d, lsl #3] // encoding: [0xb7,0xcd,0xe8,0xc5]
# CHECK-ERROR-NOT: ld1d    {z23.d}, p3/z, [x13, z8.d, lsl #3] 
0x00,0xc0,0xe0,0xc5
# CHECK: ld1d    {z0.d}, p0/z, [x0, z0.d, lsl #3] // encoding: [0x00,0xc0,0xe0,0xc5]
# CHECK-ERROR-NOT: ld1d    {z0.d}, p0/z, [x0, z0.d, lsl #3] 
0xff,0xdf,0xff,0xc5
# CHECK: ld1d    {z31.d}, p7/z, [sp, z31.d, lsl #3] // encoding: [0xff,0xdf,0xff,0xc5]
# CHECK-ERROR-NOT: ld1d    {z31.d}, p7/z, [sp, z31.d, lsl #3] 
0x55,0xd5,0xf5,0xc5
# CHECK: ld1d    {z21.d}, p5/z, [x10, z21.d, lsl #3] // encoding: [0x55,0xd5,0xf5,0xc5]
# CHECK-ERROR-NOT: ld1d    {z21.d}, p5/z, [x10, z21.d, lsl #3] 
