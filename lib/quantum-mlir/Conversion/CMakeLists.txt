add_mlir_library(ConversionPasses
        ConvertToGenGate.cpp
        LowerToRestQuantum.cpp
        LowerToLLVMIR.cpp
        QuantumSimulator.cpp
        ForwardDelcareQuantumAllocs.cpp
        DEPENDS
        QuantumMLIRQuantumPassIncGen

        LINK_COMPONENTS
        Core
        LINK_LIBS PUBLIC
        MLIRIR
        MLIRPass
        MLIRTransforms
        )