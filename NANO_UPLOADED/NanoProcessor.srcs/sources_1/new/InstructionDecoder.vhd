----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 11:08:45 AM
-- Design Name: 
-- Module Name: InstructionDecoder - Behavioral
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

entity InstructionDecoder is
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
end InstructionDecoder;

architecture Behavioral of InstructionDecoder is

signal typeId : std_logic_vector(1 downto 0);
signal firstReg : std_logic_vector(2 downto 0);
signal secondReg : std_logic_vector(2 downto 0);
signal valIn : std_logic_vector(3 downto 0);
signal JMP_Val: std_logic_vector(2 downto 0);

begin

typeId <= InBus(1 downto 0);
firstReg <= InBus(4 downto 2);
secondReg <= InBus(7 downto 5);
valIn <= InBus(11 downto 8);
JMP_Val <= InBus(11 downto 9);

process(JMPReg,typeId,firstReg,secondReg,valIn,JMP_Val) 
begin 

if (typeId ="00") then
    -- ADD    
    ASSelector <= '0'; -- for addition
    RegisterSelectorA <= firstReg;
    RegisterSelectorB <= secondReg;
    LoadSelector <= '1';
    RegEN <= firstReg;
    
elsif (typeId = "10") then
    --NEG
    ASSelector <= '1'; -- for substraction
    RegisterSelectorA <= "000"; -- value in the register0 is 0
    RegisterSelectorB <= firstReg;
    LoadSelector <= '1';
    RegEN <= firstReg;
    
elsif (typeId = "01") then
    --MOV
    ImmediateValue <= valIn;
    LoadSelector <= '0';
    RegEN <= firstReg;
    
    
elsif ( typeId = "11") then
    --JMP
    RegisterSelectorA <= firstReg;
    if( JMPReg = "0000") then
        JMPFlag <= '0'; -- take data from adder
        JMPAddress <= JMP_Val;
        
    end if;
    
end if;
end process;

InstructionType <= typeId;

end Behavioral;
