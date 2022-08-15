----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/07/2022 08:25:31 PM
-- Design Name: 
-- Module Name: Mux_2_to_1_4bit - Behavioral
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

entity Mux_2_to_1_4bit is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC;
           EN : in STD_LOGIC;           
           Y : out STD_LOGIC_VECTOR(3 downto 0));
end Mux_2_to_1_4bit;

architecture Behavioral of Mux_2_to_1_4bit is

begin

--As example for S=0 will be given the Y as last four digits of D
process(D,S,EN)
begin
if (EN='1' and S='1') then
    Y<=D(3 downto 0);
elsif (EN='1' and S='0') then
    Y<=D(7 downto 4);  
else
    Y<="0000";
end if;

end process;
end Behavioral;
