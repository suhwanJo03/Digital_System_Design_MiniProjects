📘 Digital System Design – Mini Projects

This repository contains all Advanced Practice Projects (1, 2, 3) from the Digital System Design (DSD25) course.
The projects focus on DSP-based hardware design, controller architectures, and quantization for neural networks using Verilog HDL.

📂 Repository Structure
Digital_System_Design_MiniProjects/
│── Advanced_Practice_1/
│   ├── pre_VECTOR_MUL
│   ├── prob1_GEMV
│   ├── prob2_CONV_1D
│   └── prob3_2stg_GEMM_GEMV
│   
│
│── Advanced_Practice_2/
│   ├── prob1_Simple_Controller
│   ├── prob2_Recursiv_Architecture_Controller
│   └── prob3_Streamline_Architecture_Controller
│   
│
└──Advanced_Practice_3/
    ├── prob1_Vector_Quantization
    ├── prob2_Vector_Multiplicaiton_Quantization
    └── prob3_Matrix_Multiplication_Quantization.v


🚀 Project Summaries
🔹 Advanced Practice 1 – DSP & High-Level Operations

Goal: Build DSP-based computation units and scale to higher-level operations.

Main Tasks:

MAC.v: DSP-based multiply-accumulate unit

GEMV (General Matrix-Vector Multiplication)

Conv1d (1D convolution with stride)

2-stage GEMM-GEMV (hierarchical design with matrix-matrix + matrix-vector)

Focus: Parallel MAC operations, dataflow design, and testbench verification.

🔹 Advanced Practice 2 – Controller Architectures

Goal: Explore control schemes for DSP-based matrix/vector computations.

Main Tasks:

Simple Controller (FSM for single vector-matrix multiplication)

Recursive Controller (PU reuse across multiple states)

Streamline Controller (parallel PUs with local/global controllers)

Focus: FSM design, BRAM interfacing, dataflow scheduling, performance comparison.

🔹 Advanced Practice 3 – Quantization & Neural Network Operations

Goal: Implement quantization/dequantization for vector/matrix operations.

Main Tasks:

Vector quantization & dequantization (Q16.16 → INT8 → Q16.16)

Vector multiplication with quantization

Matrix multiplication with quantization

Focus: Hardware realization of quantization process, scaling factor management, accuracy verification.


🛠️ How to Run

Open Vivado and create a project.

Add Verilog source files and corresponding testbenches from each practice folder.

Run Behavioral Simulation.

Verify results against expected values.

Optionally, synthesize and implement on FPGA for hardware testing.

📌 Key Learning Outcomes

Design and verification of DSP-based MAC operations

Implementation of controller FSMs for recursive and streamline architectures

Integration of quantization methods for neural network accelerators

Hands-on practice with dataflow design, testbenching, and FPGA verification

📅 Course Context

Course: Digital System Design (DSD25)

Instructor: Prof. Hyun Kim, SeoulTech

Period: Spring 2025
