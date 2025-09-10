# Advanced Practice 3 – Quantization & Arithmetic

This project contains Verilog HDL implementations for **Advanced Practice 3** of Digital System Design (DSD25).  
The focus is on quantization, dequantization, and integer arithmetic for vectors and matrices.

---

## Problem 1 — Vector Quantization
- **Functionality**: Implements integer quantization and dequantization for an 8×1 vector.  
- **Inputs**: Vector in **Q16.16 fixed-point format**.  
- **Outputs**:  
  - Quantized: 8-bit signed integers (−128 ~ 127).  
  - Dequantized: Back to Q16.16 format.  
- **Formula**:  
  - Scaling: \\( s = (β − α) / (2^b − 1) \\)  
  - Quantization: \\( x_q = clip(round(x/s)) \\)  
  - Dequantization: \\( Out_{dq} = X_s^{-1}·W_s·Out \\)  
- **Structure**:  
  - `Quantize.v` maps Q16.16 inputs into 8-bit integers using scaling and clipping.  
  - `Dequantize.v` reconstructs approximate Q16.16 values using stored scaling factors.  
  - The top module instantiates both modules, coordinating `start_i`, `done_o`, and valid signals.  

---

## Problem 2 — Vector Multiplication with Quantization
- **Functionality**: Multiplies a quantized vector with another quantized or fixed-point vector, followed by dequantization.  
- **Inputs**:  
  - `X`: 8×1 vector in Q16.16 (quantized inside the module).  
  - `W`: 8×1 vector in 8-bit integer format.  
- **Output**: A scalar or vector in dequantized Q16.16 format.  
- **Structure**:  
  - `Quantize.v` converts input `X` to 8-bit.  
  - `MAC.v` performs multiply-accumulate across 8 elements (signed).  
  - `Dequantize.v` scales the MAC result back to Q16.16 format.  
  - Control signals (`start_i`, `dq_valid_o`) ensure synchronization between quantization, MAC, and dequantization stages.  

---

## Problem 3 — Matrix Multiplication with Quantization
- **Functionality**: Performs quantized matrix multiplication followed by dequantization.  
- **Inputs**:  
  - `X`: 8×1 vector in Q16.16.  
  - `W`: Quantized 4×8 matrix in 8-bit integers.  
- **Output**: 4×1 result vector in dequantized Q16.16.  
- **Structure**:  
  - `Quantize.v` reduces Q16.16 input vector to 8-bit integers.  
  - Multiple `MAC.v` units compute matrix×vector multiplication in parallel.  
  - Intermediate 32-bit results are scaled back by `Dequantize.v`.  
  - The top module manages parallel MAC instances, valid handshaking, and accumulation of outputs.  

---

## Verification
- **Simulation**: Each problem was tested with dedicated testbenches to verify arithmetic correctness.  
- **Waveforms**: Confirmed proper quantization, dequantization, and accumulation behavior.  
- **Static Timing Analysis (STA)**: After synthesis and implementation, all modules achieved positive slack, ensuring reliable timing closure.  

---
