----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 03:36:24 PM
-- Design Name: 
-- Module Name: InstructionDecoder_sim - Behavioral
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

entity InstructionDecoder_sim is
--  Port ( );
end InstructionDecoder_sim;

architecture Behavioral of InstructionDecoder_sim is
component InstructionDecoder
Port ( Clk : in STD_LOGIC;
       EN : in STD_LOGIC;
       InBus : in STD_LOGIC_VECTOR (11 downto 0);
       JMPReg : in STD_LOGIC_VECTOR (3 downto 0);
       RegEN : out STD_LOGIC_VECTOR (2 downto 0);
       ASSelector : out STD_LOGIC;
       LoadSelector : out STD_LOGIC;
       ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
       RegisterSelectorA : out STD_LOGIC_VECTOR (2 downto 0);
       RegisterSelectorB : out STD_LOGIC_VECTOR (2 downto 0);
       JMPFlag : out STD_LOGIC;
       JMPAddress : out STD_LOGIC_VECTOR (2 downto 0);
       InstructionType : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal Clk : STD_LOGIC:='1';
signal EN : STD_LOGIC;
signal InBus : STD_LOGIC_VECTOR (11 downto 0);
signal JMPReg : STD_LOGIC_VECTOR (3 downto 0);
signal RegEN : STD_LOGIC_VECTOR (2 downto 0);
signal ASSelector : STD_LOGIC;
signal LoadSelector : STD_LOGIC;
signal ImmediateValue : STD_LOGIC_VECTOR (3 downto 0);
signal RegisterSelectorA : STD_LOGIC_VECTOR (2 downto 0);
signal RegisterSelectorB : STD_LOGIC_VECTOR (2 downto 0);
signal JMPFlag : STD_LOGIC;
signal JMPAddress : STD_LOGIC_VECTOR (2 downto 0);
signal InstructionType : STD_LOGIC_VECTOR (1 downto 0);

begin
UUT: InstructionDecoder
port map(
     Clk => Clk,
     EN => EN,
     InBus => InBus,
     JMPReg => JMPReg,
     RegEN => RegEN,
     ASSelector => ASSelector,
     LoadSelector => LoadSelector,
     ImmediateValue => ImmediateValue,
     RegisterSelectorA => RegisterSelectorA,
     RegisterSelectorB => RegisterSelectorB,
     JMPFlag => JMPFlag,
     JMPAddress => JMPAddress,
     InstructionType => InstructionType);
     
process begin

EN <= '1';
InBus <=  "100000010001";
wait for 100ns;

InBus <=  "010000001001";
wait for 100ns;

InBus <= "110000011001";
wait for 100ns;

JMPReg <= "0100";
InBus <= "000001010000";
wait for 100ns;

InBus <= "000011010000";
wait for 100ns;

InBus <= "000010011100";
wait for 100ns;

end process;

end Behavioral;
