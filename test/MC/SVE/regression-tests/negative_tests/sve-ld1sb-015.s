// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64CLoad1LSSZ
// Restricted predicate has range [0, 7].
ld1sb z24.d, p8/z, [x22, x5]
// CHECK: error: invalid operand
