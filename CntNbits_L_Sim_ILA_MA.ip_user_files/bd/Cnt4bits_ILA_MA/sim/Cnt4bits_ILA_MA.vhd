--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Nov  3 03:07:41 2024
--Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
--Command     : generate_target Cnt4bits_ILA_MA.bd
--Design      : Cnt4bits_ILA_MA
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA is
  port (
    CE_MelnicAnastasia : in STD_LOGIC;
    Din_MelnicAnastasia : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Load_MelnicAnastasia : in STD_LOGIC;
    Q_MelnicAnastasia : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TC_MelnicAnastasia : out STD_LOGIC;
    UnD_MelnicAnastasia : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Cnt4bits_ILA_MA : entity is "Cnt4bits_ILA_MA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Cnt4bits_ILA_MA,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Cnt4bits_ILA_MA : entity is "Cnt4bits_ILA_MA.hwdef";
end Cnt4bits_ILA_MA;

architecture STRUCTURE of Cnt4bits_ILA_MA is
  component Cnt4bits_ILA_MA_Cnt4bits_MA_0_0 is
  port (
    RESETn : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Load_MelnicAnastasia : in STD_LOGIC;
    UnD_MelnicAnastasia : in STD_LOGIC;
    CE_MelnicAnastasia : in STD_LOGIC;
    Din_MelnicAnastasia : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_MelnicAnastasia : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TC_MelnicAnastasia : out STD_LOGIC
  );
  end component Cnt4bits_ILA_MA_Cnt4bits_MA_0_0;
  component Cnt4bits_ILA_MA_clk_wiz_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component Cnt4bits_ILA_MA_clk_wiz_0;
  component Cnt4bits_ILA_MA_rst_clk_wiz_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Cnt4bits_ILA_MA_rst_clk_wiz_100M_0;
  component Cnt4bits_ILA_MA_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Cnt4bits_ILA_MA_system_ila_0_0;
  signal CE_MelnicAnastasia_0_1 : STD_LOGIC;
  attribute DEBUG : string;
  attribute DEBUG of CE_MelnicAnastasia_0_1 : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of CE_MelnicAnastasia_0_1 : signal is std.standard.true;
  signal Cnt4bits_MA_0_Q_MelnicAnastasia : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of Cnt4bits_MA_0_Q_MelnicAnastasia : signal is "true";
  attribute MARK_DEBUG of Cnt4bits_MA_0_Q_MelnicAnastasia : signal is std.standard.true;
  signal Cnt4bits_MA_0_TC_MelnicAnastasia : STD_LOGIC;
  attribute DEBUG of Cnt4bits_MA_0_TC_MelnicAnastasia : signal is "true";
  attribute MARK_DEBUG of Cnt4bits_MA_0_TC_MelnicAnastasia : signal is std.standard.true;
  signal Din_MelnicAnastasia_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of Din_MelnicAnastasia_0_1 : signal is "true";
  attribute MARK_DEBUG of Din_MelnicAnastasia_0_1 : signal is std.standard.true;
  signal Load_MelnicAnastasia_0_1 : STD_LOGIC;
  attribute DEBUG of Load_MelnicAnastasia_0_1 : signal is "true";
  attribute MARK_DEBUG of Load_MelnicAnastasia_0_1 : signal is std.standard.true;
  signal UnD_MelnicAnastasia_0_1 : STD_LOGIC;
  attribute DEBUG of UnD_MelnicAnastasia_0_1 : signal is "true";
  attribute MARK_DEBUG of UnD_MelnicAnastasia_0_1 : signal is std.standard.true;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of rst_clk_wiz_100M_peripheral_aresetn : signal is "true";
  attribute MARK_DEBUG of rst_clk_wiz_100M_peripheral_aresetn : signal is std.standard.true;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN Cnt4bits_ILA_MA_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  CE_MelnicAnastasia_0_1 <= CE_MelnicAnastasia;
  Din_MelnicAnastasia_0_1(3 downto 0) <= Din_MelnicAnastasia(3 downto 0);
  Load_MelnicAnastasia_0_1 <= Load_MelnicAnastasia;
  Q_MelnicAnastasia(3 downto 0) <= Cnt4bits_MA_0_Q_MelnicAnastasia(3 downto 0);
  TC_MelnicAnastasia <= Cnt4bits_MA_0_TC_MelnicAnastasia;
  UnD_MelnicAnastasia_0_1 <= UnD_MelnicAnastasia;
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
Cnt4bits_MA_0: component Cnt4bits_ILA_MA_Cnt4bits_MA_0_0
     port map (
      CE_MelnicAnastasia => CE_MelnicAnastasia_0_1,
      CLK => clk_wiz_clk_out1,
      Din_MelnicAnastasia(3 downto 0) => Din_MelnicAnastasia_0_1(3 downto 0),
      Load_MelnicAnastasia => Load_MelnicAnastasia_0_1,
      Q_MelnicAnastasia(3 downto 0) => Cnt4bits_MA_0_Q_MelnicAnastasia(3 downto 0),
      RESETn => rst_clk_wiz_100M_peripheral_aresetn(0),
      TC_MelnicAnastasia => Cnt4bits_MA_0_TC_MelnicAnastasia,
      UnD_MelnicAnastasia => UnD_MelnicAnastasia_0_1
    );
clk_wiz: component Cnt4bits_ILA_MA_clk_wiz_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => clk_wiz_locked,
      resetn => reset_1
    );
rst_clk_wiz_100M: component Cnt4bits_ILA_MA_rst_clk_wiz_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_clk_out1
    );
system_ila_0: component Cnt4bits_ILA_MA_system_ila_0_0
     port map (
      clk => clk_wiz_clk_out1,
      probe0(0) => CE_MelnicAnastasia_0_1,
      probe1(3 downto 0) => Cnt4bits_MA_0_Q_MelnicAnastasia(3 downto 0),
      probe2(0) => Cnt4bits_MA_0_TC_MelnicAnastasia,
      probe3(3 downto 0) => Din_MelnicAnastasia_0_1(3 downto 0),
      probe4(0) => Load_MelnicAnastasia_0_1,
      probe5(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      probe6(0) => UnD_MelnicAnastasia_0_1
    );
end STRUCTURE;
