transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/DSD2025/DSD_practice_for_git/advanced_practice3/project_3/project_3.cache/compile_simlib/activehdl}
vlib activehdl/blk_mem_gen_v8_4_6
vlib activehdl/xil_defaultlib

vlog -work blk_mem_gen_v8_4_6  -v2k5 -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"../../../../project_3.gen/sources_1/ip/blk_mem_gen_2/sim/blk_mem_gen_2.v" \


vlog -work xil_defaultlib \
"glbl.v"

