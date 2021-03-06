# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x8d,0x58,0x04
# CHECK: asr     z23.h, p3/m, z23.h, z13.d // encoding: [0xb7,0x8d,0x58,0x04]
# CHECK-ERROR-NOT: asr     z23.h, p3/m, z23.h, z13.d 
0x00,0x80,0x58,0x04
# CHECK: asr     z0.h, p0/m, z0.h, z0.d // encoding: [0x00,0x80,0x58,0x04]
# CHECK-ERROR-NOT: asr     z0.h, p0/m, z0.h, z0.d 
0x55,0x95,0x58,0x04
# CHECK: asr     z21.h, p5/m, z21.h, z10.d // encoding: [0x55,0x95,0x58,0x04]
# CHECK-ERROR-NOT: asr     z21.h, p5/m, z21.h, z10.d 
0xff,0x9f,0x58,0x04
# CHECK: asr     z31.h, p7/m, z31.h, z31.d // encoding: [0xff,0x9f,0x58,0x04]
# CHECK-ERROR-NOT: asr     z31.h, p7/m, z31.h, z31.d 
