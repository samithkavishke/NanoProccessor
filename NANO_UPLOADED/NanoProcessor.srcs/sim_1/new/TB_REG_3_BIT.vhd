----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2022 07:44:22 AM
-- Design Name: 
-- Module Name: TB_REG_3_BIT - Behavioral
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

entity TB_REG_3_BIT is
--  Port ( );
end TB_REG_3_BIT;

architecture Behavioral of TB_REG_3_BIT is

component REG_3_BIT 
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0):="000");
end component;

signal D : STD_LOGIC_VECTOR (2 downto 0);
signal Res : STD_LOGIC;
signal Clk : STD_LOGIC:='1';
signal Q : STD_LOGIC_VECTOR (2 downto 0);

begin
UUT : REG_3_BIT
port map(
    D => D,
    Res =>Res,
    Clk => Clk,
    Q => Q
);

process begin
Clk <= not Clk;
wait for 20ns;
end process;

process begin
 D<= "010";
 wait for 200ns;
 
 D<= "001";
 Res <= '1';
 wait for 50ns;
end process;
end Behavioral;
