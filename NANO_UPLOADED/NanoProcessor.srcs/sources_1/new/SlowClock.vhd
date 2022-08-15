----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/25/2022 08:15:21 PM
-- Design Name: 
-- Module Name: SlowClock - Behavioral
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

entity SlowClock is
    Port ( ClkIn : in STD_LOGIC;
           ClkOut : out STD_LOGIC);
end SlowClock;


architecture Behavioral of SlowClock is
signal Count : integer := 1;
signal clockStatus : STD_LOGIC:= '0';

begin
process(ClkIn) 
    begin
    if rising_edge(ClkIn) then
        Count <= Count+1;
        if (Count = 30000000) then
            clockStatus <= not clockStatus;
            ClkOut <= not clockStatus;
            Count <=1;
        end if;
    end if;
end process;
end Behavioral;
