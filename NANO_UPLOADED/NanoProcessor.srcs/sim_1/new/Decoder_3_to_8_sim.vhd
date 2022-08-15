----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/17/2022 08:22:01 PM
-- Design Name: 
-- Module Name: Decoder_3_to_8_sim - Behavioral
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

entity Decoder_3_to_8_sim is
--  Port ( );
end Decoder_3_to_8_sim;

architecture Behavioral of Decoder_3_to_8_sim is
component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal I : STD_LOGIC_VECTOR (2 downto 0);
signal EN : STD_LOGIC;
signal Y : STD_LOGIC_VECTOR (7 downto 0);

begin
UUT: Decoder_3_to_8
port map(
    I => I,
    EN => EN,
    Y => Y
);

process begin
EN <= '1';
I <= "101";
wait for 100ns;
end process;
end Behavioral;
