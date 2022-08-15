----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2022 08:45:45 PM
-- Design Name: 
-- Module Name: SlowClock_sim - Behavioral
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

entity SlowClock_sim is
--  Port ( );
end SlowClock_sim;

architecture Behavioral of SlowClock_sim is

component SlowClock
Port ( ClkIn : in STD_LOGIC;
       ClkOut : out STD_LOGIC);
end component;

signal ClkIn : STD_LOGIC :='1';
signal ClkOut : STD_LOGIC:='0';

begin
UUT: SlowClock
port map(
    ClkIn => ClkIn,
    ClkOut => ClkOut);
    
process begin
ClkIn <= not(ClkIn);
wait for 50ns;
end process;
    

end Behavioral;
