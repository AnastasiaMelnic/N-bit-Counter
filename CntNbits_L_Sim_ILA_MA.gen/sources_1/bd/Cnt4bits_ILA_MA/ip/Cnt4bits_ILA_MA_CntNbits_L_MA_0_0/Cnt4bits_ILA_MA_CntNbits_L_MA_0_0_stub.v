// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 08:39:19 2025
// Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_stub.v
// Design      : Cnt4bits_ILA_MA_CntNbits_L_MA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CntNbits_L_MA,Vivado 2024.1" *)
module Cnt4bits_ILA_MA_CntNbits_L_MA_0_0(RESETn, CLK, Load_MA, UnD_MA, CE_MA, Din_MA, Q_MA, 
  TC_MA)
/* synthesis syn_black_box black_box_pad_pin="RESETn,Load_MA,UnD_MA,CE_MA,Din_MA[3:0],Q_MA[3:0],TC_MA" */
/* synthesis syn_force_seq_prim="CLK" */;
  input RESETn;
  input CLK /* synthesis syn_isclock = 1 */;
  input Load_MA;
  input UnD_MA;
  input CE_MA;
  input [3:0]Din_MA;
  output [3:0]Q_MA;
  output TC_MA;
endmodule
