// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64Load1VIZ
// Restricted predicate has range [0, 7].
ld1sb z20.d, p8/z, [z1.d, #16]
// CHECK: error: invalid operand
