// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16MaxVIX
// Immediate out of lower bound [0, 255].
umax z4.h, z4.h, #-1
// CHECK: error: immediate must be an integer in range [0, 255].
