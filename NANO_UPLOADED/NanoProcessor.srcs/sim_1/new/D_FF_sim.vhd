----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 12:43:54 PM
-- Design Name: 
-- Module Name: D_FF_sim - Behavioral
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

entity D_FF_sim is
--  Port ( );
end D_FF_sim;

architecture Behavioral of D_FF_sim is

component D_FF
Port ( D : in STD_LOGIC;
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC;
       Qbar : out STD_LOGIC);
end component;

signal D : STD_LOGIC;
signal Res : STD_LOGIC;
signal Clk : STD_LOGIC:='0';
signal Q : STD_LOGIC;
signal Qbar : STD_LOGIC;

begin
UUT: D_FF
port map(
    D => D,
    Res => Res,
    Clk => Clk,
    Q => Q,
    Qbar => Qbar
);

process
begin
Clk <= not(Clk);
wait for 50ns;
end process;

process
begin

Res <= '1';
wait for 100ns;
Res <= '0';
D <= '1';
wait for 100ns; 
end process;
end Behavioral;
