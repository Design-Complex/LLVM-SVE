// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8XorVVM
// Restricted predicate has range [0, 7].
eor z6.b, p8/m, z6.b, z13.b
// CHECK: error: invalid operand
