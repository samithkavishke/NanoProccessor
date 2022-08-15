----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 08:14:01 AM
-- Design Name: 
-- Module Name: ProgramIncrementor_sim - Behavioral
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

entity ProgramIncrementor_sim is
--  Port ( );
end ProgramIncrementor_sim;

architecture Behavioral of ProgramIncrementor_sim is
component ProgramIncrementor
Port ( JMPFlag : in STD_LOGIC;
       JMPAddress : in STD_LOGIC_VECTOR(2 downto 0);
       Reset : in STD_LOGIC;
       EN : in STD_LOGIC;
       Clk : in STD_LOGIC;
       MemorySelector : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal JMPFlag : STD_LOGIC;
signal JMPAddress : STD_LOGIC_VECTOR(2 downto 0);
signal Reset : STD_LOGIC;
signal EN : STD_LOGIC;
signal Clk : STD_LOGIC := '1';
signal MemorySelector : STD_LOGIC_VECTOR (2 downto 0);

begin
UUT: ProgramIncrementor
port map(
      JMPFlag => JMPFlag,
      JMPAddress => JMPAddress,
      Reset => Reset,
      EN => EN,
      Clk => Clk,
      MemorySelector => MemorySelector
);

process begin
Clk <= not(Clk);
wait for 18ns;
end process;

process begin

EN <= '1';
JMPFlag <= '0';
Reset <= '1';
JMPAddress <= "110";
wait for 100ns;

EN <= '1';
JMPFlag <= '0';
Reset <= '0';
JMPAddress <= "110";
wait for 100ns;

EN <= '1';
JMPFlag <= '0';
Reset <= '0';
JMPAddress <= "110";
wait for 100ns;

EN <= '1';
JMPFlag <= '1';
Reset <= '0';
JMPAddress <= "101";
wait for 100ns;


end process;

end Behavioral;
