----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/17/2022 11:29:19 PM
-- Design Name: 
-- Module Name: Mux_8_to_1_sim - Behavioral
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

entity Mux_8_to_1_sim is
--  Port ( );
end Mux_8_to_1_sim;

architecture Behavioral of Mux_8_to_1_sim is

component Mux_8_to_1
 Port ( D : in STD_LOGIC_VECTOR (31 downto 0);           
        S : in STD_LOGIC_VECTOR (2 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (31 downto 0);           
signal S : STD_LOGIC_VECTOR (2 downto 0);
signal EN : STD_LOGIC;
signal Y : STD_LOGIC_VECTOR (3 downto 0);

begin
UUT : Mux_8_to_1
port map(
    D => D,
    S => S,
    EN => EN,
    Y => Y
);

process begin
D <= "00000001001000110100010101100111";
S <= "010";
EN <= '1';
wait for 100ns;

D <= "00000001001000110100010101100111";
S <= "011";
wait for 100ns;

S <= "111";
wait for 100ns;
end process;

end Behavioral;
