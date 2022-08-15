----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 10:13:42 PM
-- Design Name: 
-- Module Name: Reg12bit_sim - Behavioral
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

entity Reg12bit_sim is
--  Port ( );
end Reg12bit_sim;

architecture Behavioral of Reg12bit_sim is

component Reg12bit
 Port (D : in STD_LOGIC_VECTOR (11 downto 0);
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       EN : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (11 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (11 downto 0);
signal Res : STD_LOGIC;
signal Clk : STD_LOGIC := '1';
signal EN : STD_LOGIC;
signal Q : STD_LOGIC_VECTOR (11 downto 0);

begin
UUT : Reg12bit
port map(
    D => D,
    Res => Res,
    Clk => Clk,
    EN => EN,
    Q => Q
);

process begin
Clk <= not(Clk);
wait for 50ns;
end process;

process begin
EN <= '1';
Res <= '1';
wait for 100ns;

Res <= '0';
D <= "100010011011";
wait for 100ns;
end process;
end Behavioral;
