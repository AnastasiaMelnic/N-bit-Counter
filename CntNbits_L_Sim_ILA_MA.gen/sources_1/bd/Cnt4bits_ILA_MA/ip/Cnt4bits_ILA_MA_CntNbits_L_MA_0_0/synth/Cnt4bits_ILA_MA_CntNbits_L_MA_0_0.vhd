-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:CntNbits_L_MA:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 IS
  PORT (
    RESETn : IN STD_LOGIC;
    CLK : IN STD_LOGIC;
    Load_MA : IN STD_LOGIC;
    UnD_MA : IN STD_LOGIC;
    CE_MA : IN STD_LOGIC;
    Din_MA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    Q_MA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    TC_MA : OUT STD_LOGIC
  );
END Cnt4bits_ILA_MA_CntNbits_L_MA_0_0;

ARCHITECTURE Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch OF Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT CntNbits_L_MA IS
    GENERIC (
      NUM_BITS_MA : INTEGER;
      LIMIT_MA : INTEGER
    );
    PORT (
      RESETn : IN STD_LOGIC;
      CLK : IN STD_LOGIC;
      Load_MA : IN STD_LOGIC;
      UnD_MA : IN STD_LOGIC;
      CE_MA : IN STD_LOGIC;
      Din_MA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      Q_MA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      TC_MA : OUT STD_LOGIC
    );
  END COMPONENT CntNbits_L_MA;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch: ARCHITECTURE IS "CntNbits_L_MA,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch : ARCHITECTURE IS "Cnt4bits_ILA_MA_CntNbits_L_MA_0_0,CntNbits_L_MA,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch: ARCHITECTURE IS "Cnt4bits_ILA_MA_CntNbits_L_MA_0_0,CntNbits_L_MA,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=CntNbits_L_MA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,NUM_BITS_MA=4,LIMIT_MA=9}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESETn: SIGNAL IS "XIL_INTERFACENAME RESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESETn: SIGNAL IS "xilinx.com:signal:reset:1.0 RESETn RST";
BEGIN
  U0 : CntNbits_L_MA
    GENERIC MAP (
      NUM_BITS_MA => 4,
      LIMIT_MA => 9
    )
    PORT MAP (
      RESETn => RESETn,
      CLK => CLK,
      Load_MA => Load_MA,
      UnD_MA => UnD_MA,
      CE_MA => CE_MA,
      Din_MA => Din_MA,
      Q_MA => Q_MA,
      TC_MA => TC_MA
    );
END Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_arch;
