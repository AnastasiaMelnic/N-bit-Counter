// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 08:38:58 2025
// Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_Divblock_0_0/Cnt4bits_ILA_MA_Divblock_0_0_stub.v
// Design      : Cnt4bits_ILA_MA_Divblock_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Divblock,Vivado 2024.1" *)
module Cnt4bits_ILA_MA_Divblock_0_0(CLK, SEL, RESETn, CE_OUT)
/* synthesis syn_black_box black_box_pad_pin="SEL[1:0],RESETn,CE_OUT" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input [1:0]SEL;
  input RESETn;
  output CE_OUT;
endmodule
