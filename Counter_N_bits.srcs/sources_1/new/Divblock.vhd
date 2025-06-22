----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2019 02:37:37 PM
-- Design Name: 
-- Module Name: Divizor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Divblock is
    Generic(
            DIV_RATE1 : integer := 25000000 ;
            DIV_RATE2 : integer := 2500000  ;
            DIV_RATE3 : integer := 8
           ); 
    Port ( 
           CLK      : in STD_LOGIC ;
           SEL      : in STD_LOGIC_VECTOR (1 downto 0);
           RESETn   : in STD_LOGIC ;
           CE_OUT   : out STD_LOGIC
           );
end Divblock;

architecture Behavioral of Divblock is
component Divider is
    Generic(
            DIV_RATE : integer := 10           
           ); 
    Port ( 
           CLK     : in STD_LOGIC ;
           RESETn  : in STD_LOGIC ;
           DIV_OUT : out STD_LOGIC 
           );
end component Divider;

type DivAr is array (1 to 3) of integer;
constant DivArray: DivAr := (DIV_RATE1, DIV_RATE2, DIV_RATE3);

signal DIV_LOCAL: STD_LOGIC_VECTOR (3 downto 1);

begin

Dividers: for i in 1 to 3 generate
Div: Divider
    Generic map (
        DIV_RATE => DivArray(i)
    )
    port map(
        CLK     => CLK    ,
        RESETn  => RESETn ,
        DIV_OUT => DIV_LOCAL(i) 
    );
end generate Dividers;

with SEL select CE_OUT <=
    '1'          when "00",
    DIV_LOCAL(1) when "01",
    DIV_LOCAL(2) when "10",
    DIV_LOCAL(3) when others;


end Behavioral;
