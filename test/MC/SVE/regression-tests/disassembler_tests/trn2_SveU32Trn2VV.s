# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x75,0xb5,0x05
# CHECK: trn2    z21.s, z10.s, z21.s // encoding: [0x55,0x75,0xb5,0x05]
# CHECK-ERROR-NOT: trn2    z21.s, z10.s, z21.s 
0xff,0x77,0xbf,0x05
# CHECK: trn2    z31.s, z31.s, z31.s // encoding: [0xff,0x77,0xbf,0x05]
# CHECK-ERROR-NOT: trn2    z31.s, z31.s, z31.s 
0xb7,0x75,0xa8,0x05
# CHECK: trn2    z23.s, z13.s, z8.s // encoding: [0xb7,0x75,0xa8,0x05]
# CHECK-ERROR-NOT: trn2    z23.s, z13.s, z8.s 
0x00,0x74,0xa0,0x05
# CHECK: trn2    z0.s, z0.s, z0.s // encoding: [0x00,0x74,0xa0,0x05]
# CHECK-ERROR-NOT: trn2    z0.s, z0.s, z0.s 
