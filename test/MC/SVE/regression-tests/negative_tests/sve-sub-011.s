// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32SubVIX
// Immediate not compatible with encode/decode function.
sub z1.s, z1.s, #300
// CHECK: error: immediate must be an integer in range [0, 255] or a multiple of 256 in range [256, 65280]
