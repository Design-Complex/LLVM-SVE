// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
dup     z21.d, #-86  // 00100101-11111000-11010101-01010101
// CHECK: mov     z21.d, #-86 // encoding: [0x55,0xd5,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11010101-01010101
DUP     Z21.D, #-86  // 00100101-11111000-11010101-01010101
// CHECK: mov     z21.d, #-86 // encoding: [0x55,0xd5,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11010101-01010101
dup     z23.d, #0  // 00100101-11111000-11000000-00010111
// CHECK: mov     z23.d, #0 // encoding: [0x17,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00010111
DUP     Z23.D, #0  // 00100101-11111000-11000000-00010111
// CHECK: mov     z23.d, #0 // encoding: [0x17,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00010111
dup     z31.d, #-1, lsl #8  // 00100101-11111000-11111111-11111111
// CHECK: mov     z31.d, #-256 // encoding: [0xff,0xff,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11111111-11111111
DUP     Z31.D, #-1, LSL #8  // 00100101-11111000-11111111-11111111
// CHECK: mov     z31.d, #-256 // encoding: [0xff,0xff,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11111111-11111111
dup     z31.d, #-256  // 00100101-11111000-11111111-11111111
// CHECK: mov     z31.d, #-256 // encoding: [0xff,0xff,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11111111-11111111
DUP     Z31.D, #-256  // 00100101-11111000-11111111-11111111
// CHECK: mov     z31.d, #-256 // encoding: [0xff,0xff,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11111111-11111111
dup     z31.d, #0  // 00100101-11111000-11000000-00011111
// CHECK: mov     z31.d, #0 // encoding: [0x1f,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00011111
DUP     Z31.D, #0  // 00100101-11111000-11000000-00011111
// CHECK: mov     z31.d, #0 // encoding: [0x1f,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00011111
dup     z23.d, #109, lsl #8  // 00100101-11111000-11101101-10110111
// CHECK: mov     z23.d, #27904 // encoding: [0xb7,0xed,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11101101-10110111
DUP     Z23.D, #109, LSL #8  // 00100101-11111000-11101101-10110111
// CHECK: mov     z23.d, #27904 // encoding: [0xb7,0xed,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11101101-10110111
dup     z23.d, #27904  // 00100101-11111000-11101101-10110111
// CHECK: mov     z23.d, #27904 // encoding: [0xb7,0xed,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11101101-10110111
DUP     Z23.D, #27904  // 00100101-11111000-11101101-10110111
// CHECK: mov     z23.d, #27904 // encoding: [0xb7,0xed,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11101101-10110111
dup     z0.d, #0  // 00100101-11111000-11000000-00000000
// CHECK: mov     z0.d, #0 // encoding: [0x00,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00000000
DUP     Z0.D, #0  // 00100101-11111000-11000000-00000000
// CHECK: mov     z0.d, #0 // encoding: [0x00,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00000000
dup     z21.d, #0  // 00100101-11111000-11000000-00010101
// CHECK: mov     z21.d, #0 // encoding: [0x15,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00010101
DUP     Z21.D, #0  // 00100101-11111000-11000000-00010101
// CHECK: mov     z21.d, #0 // encoding: [0x15,0xc0,0xf8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11111000-11000000-00010101
