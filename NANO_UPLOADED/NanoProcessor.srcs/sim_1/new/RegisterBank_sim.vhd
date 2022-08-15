----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/17/2022 09:49:55 PM
-- Design Name: 
-- Module Name: RegisterBank_sim - Behavioral
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

entity RegisterBank_sim is
--  Port ( );
end RegisterBank_sim;

architecture Behavioral of RegisterBank_sim is

component RegisterBank
Port ( EN : in STD_LOGIC:='1';
       Clk : in STD_LOGIC;
       Res : in STD_LOGIC;
       QOutput : out STD_LOGIC_VECTOR (31 downto 0);
       RegEN : in STD_LOGIC_VECTOR (2 downto 0);
       --InitData : in STD_LOGIC_VECTOR (31 downto 0):="00000000000000000000000000000000";
       Intermediate : out STD_LOGIC_VECTOR(7 downto 0);
       RegData : in STD_LOGIC_VECTOR (3 downto 0));
end component;

signal EN : STD_LOGIC;
signal Clk : STD_LOGIC:='1';
signal Res : STD_LOGIC;
signal QOutput : STD_LOGIC_VECTOR (31 downto 0);
signal RegEN : STD_LOGIC_VECTOR (2 downto 0);
signal RegData : STD_LOGIC_VECTOR (3 downto 0);
signal Intermediate : STD_LOGIC_VECTOR(7 downto 0);


begin
UUT: RegisterBank
port map(
    EN => EN,
    Clk => Clk,
    Res => Res,
    QOutput => QOutput,
    RegEN => RegEN,
    RegData => RegData,
    Intermediate => Intermediate
);

process begin
Clk <= not(Clk);
wait for 50ns;
end process;

process begin

wait for 150ns;
EN <= '1';
RegEN <= "000";
Res <= '1';
wait for 150ns;

Res <= '0';
RegEN <= "011";
RegData <= "0001";
wait for 150ns;

RegEN <= "100";
RegData <= "0010";
wait for 150ns;

RegEN <= "101";
RegData <= "0111";
wait for 150ns;
 
RegEN <= "011";
RegData <= "0010";
wait for 150ns;
 
end process;
end Behavioral;
