// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 08:39:19 2025
// Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_sim_netlist.v
// Design      : Cnt4bits_ILA_MA_CntNbits_L_MA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Cnt4bits_ILA_MA_CntNbits_L_MA_0_0,CntNbits_L_MA,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CntNbits_L_MA,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module Cnt4bits_ILA_MA_CntNbits_L_MA_0_0
   (RESETn,
    CLK,
    Load_MA,
    UnD_MA,
    CE_MA,
    Din_MA,
    Q_MA,
    TC_MA);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESETn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESETn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input CLK;
  input Load_MA;
  input UnD_MA;
  input CE_MA;
  input [3:0]Din_MA;
  output [3:0]Q_MA;
  output TC_MA;

  wire CE_MA;
  wire CLK;
  wire [3:0]Din_MA;
  wire Load_MA;
  wire [3:0]Q_MA;
  wire RESETn;
  wire TC_MA;
  wire UnD_MA;

  Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA U0
       (.CE_MA(CE_MA),
        .CLK(CLK),
        .Din_MA(Din_MA),
        .Load_MA(Load_MA),
        .\Q_intern_MA_reg[0]_0 (Q_MA[0]),
        .\Q_intern_MA_reg[1]_0 (Q_MA[1]),
        .\Q_intern_MA_reg[2]_0 (Q_MA[2]),
        .\Q_intern_MA_reg[3]_0 (Q_MA[3]),
        .RESETn(RESETn),
        .TC_MA(TC_MA),
        .UnD_MA(UnD_MA));
endmodule

(* ORIG_REF_NAME = "CntNbits_L_MA" *) 
module Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA
   (\Q_intern_MA_reg[3]_0 ,
    \Q_intern_MA_reg[2]_0 ,
    \Q_intern_MA_reg[1]_0 ,
    \Q_intern_MA_reg[0]_0 ,
    TC_MA,
    RESETn,
    CLK,
    Din_MA,
    Load_MA,
    UnD_MA,
    CE_MA);
  output \Q_intern_MA_reg[3]_0 ;
  output \Q_intern_MA_reg[2]_0 ;
  output \Q_intern_MA_reg[1]_0 ;
  output \Q_intern_MA_reg[0]_0 ;
  output TC_MA;
  input RESETn;
  input CLK;
  input [3:0]Din_MA;
  input Load_MA;
  input UnD_MA;
  input CE_MA;

  wire CE_MA;
  wire CLK;
  wire [3:0]Din_MA;
  wire Load_MA;
  wire \Q_intern_MA[0]_i_1_n_0 ;
  wire \Q_intern_MA[1]_i_1_n_0 ;
  wire \Q_intern_MA[1]_i_2_n_0 ;
  wire \Q_intern_MA[2]_i_1_n_0 ;
  wire \Q_intern_MA[2]_i_2_n_0 ;
  wire \Q_intern_MA[3]_i_1_n_0 ;
  wire \Q_intern_MA[3]_i_2_n_0 ;
  wire \Q_intern_MA[3]_i_3_n_0 ;
  wire \Q_intern_MA[3]_i_4_n_0 ;
  wire \Q_intern_MA_reg[0]_0 ;
  wire \Q_intern_MA_reg[1]_0 ;
  wire \Q_intern_MA_reg[2]_0 ;
  wire \Q_intern_MA_reg[3]_0 ;
  wire RESETn;
  wire TC_MA;
  wire UnD_MA;

  LUT6 #(
    .INIT(64'hFFA80000FFA8FFFF)) 
    \Q_intern_MA[0]_i_1 
       (.I0(Din_MA[3]),
        .I1(Din_MA[1]),
        .I2(Din_MA[2]),
        .I3(Din_MA[0]),
        .I4(Load_MA),
        .I5(\Q_intern_MA_reg[0]_0 ),
        .O(\Q_intern_MA[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \Q_intern_MA[1]_i_1 
       (.I0(Din_MA[1]),
        .I1(Din_MA[3]),
        .I2(Load_MA),
        .I3(\Q_intern_MA[1]_i_2_n_0 ),
        .O(\Q_intern_MA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5A5AA524)) 
    \Q_intern_MA[1]_i_2 
       (.I0(UnD_MA),
        .I1(\Q_intern_MA_reg[3]_0 ),
        .I2(\Q_intern_MA_reg[0]_0 ),
        .I3(\Q_intern_MA_reg[2]_0 ),
        .I4(\Q_intern_MA_reg[1]_0 ),
        .O(\Q_intern_MA[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \Q_intern_MA[2]_i_1 
       (.I0(Din_MA[2]),
        .I1(Din_MA[3]),
        .I2(Load_MA),
        .I3(\Q_intern_MA[2]_i_2_n_0 ),
        .O(\Q_intern_MA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5FA0FA04)) 
    \Q_intern_MA[2]_i_2 
       (.I0(UnD_MA),
        .I1(\Q_intern_MA_reg[3]_0 ),
        .I2(\Q_intern_MA_reg[0]_0 ),
        .I3(\Q_intern_MA_reg[2]_0 ),
        .I4(\Q_intern_MA_reg[1]_0 ),
        .O(\Q_intern_MA[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q_intern_MA[3]_i_1 
       (.I0(RESETn),
        .O(\Q_intern_MA[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Q_intern_MA[3]_i_2 
       (.I0(Load_MA),
        .I1(CE_MA),
        .O(\Q_intern_MA[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_intern_MA[3]_i_3 
       (.I0(Din_MA[3]),
        .I1(Load_MA),
        .I2(\Q_intern_MA[3]_i_4_n_0 ),
        .O(\Q_intern_MA[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CC4CCC9)) 
    \Q_intern_MA[3]_i_4 
       (.I0(UnD_MA),
        .I1(\Q_intern_MA_reg[3]_0 ),
        .I2(\Q_intern_MA_reg[1]_0 ),
        .I3(\Q_intern_MA_reg[2]_0 ),
        .I4(\Q_intern_MA_reg[0]_0 ),
        .O(\Q_intern_MA[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_intern_MA_reg[0] 
       (.C(CLK),
        .CE(\Q_intern_MA[3]_i_2_n_0 ),
        .D(\Q_intern_MA[0]_i_1_n_0 ),
        .Q(\Q_intern_MA_reg[0]_0 ),
        .R(\Q_intern_MA[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_intern_MA_reg[1] 
       (.C(CLK),
        .CE(\Q_intern_MA[3]_i_2_n_0 ),
        .D(\Q_intern_MA[1]_i_1_n_0 ),
        .Q(\Q_intern_MA_reg[1]_0 ),
        .R(\Q_intern_MA[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_intern_MA_reg[2] 
       (.C(CLK),
        .CE(\Q_intern_MA[3]_i_2_n_0 ),
        .D(\Q_intern_MA[2]_i_1_n_0 ),
        .Q(\Q_intern_MA_reg[2]_0 ),
        .R(\Q_intern_MA[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_intern_MA_reg[3] 
       (.C(CLK),
        .CE(\Q_intern_MA[3]_i_2_n_0 ),
        .D(\Q_intern_MA[3]_i_3_n_0 ),
        .Q(\Q_intern_MA_reg[3]_0 ),
        .R(\Q_intern_MA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080001)) 
    TC_MA_INST_0
       (.I0(UnD_MA),
        .I1(\Q_intern_MA_reg[0]_0 ),
        .I2(\Q_intern_MA_reg[2]_0 ),
        .I3(\Q_intern_MA_reg[1]_0 ),
        .I4(\Q_intern_MA_reg[3]_0 ),
        .O(TC_MA));
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
