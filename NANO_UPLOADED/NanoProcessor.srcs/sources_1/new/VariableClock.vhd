----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 08:36:29 AM
-- Design Name: 
-- Module Name: VariableClock - Behavioral
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

entity VariableClock is
    Port ( ClkIn : in STD_LOGIC;
           ClkOut : out STD_LOGIC:='0';
           Cycles : in Integer);
end VariableClock;

architecture Behavioral of VariableClock is

signal count : integer :=1;
signal Clk_status : STD_LOGIC :='0';

begin
    process(ClkIn)
    begin
    if (rising_edge(ClkIn)) then
        count <= count+1;
        if(count = Cycles) then
            Clk_status <= not Clk_status;
            ClkOut <= not Clk_status;
            count <= 1;
        end if;
    end if;
    end process;
end Behavioral;


