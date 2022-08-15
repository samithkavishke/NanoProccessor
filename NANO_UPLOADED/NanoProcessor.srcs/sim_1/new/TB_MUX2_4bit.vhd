----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/28/2022 10:26:42 PM
-- Design Name: 
-- Module Name: TB_MUX2_4bit - Behavioral
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

entity TB_MUX2_4bit is
--  Port ( );
end TB_MUX2_4bit;

architecture Behavioral of TB_MUX2_4bit is

component  MUX2_1_4bit
Port ( Sel : in STD_LOGIC;
       R0 : in STD_LOGIC_VECTOR (3 downto 0);
       R1 : in STD_LOGIC_VECTOR (3 downto 0);
       O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal Sel : STD_LOGIC;
signal R0 : STD_LOGIC_VECTOR (3 downto 0):="0000";
signal R1 : STD_LOGIC_VECTOR (3 downto 0):="0010";
signal O : STD_LOGIC_VECTOR (3 downto 0);

begin
UUT:MUX2_1_4bit
port map(
    Sel => Sel,
    R0 => R0,
    R1 => R1,
    O => O
);

process begin
Sel <= '1';
wait for 50ns;

Sel <= '0';
wait for 50ns;

end process;

end Behavioral;
