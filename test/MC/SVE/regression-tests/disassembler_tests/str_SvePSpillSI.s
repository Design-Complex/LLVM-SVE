# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x45,0x15,0x95,0xe5
# CHECK: str     p5, [x10, #173, mul vl] // encoding: [0x45,0x15,0x95,0xe5]
# CHECK-ERROR-NOT: str     p5, [x10, #173, mul vl] 
0xa7,0x0d,0x88,0xe5
# CHECK: str     p7, [x13, #67, mul vl] // encoding: [0xa7,0x0d,0x88,0xe5]
# CHECK-ERROR-NOT: str     p7, [x13, #67, mul vl] 
0x00,0x00,0x80,0xe5
# CHECK: str     p0, [x0] // encoding: [0x00,0x00,0x80,0xe5]
# CHECK-ERROR-NOT: str     p0, [x0] 
0xef,0x1f,0xbf,0xe5
# CHECK: str     p15, [sp, #-1, mul vl] // encoding: [0xef,0x1f,0xbf,0xe5]
# CHECK-ERROR-NOT: str     p15, [sp, #-1, mul vl] 
