// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmphs   p5.s, p5/z, z10.s, #85  // 00100100-10110101-01010101-01000101
// CHECK: cmphs   p5.s, p5/z, z10.s, #85 // encoding: [0x45,0x55,0xb5,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10110101-01010101-01000101
CMPHS   P5.S, P5/Z, Z10.S, #85  // 00100100-10110101-01010101-01000101
// CHECK: cmphs   p5.s, p5/z, z10.s, #85 // encoding: [0x45,0x55,0xb5,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10110101-01010101-01000101
cmphs   p0.s, p0/z, z0.s, #0  // 00100100-10100000-00000000-00000000
// CHECK: cmphs   p0.s, p0/z, z0.s, #0 // encoding: [0x00,0x00,0xa0,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10100000-00000000-00000000
CMPHS   P0.S, P0/Z, Z0.S, #0  // 00100100-10100000-00000000-00000000
// CHECK: cmphs   p0.s, p0/z, z0.s, #0 // encoding: [0x00,0x00,0xa0,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10100000-00000000-00000000
cmphs   p15.s, p7/z, z31.s, #127  // 00100100-10111111-11011111-11101111
// CHECK: cmphs   p15.s, p7/z, z31.s, #127 // encoding: [0xef,0xdf,0xbf,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10111111-11011111-11101111
CMPHS   P15.S, P7/Z, Z31.S, #127  // 00100100-10111111-11011111-11101111
// CHECK: cmphs   p15.s, p7/z, z31.s, #127 // encoding: [0xef,0xdf,0xbf,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10111111-11011111-11101111
cmphs   p7.s, p3/z, z13.s, #35  // 00100100-10101000-11001101-10100111
// CHECK: cmphs   p7.s, p3/z, z13.s, #35 // encoding: [0xa7,0xcd,0xa8,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10101000-11001101-10100111
CMPHS   P7.S, P3/Z, Z13.S, #35  // 00100100-10101000-11001101-10100111
// CHECK: cmphs   p7.s, p3/z, z13.s, #35 // encoding: [0xa7,0xcd,0xa8,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10101000-11001101-10100111
