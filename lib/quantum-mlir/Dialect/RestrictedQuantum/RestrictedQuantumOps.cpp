//===- StandaloneOps.cpp - Standalone dialect ops ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "quantum-mlir/Dialect/RestrictedQuantum/IR/RestrictedQuantumOps.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/TypeUtilities.h"

#define GET_OP_CLASSES
#include "quantum-mlir/Dialect/RestrictedQuantum/IR/RestrictedQuantumOps.cpp.inc"
#include "quantum-mlir/Conversion/Passes.h.inc"
