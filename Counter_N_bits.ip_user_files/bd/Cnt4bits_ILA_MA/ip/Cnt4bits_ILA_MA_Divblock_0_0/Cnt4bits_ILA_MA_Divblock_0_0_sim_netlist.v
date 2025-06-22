// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 08:38:58 2025
// Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_Divblock_0_0/Cnt4bits_ILA_MA_Divblock_0_0_sim_netlist.v
// Design      : Cnt4bits_ILA_MA_Divblock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Cnt4bits_ILA_MA_Divblock_0_0,Divblock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Divblock,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module Cnt4bits_ILA_MA_Divblock_0_0
   (CLK,
    SEL,
    RESETn,
    CE_OUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input CLK;
  input [1:0]SEL;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESETn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESETn;
  output CE_OUT;

  wire CE_OUT;
  wire CLK;
  wire RESETn;
  wire [1:0]SEL;

  Cnt4bits_ILA_MA_Divblock_0_0_Divblock U0
       (.CE_OUT(CE_OUT),
        .CLK(CLK),
        .RESETn(RESETn),
        .SEL(SEL));
endmodule

(* ORIG_REF_NAME = "Divblock" *) 
module Cnt4bits_ILA_MA_Divblock_0_0_Divblock
   (CE_OUT,
    CLK,
    RESETn,
    SEL);
  output CE_OUT;
  input CLK;
  input RESETn;
  input [1:0]SEL;

  wire CE_OUT;
  wire CLK;
  wire \Dividers[1].Div_n_0 ;
  wire \Dividers[3].Div_n_0 ;
  wire RESETn;
  wire [1:0]SEL;

  Cnt4bits_ILA_MA_Divblock_0_0_Divider \Dividers[1].Div 
       (.CLK(CLK),
        .RESETn(RESETn),
        .SEL(SEL[1]),
        .\SEL[1] (\Dividers[1].Div_n_0 ));
  Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1 \Dividers[2].Div 
       (.CE_OUT(CE_OUT),
        .CE_OUT_0(\Dividers[3].Div_n_0 ),
        .CE_OUT_1(\Dividers[1].Div_n_0 ),
        .CLK(CLK),
        .RESETn(RESETn),
        .SEL(SEL));
  Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3 \Dividers[3].Div 
       (.CLK(CLK),
        .RESETn(RESETn),
        .SEL(SEL),
        .\i_reg[23]_0 (\Dividers[3].Div_n_0 ));
endmodule

(* ORIG_REF_NAME = "Divider" *) 
module Cnt4bits_ILA_MA_Divblock_0_0_Divider
   (\SEL[1] ,
    CLK,
    RESETn,
    SEL);
  output \SEL[1] ;
  input CLK;
  input RESETn;
  input [0:0]SEL;

  wire CLK;
  wire RESETn;
  wire [0:0]SEL;
  wire \SEL[1] ;
  wire clear;
  wire \i[0]_i_3_n_0 ;
  wire [2:0]i_reg;
  wire \i_reg[0]_i_2_n_2 ;
  wire \i_reg[0]_i_2_n_3 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire [3:2]\NLW_i_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[0]_i_2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4000)) 
    CE_OUT_INST_0_i_2
       (.I0(SEL),
        .I1(i_reg[0]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .O(\SEL[1] ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \i[0]_i_1 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(RESETn),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_3 
       (.I0(i_reg[0]),
        .O(\i[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_7 ),
        .Q(i_reg[0]),
        .R(clear));
  CARRY4 \i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\NLW_i_reg[0]_i_2_CO_UNCONNECTED [3:2],\i_reg[0]_i_2_n_2 ,\i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_i_reg[0]_i_2_O_UNCONNECTED [3],\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .S({1'b0,i_reg[2:1],\i[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_6 ),
        .Q(i_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_5 ),
        .Q(i_reg[2]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "Divider" *) 
module Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1
   (CE_OUT,
    CLK,
    RESETn,
    CE_OUT_0,
    SEL,
    CE_OUT_1);
  output CE_OUT;
  input CLK;
  input RESETn;
  input CE_OUT_0;
  input [1:0]SEL;
  input CE_OUT_1;

  wire CE_OUT;
  wire CE_OUT_0;
  wire CE_OUT_1;
  wire CE_OUT_INST_0_i_10_n_0;
  wire CE_OUT_INST_0_i_11_n_0;
  wire CE_OUT_INST_0_i_12_n_0;
  wire CE_OUT_INST_0_i_13_n_0;
  wire CE_OUT_INST_0_i_3_n_0;
  wire CE_OUT_INST_0_i_4_n_0;
  wire CLK;
  wire RESETn;
  wire [1:0]SEL;
  wire \i[0]_i_1__0_n_0 ;
  wire \i[0]_i_3__0_n_0 ;
  wire [24:0]i_reg;
  wire \i_reg[0]_i_2__0_n_0 ;
  wire \i_reg[0]_i_2__0_n_1 ;
  wire \i_reg[0]_i_2__0_n_2 ;
  wire \i_reg[0]_i_2__0_n_3 ;
  wire \i_reg[0]_i_2__0_n_4 ;
  wire \i_reg[0]_i_2__0_n_5 ;
  wire \i_reg[0]_i_2__0_n_6 ;
  wire \i_reg[0]_i_2__0_n_7 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_i_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_i_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFABFFABFFAB)) 
    CE_OUT_INST_0
       (.I0(CE_OUT_0),
        .I1(SEL[0]),
        .I2(SEL[1]),
        .I3(CE_OUT_1),
        .I4(CE_OUT_INST_0_i_3_n_0),
        .I5(CE_OUT_INST_0_i_4_n_0),
        .O(CE_OUT));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    CE_OUT_INST_0_i_10
       (.I0(i_reg[10]),
        .I1(i_reg[9]),
        .I2(i_reg[7]),
        .I3(i_reg[8]),
        .I4(i_reg[12]),
        .I5(i_reg[11]),
        .O(CE_OUT_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    CE_OUT_INST_0_i_11
       (.I0(i_reg[16]),
        .I1(i_reg[15]),
        .I2(i_reg[13]),
        .I3(i_reg[14]),
        .I4(i_reg[18]),
        .I5(i_reg[17]),
        .O(CE_OUT_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    CE_OUT_INST_0_i_12
       (.I0(i_reg[21]),
        .I1(i_reg[22]),
        .I2(i_reg[20]),
        .I3(i_reg[19]),
        .I4(i_reg[23]),
        .I5(i_reg[24]),
        .O(CE_OUT_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    CE_OUT_INST_0_i_13
       (.I0(i_reg[3]),
        .I1(i_reg[4]),
        .I2(i_reg[1]),
        .I3(i_reg[2]),
        .I4(i_reg[6]),
        .I5(i_reg[5]),
        .O(CE_OUT_INST_0_i_13_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    CE_OUT_INST_0_i_3
       (.I0(SEL[0]),
        .I1(i_reg[0]),
        .I2(CE_OUT_INST_0_i_10_n_0),
        .O(CE_OUT_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    CE_OUT_INST_0_i_4
       (.I0(CE_OUT_INST_0_i_11_n_0),
        .I1(CE_OUT_INST_0_i_12_n_0),
        .I2(CE_OUT_INST_0_i_13_n_0),
        .O(CE_OUT_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    \i[0]_i_1__0 
       (.I0(CE_OUT_INST_0_i_10_n_0),
        .I1(i_reg[0]),
        .I2(CE_OUT_INST_0_i_4_n_0),
        .I3(RESETn),
        .O(\i[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_3__0 
       (.I0(i_reg[0]),
        .O(\i[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__0_n_7 ),
        .Q(i_reg[0]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_2__0_n_0 ,\i_reg[0]_i_2__0_n_1 ,\i_reg[0]_i_2__0_n_2 ,\i_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_2__0_n_4 ,\i_reg[0]_i_2__0_n_5 ,\i_reg[0]_i_2__0_n_6 ,\i_reg[0]_i_2__0_n_7 }),
        .S({i_reg[3:1],\i[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg[16]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S(i_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg[17]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg[18]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg[19]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__0_n_6 ),
        .Q(i_reg[1]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg[20]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S(i_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg[21]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg[22]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg[23]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg[24]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO(\NLW_i_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg[24]_i_1_O_UNCONNECTED [3:1],\i_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,i_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__0_n_5 ),
        .Q(i_reg[2]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__0_n_4 ),
        .Q(i_reg[3]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2__0_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(\i[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(\i[0]_i_1__0_n_0 ));
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(\i[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "Divider" *) 
module Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3
   (\i_reg[23]_0 ,
    CLK,
    RESETn,
    SEL);
  output \i_reg[23]_0 ;
  input CLK;
  input RESETn;
  input [1:0]SEL;

  wire CE_OUT_INST_0_i_5_n_0;
  wire CE_OUT_INST_0_i_6_n_0;
  wire CE_OUT_INST_0_i_7_n_0;
  wire CE_OUT_INST_0_i_8_n_0;
  wire CE_OUT_INST_0_i_9_n_0;
  wire CLK;
  wire RESETn;
  wire [1:0]SEL;
  wire \i[0]_i_1__1_n_0 ;
  wire \i[0]_i_3__1_n_0 ;
  wire \i[0]_i_4_n_0 ;
  wire \i[0]_i_5_n_0 ;
  wire [26:0]i_reg;
  wire \i_reg[0]_i_2__1_n_0 ;
  wire \i_reg[0]_i_2__1_n_1 ;
  wire \i_reg[0]_i_2__1_n_2 ;
  wire \i_reg[0]_i_2__1_n_3 ;
  wire \i_reg[0]_i_2__1_n_4 ;
  wire \i_reg[0]_i_2__1_n_5 ;
  wire \i_reg[0]_i_2__1_n_6 ;
  wire \i_reg[0]_i_2__1_n_7 ;
  wire \i_reg[12]_i_1__0_n_0 ;
  wire \i_reg[12]_i_1__0_n_1 ;
  wire \i_reg[12]_i_1__0_n_2 ;
  wire \i_reg[12]_i_1__0_n_3 ;
  wire \i_reg[12]_i_1__0_n_4 ;
  wire \i_reg[12]_i_1__0_n_5 ;
  wire \i_reg[12]_i_1__0_n_6 ;
  wire \i_reg[12]_i_1__0_n_7 ;
  wire \i_reg[16]_i_1__0_n_0 ;
  wire \i_reg[16]_i_1__0_n_1 ;
  wire \i_reg[16]_i_1__0_n_2 ;
  wire \i_reg[16]_i_1__0_n_3 ;
  wire \i_reg[16]_i_1__0_n_4 ;
  wire \i_reg[16]_i_1__0_n_5 ;
  wire \i_reg[16]_i_1__0_n_6 ;
  wire \i_reg[16]_i_1__0_n_7 ;
  wire \i_reg[20]_i_1__0_n_0 ;
  wire \i_reg[20]_i_1__0_n_1 ;
  wire \i_reg[20]_i_1__0_n_2 ;
  wire \i_reg[20]_i_1__0_n_3 ;
  wire \i_reg[20]_i_1__0_n_4 ;
  wire \i_reg[20]_i_1__0_n_5 ;
  wire \i_reg[20]_i_1__0_n_6 ;
  wire \i_reg[20]_i_1__0_n_7 ;
  wire \i_reg[23]_0 ;
  wire \i_reg[24]_i_1__0_n_2 ;
  wire \i_reg[24]_i_1__0_n_3 ;
  wire \i_reg[24]_i_1__0_n_5 ;
  wire \i_reg[24]_i_1__0_n_6 ;
  wire \i_reg[24]_i_1__0_n_7 ;
  wire \i_reg[4]_i_1__0_n_0 ;
  wire \i_reg[4]_i_1__0_n_1 ;
  wire \i_reg[4]_i_1__0_n_2 ;
  wire \i_reg[4]_i_1__0_n_3 ;
  wire \i_reg[4]_i_1__0_n_4 ;
  wire \i_reg[4]_i_1__0_n_5 ;
  wire \i_reg[4]_i_1__0_n_6 ;
  wire \i_reg[4]_i_1__0_n_7 ;
  wire \i_reg[8]_i_1__0_n_0 ;
  wire \i_reg[8]_i_1__0_n_1 ;
  wire \i_reg[8]_i_1__0_n_2 ;
  wire \i_reg[8]_i_1__0_n_3 ;
  wire \i_reg[8]_i_1__0_n_4 ;
  wire \i_reg[8]_i_1__0_n_5 ;
  wire \i_reg[8]_i_1__0_n_6 ;
  wire \i_reg[8]_i_1__0_n_7 ;
  wire [3:2]\NLW_i_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[24]_i_1__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    CE_OUT_INST_0_i_1
       (.I0(CE_OUT_INST_0_i_5_n_0),
        .I1(CE_OUT_INST_0_i_6_n_0),
        .I2(CE_OUT_INST_0_i_7_n_0),
        .I3(CE_OUT_INST_0_i_8_n_0),
        .I4(CE_OUT_INST_0_i_9_n_0),
        .O(\i_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    CE_OUT_INST_0_i_5
       (.I0(i_reg[23]),
        .I1(i_reg[24]),
        .I2(i_reg[21]),
        .I3(i_reg[22]),
        .I4(i_reg[25]),
        .I5(i_reg[26]),
        .O(CE_OUT_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    CE_OUT_INST_0_i_6
       (.I0(i_reg[18]),
        .I1(i_reg[17]),
        .I2(i_reg[15]),
        .I3(i_reg[16]),
        .I4(i_reg[19]),
        .I5(i_reg[20]),
        .O(CE_OUT_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    CE_OUT_INST_0_i_7
       (.I0(i_reg[11]),
        .I1(i_reg[12]),
        .I2(i_reg[9]),
        .I3(i_reg[10]),
        .I4(i_reg[14]),
        .I5(i_reg[13]),
        .O(CE_OUT_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    CE_OUT_INST_0_i_8
       (.I0(i_reg[5]),
        .I1(i_reg[6]),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(i_reg[8]),
        .I5(i_reg[7]),
        .O(CE_OUT_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    CE_OUT_INST_0_i_9
       (.I0(SEL[0]),
        .I1(SEL[1]),
        .I2(i_reg[0]),
        .I3(i_reg[2]),
        .I4(i_reg[1]),
        .O(CE_OUT_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \i[0]_i_1__1 
       (.I0(CE_OUT_INST_0_i_5_n_0),
        .I1(\i[0]_i_3__1_n_0 ),
        .I2(CE_OUT_INST_0_i_8_n_0),
        .I3(\i[0]_i_4_n_0 ),
        .I4(i_reg[0]),
        .I5(RESETn),
        .O(\i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_3__1 
       (.I0(CE_OUT_INST_0_i_6_n_0),
        .I1(CE_OUT_INST_0_i_7_n_0),
        .O(\i[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_4 
       (.I0(i_reg[1]),
        .I1(i_reg[2]),
        .O(\i[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_5 
       (.I0(i_reg[0]),
        .O(\i[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__1_n_7 ),
        .Q(i_reg[0]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_2__1_n_0 ,\i_reg[0]_i_2__1_n_1 ,\i_reg[0]_i_2__1_n_2 ,\i_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_2__1_n_4 ,\i_reg[0]_i_2__1_n_5 ,\i_reg[0]_i_2__1_n_6 ,\i_reg[0]_i_2__1_n_7 }),
        .S({i_reg[3:1],\i[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1__0_n_5 ),
        .Q(i_reg[10]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1__0_n_4 ),
        .Q(i_reg[11]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1__0_n_7 ),
        .Q(i_reg[12]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[12]_i_1__0 
       (.CI(\i_reg[8]_i_1__0_n_0 ),
        .CO({\i_reg[12]_i_1__0_n_0 ,\i_reg[12]_i_1__0_n_1 ,\i_reg[12]_i_1__0_n_2 ,\i_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1__0_n_4 ,\i_reg[12]_i_1__0_n_5 ,\i_reg[12]_i_1__0_n_6 ,\i_reg[12]_i_1__0_n_7 }),
        .S(i_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1__0_n_6 ),
        .Q(i_reg[13]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1__0_n_5 ),
        .Q(i_reg[14]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[12]_i_1__0_n_4 ),
        .Q(i_reg[15]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1__0_n_7 ),
        .Q(i_reg[16]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[16]_i_1__0 
       (.CI(\i_reg[12]_i_1__0_n_0 ),
        .CO({\i_reg[16]_i_1__0_n_0 ,\i_reg[16]_i_1__0_n_1 ,\i_reg[16]_i_1__0_n_2 ,\i_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1__0_n_4 ,\i_reg[16]_i_1__0_n_5 ,\i_reg[16]_i_1__0_n_6 ,\i_reg[16]_i_1__0_n_7 }),
        .S(i_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1__0_n_6 ),
        .Q(i_reg[17]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1__0_n_5 ),
        .Q(i_reg[18]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[16]_i_1__0_n_4 ),
        .Q(i_reg[19]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__1_n_6 ),
        .Q(i_reg[1]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1__0_n_7 ),
        .Q(i_reg[20]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[20]_i_1__0 
       (.CI(\i_reg[16]_i_1__0_n_0 ),
        .CO({\i_reg[20]_i_1__0_n_0 ,\i_reg[20]_i_1__0_n_1 ,\i_reg[20]_i_1__0_n_2 ,\i_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1__0_n_4 ,\i_reg[20]_i_1__0_n_5 ,\i_reg[20]_i_1__0_n_6 ,\i_reg[20]_i_1__0_n_7 }),
        .S(i_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1__0_n_6 ),
        .Q(i_reg[21]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1__0_n_5 ),
        .Q(i_reg[22]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[20]_i_1__0_n_4 ),
        .Q(i_reg[23]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[24]_i_1__0_n_7 ),
        .Q(i_reg[24]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[24]_i_1__0 
       (.CI(\i_reg[20]_i_1__0_n_0 ),
        .CO({\NLW_i_reg[24]_i_1__0_CO_UNCONNECTED [3:2],\i_reg[24]_i_1__0_n_2 ,\i_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg[24]_i_1__0_O_UNCONNECTED [3],\i_reg[24]_i_1__0_n_5 ,\i_reg[24]_i_1__0_n_6 ,\i_reg[24]_i_1__0_n_7 }),
        .S({1'b0,i_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[24]_i_1__0_n_6 ),
        .Q(i_reg[25]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[24]_i_1__0_n_5 ),
        .Q(i_reg[26]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__1_n_5 ),
        .Q(i_reg[2]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[0]_i_2__1_n_4 ),
        .Q(i_reg[3]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1__0_n_7 ),
        .Q(i_reg[4]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[4]_i_1__0 
       (.CI(\i_reg[0]_i_2__1_n_0 ),
        .CO({\i_reg[4]_i_1__0_n_0 ,\i_reg[4]_i_1__0_n_1 ,\i_reg[4]_i_1__0_n_2 ,\i_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1__0_n_4 ,\i_reg[4]_i_1__0_n_5 ,\i_reg[4]_i_1__0_n_6 ,\i_reg[4]_i_1__0_n_7 }),
        .S(i_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1__0_n_6 ),
        .Q(i_reg[5]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1__0_n_5 ),
        .Q(i_reg[6]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[4]_i_1__0_n_4 ),
        .Q(i_reg[7]),
        .R(\i[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1__0_n_7 ),
        .Q(i_reg[8]),
        .R(\i[0]_i_1__1_n_0 ));
  CARRY4 \i_reg[8]_i_1__0 
       (.CI(\i_reg[4]_i_1__0_n_0 ),
        .CO({\i_reg[8]_i_1__0_n_0 ,\i_reg[8]_i_1__0_n_1 ,\i_reg[8]_i_1__0_n_2 ,\i_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1__0_n_4 ,\i_reg[8]_i_1__0_n_5 ,\i_reg[8]_i_1__0_n_6 ,\i_reg[8]_i_1__0_n_7 }),
        .S(i_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_reg[8]_i_1__0_n_6 ),
        .Q(i_reg[9]),
        .R(\i[0]_i_1__1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
