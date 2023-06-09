#ifndef Quantum_OPS
#define Quantum_OPS

include "QuantumDialect.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def QallocOp : QuantumOp<"qalloc", []> {
    let arguments = (ins AnyI64Attr:$size, StrAttr:$name, AnyI32Attr:$offset);
    let results = (outs QubitArrayType:$qubits);
}

def ExtractQubitOp : QuantumOp<"qextract", []> {
    let arguments = (ins QubitArrayType:$qubitArr, AnyInteger:$idx);
    let results = (outs QubitType:$qbit);
}

def GeneralArrayExtractOp : QuantumOp<"array_extract", []> {
    let arguments = (ins QubitArrayType:$array, AnyInteger:$idx);
    let results = (outs AnyType:$element);
}

def MzOp: QuantumOp<"mz"> {
    let arguments = (ins QubitType: $qubit);
    let results = (outs I1: $bit_result);
}

def PrintGlobalVectorOp : QuantumOp<"print_global_vector", []> {
    let arguments = (ins);
    let results = (outs);
}

def GenGate : QuantumOp<"gen_gate", [AttrSizedOperandSegments]> {
    let arguments = (ins StrAttr:$name, Variadic<QubitType>:$qubits, Variadic<F64>:$params);
    let results = (outs Variadic<QubitType>:$result);
}

//pauli matrices
def XOp: SingleSimpleGate<"XOp">;
def YOp: SingleSimpleGate<"YOp">;
def ZOp: SingleSimpleGate<"ZOp">;
def IOp: SingleSimpleGate<"IOp">;

def HOp: SingleSimpleGate<"HOp">; //hadamard gate

def SOp: SingleSimpleGate<"SOp">; //phase gate
def TOp: SingleSimpleGate<"TOp">;

def RxOp : RotationGate<"RxOp">;
def RyOp : RotationGate<"RyOp">;
def RzOp : RotationGate<"RzOp">;

def CXOp : QuantumOp<"cx",  [NoMemoryEffect]> {
    let arguments = (ins QubitType: $qubit1, QubitType: $qubit2);
    let results = (outs QubitType: $control, QubitType: $sink);
}


def DeallocOp : QuantumOp<"dealloc", []> {
    let arguments = (ins QubitArrayType:$qubits);
    let results = (outs);
}

def IntegerCastOp : QuantumOp<"integerCast", []> {
    let arguments = (ins AnyInteger:$input);
    let results = (outs AnyInteger:$output);
}


def ResultCastOp : QuantumOp<"resultCast", []> {
    let arguments = (ins ResultType:$measure_result);
    let results = (outs I1:$bit_result);
}

#endif // Quantum_OPS