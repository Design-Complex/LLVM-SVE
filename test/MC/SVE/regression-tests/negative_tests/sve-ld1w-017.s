// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64Load4SVZ
// Restricted predicate has range [0, 7].
ld1w z29.d, p8/z, [x7, z9.d, lsl #2]
// CHECK: error: invalid operand
