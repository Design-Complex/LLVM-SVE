// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64LoadFF4XVSZ
// Restricted predicate has range [0, 7].
ldff1sw z16.d, p8/z, [x1, z3.d, sxtw]
// CHECK: error: invalid operand
