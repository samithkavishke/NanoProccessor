----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 06:44:20 AM
-- Design Name: 
-- Module Name: InstructionDecoderNew_sim - Behavioral
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

entity InstructionDecoderNew_sim is
--  Port ( );
end InstructionDecoderNew_sim;

architecture Behavioral of InstructionDecoderNew_sim is
component InstructionDecoderNew
    Port ( InBus : in STD_LOGIC_VECTOR (11 downto 0);
           JMPRegVal : in STD_LOGIC_VECTOR(3 downto 0);
           RegEN : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelector : out STD_LOGIC;
           ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           MUXAAddress : out STD_LOGIC_VECTOR (2 downto 0);
           MUXBAddress : out STD_LOGIC_VECTOR (2 downto 0);
           ASSel : out STD_LOGIC;
           JMPFlag : out STD_LOGIC;
           typeIdOutput : out STD_LOGIC_VECTOR(1 downto 0);
           JMPAddress : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal InBus : STD_LOGIC_VECTOR (11 downto 0);
signal JMPRegVal : STD_LOGIC_VECTOR(3 downto 0);
signal RegEN : STD_LOGIC_VECTOR (2 downto 0);
signal LoadSelector : STD_LOGIC;
signal ImmediateValue : STD_LOGIC_VECTOR (3 downto 0);
signal MUXAAddress : STD_LOGIC_VECTOR (2 downto 0);
signal MUXBAddress : STD_LOGIC_VECTOR (2 downto 0);
signal ASSel : STD_LOGIC;
signal JMPFlag : STD_LOGIC;
signal JMPAddress : STD_LOGIC_VECTOR (2 downto 0);
signal typeIdOutput : STD_LOGIC_VECTOR(1 downto 0);

begin
UUT: InstructionDecoderNew
port map(
    InBus => InBus,
    JMPRegVal => JMPRegVal,
    RegEN => RegEN,
    LoadSelector => LoadSelector,
    ImmediateValue => ImmediateValue,
    MUXAAddress => MUXAAddress,
    MUXBAddress => MUXBAddress,
    ASSel => ASSel,
    JMPFlag => JMPFlag,
    typeIdOutput => typeIdOutput,
    JMPAddress => JMPAddress
    
);

process begin

InBus <=  "100000010001";
wait for 100ns;

InBus <=  "010000001001";
wait for 100ns;

InBus <= "110000011001";
wait for 100ns;

JMPRegVal <= "0100";
InBus <= "000001010000";
wait for 100ns;

InBus <= "000011010000";
wait for 100ns;

InBus <= "000010011100";
wait for 100ns;

end process;

end Behavioral;
