----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2022 03:50:09 AM
-- Design Name: 
-- Module Name: System - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity System is
    Port ( Clk : in STD_LOGIC;
           ResetPush : in STD_LOGIC;
           
           --realclk : out STD_LOGIC;
           Seg7 : out STD_LOGIC_VECTOR (6 downto 0);
           Reg7 : out STD_LOGIC_VECTOR(3 downto 0);
           OVERFLOW : out STD_LOGIC;
           Anode : out STD_LOGIC_VECTOR(3 downto 0);
           ZERO : out STD_LOGIC);
end System;

architecture Behavioral of System is
component LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component SlowClock 
    Port ( ClkIn : in STD_LOGIC;
           ClkOut : out STD_LOGIC);
end component;

component NanoProcessor 
    Port ( CLK : in STD_LOGIC;
           RESETPUSH : in STD_LOGIC;
           ZERO : out STD_LOGIC;
           OVERFLOW : out STD_LOGIC;
           --inst0 : out STD_LOGIC_VECTOR(11 downto 0);
           
           R0 : out STD_LOGIC_VECTOR (3 downto 0);
           R1 : out STD_LOGIC_VECTOR (3 downto 0);
           R2 : out STD_LOGIC_VECTOR (3 downto 0);
           R3 : out STD_LOGIC_VECTOR (3 downto 0);
           R4 : out STD_LOGIC_VECTOR (3 downto 0);
           R5 : out STD_LOGIC_VECTOR (3 downto 0);
           R6 : out STD_LOGIC_VECTOR (3 downto 0);
           R7 : out STD_LOGIC_VECTOR (3 downto 0)
           --NEXT_IA: out STD_LOGIC_VECTOR (2 downto 0);
           --CURR_IA: out STD_LOGIC_VECTOR (2 downto 0)
           );
end component;

signal Reg7data : STD_LOGIC_VECTOR(3 downto 0);
signal ClkOut : STD_LOGIC;
 
begin
LUT : LUT_16_7
port map(
    address => Reg7data,
    data =>  Seg7
);

SlowClock0 : SlowClock
Port map ( ClkIn => Clk,
      ClkOut => ClkOut);
  
processor:NanoProcessor 
  Port map 
   ( CLK => ClkOut,
     RESETPUSH => ResetPush,
     ZERO => ZERO,
     OVERFLOW => OVERFLOW,
     R7 => Reg7data
     );
     
    --realclk <= ClkOut;

    Reg7<= Reg7data;
    Anode <= "1110";
end Behavioral;
