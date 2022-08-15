----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 08:16:28 PM
-- Design Name: 
-- Module Name: Reg4bit_sim - Behavioral
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

entity Reg4bit_sim is
--  Port ( );
end Reg4bit_sim;

architecture Behavioral of Reg4bit_sim is

component Reg4bit
Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
       EN : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Res : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (3 downto 0);
signal EN : STD_LOGIC;
signal Clk : STD_LOGIC:='1';
signal Res : STD_LOGIC;
signal Q : STD_LOGIC_VECTOR (3 downto 0);

begin
UUT: Reg4bit
port map(
    D => D,
    EN => EN,
    Res => Res,
    Clk => Clk,
    Q => Q
);

process
begin
Clk <= not(Clk);
wait for 50ns;
end process;

process
begin
EN <= '1';
Res <= '1';
wait for 100ns;

EN <= '1';
Res <= '0';
D <= "0101";
wait for 100ns;

EN <= '0';
Res <= '0';
D <= "1101";
wait for 100ns;
end process;

end Behavioral;
