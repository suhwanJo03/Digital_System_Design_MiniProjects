# Advanced Practice 1 – DSP & Parallel Operations

This project contains Verilog HDL implementations for **Advanced Practice 1** of Digital System Design (DSD25).  
The focus is on designing DSP-based multiply-accumulate operations and applying them to GEMV, Conv1d, and 2-stage GEMM→GEMV.

---

## Problem 1 — GEMV Operation
- **Functionality**: General Matrix-Vector Multiplication (GEMV).  
- **Inputs**: A 16×8 matrix (flattened to 128-bit bus) and an 8×1 vector (8-bit signed).  
- **Output**: A 16×1 vector, where each element is a 32-bit signed accumulation.  
- **Structure**:  
  - The `gemv.v` module instantiates **16 MAC units** in parallel.  
  - Each MAC processes one row of the input matrix with the vector input.  
  - A global enable (`en_i`) and valid (`valid_i`) control synchronization.  
  - Outputs are concatenated into a 512-bit bus, representing the 16 results.  
- **Key Point**: Full row-level parallelism ensures high throughput at the cost of DSP resource usage.  

---

## Problem 2 — Conv1d Operation
- **Functionality**: 1D convolution with stride 2 and kernel size 5.  
- **Inputs**:  
  - Input vector: 1×11 (8-bit signed).  
  - Weight vector: 5×1 (8-bit signed).  
- **Output**: A 4×1 result vector (32-bit signed).  
- **Structure**:  
  - The `conv1d.v` module instantiates **4 MAC units**, each responsible for one convolution window.  
  - Input slicing logic shifts the 11-element input vector across 5-element windows.  
  - Each window is multiplied with the kernel and accumulated in its MAC.  
- **Key Point**: Four outputs are generated simultaneously, aligning with stride = 2 sliding windows.  

---

## Problem 3 — 2-stage GEMM → GEMV
- **Functionality**: Two-stage operation combining matrix-matrix multiplication (GEMM) and matrix-vector multiplication (GEMV).  
- **Inputs**:  
  - `din1`: 8×4 matrix (flattened).  
  - `din2`: 4×8 matrix (flattened).  
  - `din3`: 8×1 vector.  
- **Process**:  
  1. **Stage 1 (GEMM)**: `din1 × din2` produces an intermediate 8×8 matrix.  
  2. **Bit Slicing**: Each 32-bit intermediate result is truncated to 8-bit.  
  3. **Stage 2 (GEMV)**: The sliced 8×8 matrix multiplies with `din3` to produce an 8×1 result (32-bit signed).  
- **Structure**:  
  - The top module connects **gemv1.v** and **gemv2.v** in sequence, with a register stage (FF) between them.  
  - Each gemv uses **8 MAC units**, meaning Stage 1 and Stage 2 both execute with row-level parallelism.  
- **Key Point**: Demonstrates hierarchical dataflow: GEMM expands into GEMV, with intermediate storage and slicing ensuring compatibility.  

---

## Verification
- **Simulation**: Each design was tested with dedicated testbenches to verify arithmetic correctness.  
- **Waveforms**: Confirmed expected outputs, signed handling, and dataflow integrity.  
- **Static Timing Analysis (STA)**: After synthesis/implementation, all modules achieved positive slack, proving timing closure and reliable operation.  

---
