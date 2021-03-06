// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ld1rw   {z21.s}, p5/z, [x10, #84]  // 10000101-01010101-11010101-01010101
// CHECK: ld1rw   {z21.s}, p5/z, [x10, #84] // encoding: [0x55,0xd5,0x55,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01010101-11010101-01010101
LD1RW   {Z21.S}, P5/Z, [X10, #84]  // 10000101-01010101-11010101-01010101
// CHECK: ld1rw   {z21.s}, p5/z, [x10, #84] // encoding: [0x55,0xd5,0x55,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01010101-11010101-01010101
ld1rw   {z23.s}, p3/z, [x13, #32]  // 10000101-01001000-11001101-10110111
// CHECK: ld1rw   {z23.s}, p3/z, [x13, #32] // encoding: [0xb7,0xcd,0x48,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01001000-11001101-10110111
LD1RW   {Z23.S}, P3/Z, [X13, #32]  // 10000101-01001000-11001101-10110111
// CHECK: ld1rw   {z23.s}, p3/z, [x13, #32] // encoding: [0xb7,0xcd,0x48,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01001000-11001101-10110111
ld1rw   {z31.s}, p7/z, [sp, #252]  // 10000101-01111111-11011111-11111111
// CHECK: ld1rw   {z31.s}, p7/z, [sp, #252] // encoding: [0xff,0xdf,0x7f,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01111111-11011111-11111111
LD1RW   {Z31.S}, P7/Z, [SP, #252]  // 10000101-01111111-11011111-11111111
// CHECK: ld1rw   {z31.s}, p7/z, [sp, #252] // encoding: [0xff,0xdf,0x7f,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01111111-11011111-11111111
ld1rw   {z0.s}, p0/z, [x0]  // 10000101-01000000-11000000-00000000
// CHECK: ld1rw   {z0.s}, p0/z, [x0] // encoding: [0x00,0xc0,0x40,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01000000-11000000-00000000
LD1RW   {Z0.S}, P0/Z, [X0]  // 10000101-01000000-11000000-00000000
// CHECK: ld1rw   {z0.s}, p0/z, [x0] // encoding: [0x00,0xc0,0x40,0x85]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000101-01000000-11000000-00000000
