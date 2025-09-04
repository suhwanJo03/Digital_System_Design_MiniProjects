transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/DSD2025/DSD_practice_for_git/advanced_practice4/Matrix_Multiplication_Quantization/Matrix_Multiplication_Quantization.cache/compile_simlib/activehdl}
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/dsp_macro_v1_0_3
vlib activehdl/xil_defaultlib

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work dsp_macro_v1_0_3 -93  \
"../../../ipstatic/hdl/dsp_macro_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../Matrix_Multiplication_Quantization.gen/sources_1/ip/xbip_dsp48_macro_0/sim/xbip_dsp48_macro_0.vhd" \


