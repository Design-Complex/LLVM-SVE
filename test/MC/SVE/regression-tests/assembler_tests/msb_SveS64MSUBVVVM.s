// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
msb     z23.d, p3/m, z8.d, z13.d  // 00000100-11001000-11101101-10110111
// CHECK: msb     z23.d, p3/m, z8.d, z13.d // encoding: [0xb7,0xed,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-11101101-10110111
MSB     Z23.D, P3/M, Z8.D, Z13.D  // 00000100-11001000-11101101-10110111
// CHECK: msb     z23.d, p3/m, z8.d, z13.d // encoding: [0xb7,0xed,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-11101101-10110111
msb     z31.d, p7/m, z31.d, z31.d  // 00000100-11011111-11111111-11111111
// CHECK: msb     z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0xff,0xdf,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11011111-11111111-11111111
MSB     Z31.D, P7/M, Z31.D, Z31.D  // 00000100-11011111-11111111-11111111
// CHECK: msb     z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0xff,0xdf,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11011111-11111111-11111111
msb     z0.d, p0/m, z0.d, z0.d  // 00000100-11000000-11100000-00000000
// CHECK: msb     z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0xe0,0xc0,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11000000-11100000-00000000
MSB     Z0.D, P0/M, Z0.D, Z0.D  // 00000100-11000000-11100000-00000000
// CHECK: msb     z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0xe0,0xc0,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11000000-11100000-00000000
msb     z21.d, p5/m, z21.d, z10.d  // 00000100-11010101-11110101-01010101
// CHECK: msb     z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0xf5,0xd5,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11010101-11110101-01010101
MSB     Z21.D, P5/M, Z21.D, Z10.D  // 00000100-11010101-11110101-01010101
// CHECK: msb     z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0xf5,0xd5,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11010101-11110101-01010101
