vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/util_vector_logic_v2_0_4

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../../Users/EMELNIAP8/ipshared/3242" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../Users/EMELNIAP8/ipshared/3242" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_clk_wiz_0/Cnt4bits_ILA_MA_clk_wiz_0_clk_wiz.v" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_clk_wiz_0/Cnt4bits_ILA_MA_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../../../../Users/EMELNIAP8/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../../../../Users/EMELNIAP8/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_rst_clk_wiz_100M_0/sim/Cnt4bits_ILA_MA_rst_clk_wiz_100M_0.vhd" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_system_ila_0_0/bd_0/sim/bd_95ed.vhd" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_system_ila_0_0/bd_0/ip/ip_0/sim/bd_95ed_ila_lib_0.vhd" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_system_ila_0_0/sim/Cnt4bits_ILA_MA_system_ila_0_0.vhd" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0/sim/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0.vhd" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_Divblock_0_0/sim/Cnt4bits_ILA_MA_Divblock_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../../../../Users/EMELNIAP8/ipshared/3242" \
"../../../../../../../Users/EMELNIAP8/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../Users/EMELNIAP8/ipshared/3242" \
"../../../../../../../Users/EMELNIAP8/AppData/Roaming/Xilinx/Vivado/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_util_vector_logic_0_0/sim/Cnt4bits_ILA_MA_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../../../../../Users/EMELNIAP8/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/sim/Cnt4bits_ILA_MA.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

