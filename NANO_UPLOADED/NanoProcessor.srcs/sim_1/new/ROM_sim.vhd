----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 04:40:42 PM
-- Design Name: 
-- Module Name: ROM_sim - Behavioral
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

entity ROM_sim is
--  Port ( );
end ROM_sim;

architecture Behavioral of ROM_sim is

component ROM
 Port ( ROMInput : in STD_LOGIC_VECTOR (95 downto 0);
          Memory_Sel : in STD_LOGIC_VECTOR (2 downto 0);
          Res : in STD_LOGIC;
          Instruction_Out : out STD_LOGIC_VECTOR (11 downto 0);
          EN : in STD_LOGIC;
          Clk : in STD_LOGIC);
end component;

signal  ROMInput : STD_LOGIC_VECTOR (95 downto 0);
signal  Memory_Sel : STD_LOGIC_VECTOR (2 downto 0);
signal Instruction_Out : STD_LOGIC_VECTOR (11 downto 0);
signal EN :  STD_LOGIC;
signal Clk :  STD_LOGIC:='0';
signal Res : STD_LOGIC;

begin
UUT : ROM
port map(
    ROMInput => ROMInput,
    Res => Res,
    Memory_Sel => Memory_Sel,
    Instruction_Out => Instruction_Out,
    EN => EN,
    Clk => Clk
);
process
begin
Clk<= not(Clk);
wait for 20ns;
end process;

process 
begin
 
 Res <= '1';
 Memory_Sel <= "000";
 EN <= '1';
 wait for 100ns;

 Res <= '0';
 ROMInput <= "000000000000000000000001000000000010000000000011000000000100000000000101000000000110000000000111";
 Memory_Sel <= "100";
 --Instruction_Out <= "000000000000";
 wait for 100ns;
 
 Memory_Sel <= "010";
  --Instruction_Out <= "000000000001";

 wait for 100ns;
 
 
 --Instruction_Out <= "000000000010";

 Memory_Sel <= "011";
 wait for 100ns;
 
  Memory_Sel <= "101";
 wait for 100ns;
end process;


end Behavioral;
