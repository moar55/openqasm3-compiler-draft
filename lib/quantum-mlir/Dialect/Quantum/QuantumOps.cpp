//===- StandaloneOps.cpp - Standalone dialect ops ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//


#include "quantum-mlir/Dialect/Quantum/IR/QuantumOps.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/TypeUtilities.h"

#define GET_OP_CLASSES
#include "quantum-mlir/Dialect/Quantum/IR/QuantumOps.cpp.inc"
#include <mlir/Transforms/DialectConversion.h>
#include <mlir/Dialect/Arith/IR/Arith.h>
#include "quantum-mlir/Conversion/Optimize.h.inc"

using namespace mlir::quantum;

void QuantumDialect::getCanonicalizationPatterns(::mlir::RewritePatternSet& results) const {
  populateWithGenerated(results);
}
