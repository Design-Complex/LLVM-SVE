// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64Prefetch2VI
// Immediate out of lower bound [0, 62].
prfh pstl2keep, p5, [z30.d, #-1]
// CHECK: error: index must be a multiple of 2 in range [0, 62].
