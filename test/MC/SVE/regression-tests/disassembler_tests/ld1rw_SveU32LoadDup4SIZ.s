# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0xd5,0x55,0x85
# CHECK: ld1rw   {z21.s}, p5/z, [x10, #84] // encoding: [0x55,0xd5,0x55,0x85]
# CHECK-ERROR-NOT: ld1rw   {z21.s}, p5/z, [x10, #84] 
0xb7,0xcd,0x48,0x85
# CHECK: ld1rw   {z23.s}, p3/z, [x13, #32] // encoding: [0xb7,0xcd,0x48,0x85]
# CHECK-ERROR-NOT: ld1rw   {z23.s}, p3/z, [x13, #32] 
0xff,0xdf,0x7f,0x85
# CHECK: ld1rw   {z31.s}, p7/z, [sp, #252] // encoding: [0xff,0xdf,0x7f,0x85]
# CHECK-ERROR-NOT: ld1rw   {z31.s}, p7/z, [sp, #252] 
0x00,0xc0,0x40,0x85
# CHECK: ld1rw   {z0.s}, p0/z, [x0] // encoding: [0x00,0xc0,0x40,0x85]
# CHECK-ERROR-NOT: ld1rw   {z0.s}, p0/z, [x0] 
