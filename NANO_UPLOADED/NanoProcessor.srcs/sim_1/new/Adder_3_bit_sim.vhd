----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 12:16:48 AM
-- Design Name: 
-- Module Name: Adder_3_bit_sim - Behavioral
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

entity Adder_3_bit_sim is
--  Port ( );
end Adder_3_bit_sim;

architecture Behavioral of Adder_3_bit_sim is

component Adder_3_bit
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       F : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal A : STD_LOGIC_VECTOR(2 downto 0);
signal  EN : STD_LOGIC;
signal F : STD_LOGIC_VECTOR (2 downto 0);

begin
UUT: Adder_3_bit
port map(
    A => A,
    EN => EN,
    F => F
);

process begin
A <= "010";
EN <= '1';
wait for 100ns;

A <= "011";
wait for 100ns;
end process;

end Behavioral;
