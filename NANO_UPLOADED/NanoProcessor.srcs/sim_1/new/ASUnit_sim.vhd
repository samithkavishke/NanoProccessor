----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 10:40:47 PM
-- Design Name: 
-- Module Name: ASUnit_sim - Behavioral
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

entity ASUnit_sim is
--  Port ( );
end ASUnit_sim;

architecture Behavioral of ASUnit_sim is

component ASUnit
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       Ctrl : in STD_LOGIC;
       C_out : out STD_LOGIC;
       S : out STD_LOGIC_VECTOR (3 downto 0);
       ZeroFlag : out STD_LOGIC);
end component;

signal A : STD_LOGIC_VECTOR (3 downto 0);
signal B : STD_LOGIC_VECTOR (3 downto 0);
signal Ctrl : STD_LOGIC;
signal C_out : STD_LOGIC;
signal S : STD_LOGIC_VECTOR (3 downto 0);
signal  ZeroFlag : STD_LOGIC;
begin

UUT: ASUnit
port map(
    A => A,
    B => B,
    Ctrl => Ctrl,
    C_out => C_out,
    S => S,
    ZeroFlag => ZeroFlag
);

process begin
A <= "0010";
B <= "0100";
Ctrl <= '1';
wait for 100ns;

A <= "0010";
B <= "0100";
Ctrl <= '0';
wait for 100ns;

end process;

end Behavioral;
