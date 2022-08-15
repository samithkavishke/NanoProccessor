----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 08:49:19 AM
-- Design Name: 
-- Module Name: VariableClock_sim - Behavioral
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

entity VariableClock_sim is
--  Port ( );
end VariableClock_sim;

architecture Behavioral of VariableClock_sim is

component VariableClock
Port(ClkIn : in STD_LOGIC;
     ClkOut : out STD_LOGIC;
     Cycles : in Integer);
end component;
 
signal ClkIn : STD_LOGIC:='0';
signal ClkOut : STD_LOGIC;
signal Cycles : Integer:=4; 
 
begin
UUT: VariableClock
port map(
    ClkIn => ClkIn,
    ClkOut => ClkOut,
    Cycles => Cycles
);

process begin
ClkIn <= not(ClkIn);
wait for 2ns;

Cycles <= 6;
end process;

end Behavioral;
