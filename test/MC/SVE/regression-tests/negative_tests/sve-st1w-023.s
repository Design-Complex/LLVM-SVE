// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64Store4XVSZ
// Restricted predicate has range [0, 7].
st1w z5.d, p8, [x5, z5.d, sxtw]
// CHECK: error: invalid operand
