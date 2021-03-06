// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmpgt   p0.d, p0/z, z0.d, #0  // 00100101-11000000-00000000-00010000
// CHECK: cmpgt   p0.d, p0/z, z0.d, #0 // encoding: [0x10,0x00,0xc0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11000000-00000000-00010000
CMPGT   P0.D, P0/Z, Z0.D, #0  // 00100101-11000000-00000000-00010000
// CHECK: cmpgt   p0.d, p0/z, z0.d, #0 // encoding: [0x10,0x00,0xc0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11000000-00000000-00010000
cmpgt   p5.d, p5/z, z10.d, #-11  // 00100101-11010101-00010101-01010101
// CHECK: cmpgt   p5.d, p5/z, z10.d, #-11 // encoding: [0x55,0x15,0xd5,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11010101-00010101-01010101
CMPGT   P5.D, P5/Z, Z10.D, #-11  // 00100101-11010101-00010101-01010101
// CHECK: cmpgt   p5.d, p5/z, z10.d, #-11 // encoding: [0x55,0x15,0xd5,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11010101-00010101-01010101
cmpgt   p15.d, p7/z, z31.d, #-1  // 00100101-11011111-00011111-11111111
// CHECK: cmpgt   p15.d, p7/z, z31.d, #-1 // encoding: [0xff,0x1f,0xdf,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011111-00011111-11111111
CMPGT   P15.D, P7/Z, Z31.D, #-1  // 00100101-11011111-00011111-11111111
// CHECK: cmpgt   p15.d, p7/z, z31.d, #-1 // encoding: [0xff,0x1f,0xdf,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011111-00011111-11111111
cmpgt   p7.d, p3/z, z13.d, #8  // 00100101-11001000-00001101-10110111
// CHECK: cmpgt   p7.d, p3/z, z13.d, #8 // encoding: [0xb7,0x0d,0xc8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11001000-00001101-10110111
CMPGT   P7.D, P3/Z, Z13.D, #8  // 00100101-11001000-00001101-10110111
// CHECK: cmpgt   p7.d, p3/z, z13.d, #8 // encoding: [0xb7,0x0d,0xc8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11001000-00001101-10110111
