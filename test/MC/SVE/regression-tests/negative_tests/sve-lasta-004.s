// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16LastAV
// Restricted predicate has range [0, 7].
lasta w30, p8, z4.h
// CHECK: error: invalid operand
