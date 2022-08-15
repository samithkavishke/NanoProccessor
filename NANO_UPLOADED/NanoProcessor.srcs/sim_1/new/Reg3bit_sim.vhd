----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 01:04:20 PM
-- Design Name: 
-- Module Name: Reg3bit_sim - Behavioral
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

entity Reg3bit_sim is
--  Port ( );
end Reg3bit_sim;

architecture Behavioral of Reg3bit_sim is

component Reg3bit
Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
       Res : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (2 downto 0);
       Clk : in STD_LOGIC;
       EN : in STD_LOGIC);
end component;

signal D : STD_LOGIC_VECTOR (2 downto 0);
signal Res : STD_LOGIC;
signal Q : STD_LOGIC_VECTOR (2 downto 0);
signal Clk : STD_LOGIC:= '1';
signal EN : STD_LOGIC;

begin
UUT : Reg3bit
Port map(
    D => D,
    Res => Res,
    Q => Q,
    Clk => Clk,
    EN => EN
);

process
begin
Clk <= not(Clk);
wait for 50 ns;
end process;

process 
begin
Res <= '1';
EN <= '1';
wait for 100ns;

Res <= '0';
D <= "010";
wait for 100ns;

D <= "011";
wait for 100ns;
end process;

end Behavioral;
