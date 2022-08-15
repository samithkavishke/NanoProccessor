----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 06:50:56 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port (-- D : in STD_LOGIC_VECTOR (31 downto 0); 
           R0 : in STD_LOGIC_VECTOR(3 downto 0);          
           R1 : in STD_LOGIC_VECTOR(3 downto 0);          
           R2 : in STD_LOGIC_VECTOR(3 downto 0);          
           R3 : in STD_LOGIC_VECTOR(3 downto 0);          
           R4 : in STD_LOGIC_VECTOR(3 downto 0);          
           R5 : in STD_LOGIC_VECTOR(3 downto 0);          
           R6 : in STD_LOGIC_VECTOR(3 downto 0);          
           R7 : in STD_LOGIC_VECTOR(3 downto 0);          

           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is


SIGNAL DY: STD_LOGIC_VECTOR(7 downto 0);

begin

--As example for S=000 will be given the Y as last four digits of D
--process(DY,EN,R0,R1,R2,R3,R4,R5,R6,R7)
--begin
--if (DY(0)='1' and EN='1') then
--    Y<=R0;
--end if;
--if (DY(1)='1' and EN='1') then
--    Y<=R1;
--end if;
--if (DY(2)='1' and EN='1') then
--    Y<=R2;
--end if;
--if (DY(3)='1' and EN='1') then
--    Y<=R3;
--end if;
--if (DY(4)='1' and EN='1') then
--    Y<=R4;
--end if;
--if (DY(5)='1' and EN='1') then
--    Y<=R5;
--end if;
--if (DY(6)='1' and EN='1') then
--    Y<=R6;
--end if;
--if (DY(7)='1' and EN='1') then
--    Y<=R7;
--end if;     

--end process;   

Y <= R0 when Sel="000" else
     R1 when Sel="001" else
     R2 when Sel="010" else
     R3 when Sel="011" else
     R4 when Sel="100" else
     R5 when Sel="101" else
     R6 when Sel="110" else
     R7 when Sel="111" ;

end Behavioral;
