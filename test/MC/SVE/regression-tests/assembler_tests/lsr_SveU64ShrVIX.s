// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
lsr     z21.d, z10.d, #11  // 00000100-11110101-10010101-01010101
// CHECK: lsr     z21.d, z10.d, #11 // encoding: [0x55,0x95,0xf5,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11110101-10010101-01010101
LSR     Z21.D, Z10.D, #11  // 00000100-11110101-10010101-01010101
// CHECK: lsr     z21.d, z10.d, #11 // encoding: [0x55,0x95,0xf5,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11110101-10010101-01010101
lsr     z23.d, z13.d, #24  // 00000100-11101000-10010101-10110111
// CHECK: lsr     z23.d, z13.d, #24 // encoding: [0xb7,0x95,0xe8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11101000-10010101-10110111
LSR     Z23.D, Z13.D, #24  // 00000100-11101000-10010101-10110111
// CHECK: lsr     z23.d, z13.d, #24 // encoding: [0xb7,0x95,0xe8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11101000-10010101-10110111
lsr     z0.d, z0.d, #64  // 00000100-10100000-10010100-00000000
// CHECK: lsr     z0.d, z0.d, #64 // encoding: [0x00,0x94,0xa0,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-10100000-10010100-00000000
LSR     Z0.D, Z0.D, #64  // 00000100-10100000-10010100-00000000
// CHECK: lsr     z0.d, z0.d, #64 // encoding: [0x00,0x94,0xa0,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-10100000-10010100-00000000
lsr     z31.d, z31.d, #1  // 00000100-11111111-10010111-11111111
// CHECK: lsr     z31.d, z31.d, #1 // encoding: [0xff,0x97,0xff,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11111111-10010111-11111111
LSR     Z31.D, Z31.D, #1  // 00000100-11111111-10010111-11111111
// CHECK: lsr     z31.d, z31.d, #1 // encoding: [0xff,0x97,0xff,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11111111-10010111-11111111
