// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
lsl     z21.b, p5/m, z21.b, #2  // 00000100-00000011-10010101-01010101
// CHECK: lsl     z21.b, p5/m, z21.b, #2 // encoding: [0x55,0x95,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10010101-01010101
LSL     Z21.B, P5/M, Z21.B, #2  // 00000100-00000011-10010101-01010101
// CHECK: lsl     z21.b, p5/m, z21.b, #2 // encoding: [0x55,0x95,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10010101-01010101
lsl     z31.b, p7/m, z31.b, #7  // 00000100-00000011-10011101-11111111
// CHECK: lsl     z31.b, p7/m, z31.b, #7 // encoding: [0xff,0x9d,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10011101-11111111
LSL     Z31.B, P7/M, Z31.B, #7  // 00000100-00000011-10011101-11111111
// CHECK: lsl     z31.b, p7/m, z31.b, #7 // encoding: [0xff,0x9d,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10011101-11111111
lsl     z0.b, p0/m, z0.b, #0  // 00000100-00000011-10000001-00000000
// CHECK: lsl     z0.b, p0/m, z0.b, #0 // encoding: [0x00,0x81,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10000001-00000000
LSL     Z0.B, P0/M, Z0.B, #0  // 00000100-00000011-10000001-00000000
// CHECK: lsl     z0.b, p0/m, z0.b, #0 // encoding: [0x00,0x81,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10000001-00000000
lsl     z23.b, p3/m, z23.b, #5  // 00000100-00000011-10001101-10110111
// CHECK: lsl     z23.b, p3/m, z23.b, #5 // encoding: [0xb7,0x8d,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10001101-10110111
LSL     Z23.B, P3/M, Z23.B, #5  // 00000100-00000011-10001101-10110111
// CHECK: lsl     z23.b, p3/m, z23.b, #5 // encoding: [0xb7,0x8d,0x03,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000011-10001101-10110111
