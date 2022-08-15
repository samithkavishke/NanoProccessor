----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 07:09:10 AM
-- Design Name: 
-- Module Name: ROMNew - Behavioral
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
use ieee.numeric_std.all;

entity ROMNew is
    Port ( memorySel : in STD_LOGIC_VECTOR (2 downto 0);
           InBus : out STD_LOGIC_VECTOR (11 downto 0));
end ROMNew;

architecture Behavioral of ROMNew is

component Decoder_3_to_8
Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal ROMSelector : std_logic_vector(7 downto 0);

type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);
signal instruction_ROM : rom_type := (
     "100010000001",  --MOV R1 1
     "100100000010",  --MOV R2 2
     "100110000011",  --MOV R3 3
     "001110010000",  --ADD R7 R1
     "001110100000",  --ADD R7 R2 
     "001110110000",  --ADD R7 R3
     "110000000110",  --JZR R0 6
     "000000000000"   
   
 );



--"100000010001",
--"010000001001",
--"110000011001",        
--"000001010000",
--"000011010000",
--"000010011100",        
--"000000000000",
--"000000000000"

begin
    InBus <= instruction_ROM(to_integer(unsigned(memorySel)));

end Behavioral;
