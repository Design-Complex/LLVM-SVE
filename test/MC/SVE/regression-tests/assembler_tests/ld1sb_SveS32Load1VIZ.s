// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ld1sb   {z31.s}, p7/z, [z31.s, #31]  // 10000100-00111111-10011111-11111111
// CHECK: ld1sb   {z31.s}, p7/z, [z31.s, #31] // encoding: [0xff,0x9f,0x3f,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00111111-10011111-11111111
LD1SB   {Z31.S}, P7/Z, [Z31.S, #31]  // 10000100-00111111-10011111-11111111
// CHECK: ld1sb   {z31.s}, p7/z, [z31.s, #31] // encoding: [0xff,0x9f,0x3f,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00111111-10011111-11111111
ld1sb   {z0.s}, p0/z, [z0.s]  // 10000100-00100000-10000000-00000000
// CHECK: ld1sb   {z0.s}, p0/z, [z0.s] // encoding: [0x00,0x80,0x20,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00100000-10000000-00000000
LD1SB   {Z0.S}, P0/Z, [Z0.S]  // 10000100-00100000-10000000-00000000
// CHECK: ld1sb   {z0.s}, p0/z, [z0.s] // encoding: [0x00,0x80,0x20,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00100000-10000000-00000000
ld1sb   {z23.s}, p3/z, [z13.s, #8]  // 10000100-00101000-10001101-10110111
// CHECK: ld1sb   {z23.s}, p3/z, [z13.s, #8] // encoding: [0xb7,0x8d,0x28,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00101000-10001101-10110111
LD1SB   {Z23.S}, P3/Z, [Z13.S, #8]  // 10000100-00101000-10001101-10110111
// CHECK: ld1sb   {z23.s}, p3/z, [z13.s, #8] // encoding: [0xb7,0x8d,0x28,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00101000-10001101-10110111
ld1sb   {z21.s}, p5/z, [z10.s, #21]  // 10000100-00110101-10010101-01010101
// CHECK: ld1sb   {z21.s}, p5/z, [z10.s, #21] // encoding: [0x55,0x95,0x35,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00110101-10010101-01010101
LD1SB   {Z21.S}, P5/Z, [Z10.S, #21]  // 10000100-00110101-10010101-01010101
// CHECK: ld1sb   {z21.s}, p5/z, [z10.s, #21] // encoding: [0x55,0x95,0x35,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-00110101-10010101-01010101
