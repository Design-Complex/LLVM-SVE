# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x45,0xe1,0xd9,0x25
# CHECK: ptrues  p5.d, vl32 // encoding: [0x45,0xe1,0xd9,0x25]
# CHECK-ERROR-NOT: ptrues  p5.d, vl32 
0xa7,0xe1,0xd9,0x25
# CHECK: ptrues  p7.d, vl256 // encoding: [0xa7,0xe1,0xd9,0x25]
# CHECK-ERROR-NOT: ptrues  p7.d, vl256 
0xef,0xe3,0xd9,0x25
# CHECK: ptrues  p15.d // encoding: [0xef,0xe3,0xd9,0x25]
# CHECK-ERROR-NOT: ptrues  p15.d 
0x00,0xe0,0xd9,0x25
# CHECK: ptrues  p0.d, pow2 // encoding: [0x00,0xe0,0xd9,0x25]
# CHECK-ERROR-NOT: ptrues  p0.d, pow2 
