# Advanced Practice 2 – Controller Architectures

This project contains Verilog HDL implementations for **Advanced Practice 2** of Digital System Design (DSD25).  
The focus is on designing controllers (FSM-based, Recursive, Streamline) for vector/matrix multiplication.

---

## Problem 1 — Simple Controller
- **Functionality**: A finite state machine (FSM) controls the flow of vector multiplication.  
- **FSM states**: **IDLE → RUN → DONE**  
  - **IDLE**: Waits for the start signal.  
  - **RUN**: Enables MAC operation, increments buffer addresses, and counts cycles.  
  - **DONE**: Signals completion once 8 MAC operations are performed.  
- **Structure**:  
  - A top module instantiates **x_bram**, **w_bram**, **MAC.v**, and **ctrl_fsm.v**.  
  - The controller generates control signals such as `x_en`, `w_en`, `mac_en`, and manages address counters for input BRAMs.  
  - Accumulated MAC results are output through `acc_o`.  

---

## Problem 2 — Recursive Controller
- **Functionality**: Implements matrix multiplication in **two sequential states**, reusing a single PU (Processing Unit) across iterations.  
- **Structure**:  
  - The **controller** orchestrates computation by switching between `state_0` and `state_1`.  
  - Only **one PU (MAC array)** is instantiated, which reduces hardware resource usage.  
  - Temporary results are stored in intermediate BRAMs (`temp_bram`) before moving to the next state.  
- **Trade-off**: Resource-efficient but incurs longer latency due to serialized execution.  

---

## Problem 3 — Streamline Controller
- **Functionality**: Enhances throughput by **parallelizing operations** across two PUs.  
- **Structure**:  
  - Contains **two PUs** (each with its own local controller) that work independently on different stages of the matrix multiplication.  
  - A **global controller** manages high-level sequencing, while each **local controller** coordinates its PU’s MAC operations and memory access.  
  - Input BRAMs (`din1_bram`, `din2_bram`, `din3_bram`) are shared, but distributed control logic ensures concurrent operation.  
- **Trade-off**: Achieves higher performance at the cost of additional hardware resources.  

---

## Verification
- **Simulation**: Developed testbenches (`tb_*.v`) for all three controller architectures.  
- **Waveform validation**: Confirmed FSM transitions, correct accumulation results, and proper memory addressing sequences.  
- **Static Timing Analysis (STA)**: After synthesis/implementation, all designs achieved positive slack, proving successful timing closure and reliable operation.  

---
