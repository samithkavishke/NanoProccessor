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
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);           
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is

COMPONENT Decoder_3_to_8
    PORT(
        I:in STD_LOGIC_VECTOR(2 DOWNTO 0);
        EN:in STD_LOGIC;
        Y:out STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

SIGNAL DY: STD_LOGIC_VECTOR(7 downto 0);

begin

Decoder_3_to_8_0:Decoder_3_to_8
    PORT MAP(
        I=>S,
        EN=>EN,
        Y=>DY);

--As example for S=000 will be given the Y as last four digits of D
process(DY,EN,D)
begin
if (DY(0)='1' and EN='1') then
    Y<=D(3 downto 0);
end if;
if (DY(1)='1' and EN='1') then
    Y<=D(7 downto 4);
end if;
if (DY(2)='1' and EN='1') then
    Y<=D(11 downto 8);
end if;
if (DY(3)='1' and EN='1') then
    Y<=D(15 downto 12);
end if;
if (DY(4)='1' and EN='1') then
    Y<=D(19 downto 16);
end if;
if (DY(5)='1' and EN='1') then
    Y<=D(23 downto 20);
end if;
if (DY(6)='1' and EN='1') then
    Y<=D(27 downto 24);
end if;
if (DY(7)='1' and EN='1') then
    Y<=D(31 downto 28);
end if;     

end process;  
   
end Behavioral;
