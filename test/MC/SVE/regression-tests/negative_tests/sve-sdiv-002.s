// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64DivVVM
// Restricted predicate has range [0, 7].
sdiv z21.d, p8/m, z21.d, z15.d
// CHECK: error: invalid operand
