// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF32DupI
// Immediate not compatible with encode/decode function.
fdup z13.s, #-256.0
// CHECK: error: expected compatible register or floating-point constant
