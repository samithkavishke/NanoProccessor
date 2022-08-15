----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 02:03:19 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

entity D_FF is
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC:='0';
           Qbar : out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

begin

process (Clk) begin
    if (rising_edge(Clk)) then     --Check for rising-edge of clock pulz
        if Res='1' then            --Clear output if reset is high
            Q<='0';
            Qbar<='1';
        else                       --Else output is same as input D
            Q<=D;
            Qbar<=not D;
        end if;
     end if;
end process;

end Behavioral;
