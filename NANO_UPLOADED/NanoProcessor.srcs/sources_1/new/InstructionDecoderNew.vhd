----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/20/2022 12:52:26 AM
-- Design Name: 
-- Module Name: InstructionDecoderNew - Behavioral
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

entity InstructionDecoderNew is
    Port ( 
            InBus : in STD_LOGIC_VECTOR (11 downto 0);
           JMPRegVal : in STD_LOGIC_VECTOR(3 downto 0);
           
           --ADDENABLED : out STD_LOGIC;
           --RegBankSwitch : out STD_LOGIC;
           RegEN : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelector : out STD_LOGIC;
           ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           MUXAAddress : out STD_LOGIC_VECTOR (2 downto 0);
           MUXBAddress : out STD_LOGIC_VECTOR (2 downto 0);
           ASSel : out STD_LOGIC;
           JMPFlag : out STD_LOGIC;
           typeIdOutput : out STD_LOGIC_VECTOR(1 downto 0);
           JMPAddress : out STD_LOGIC_VECTOR (2 downto 0));
end InstructionDecoderNew;

architecture Behavioral of InstructionDecoderNew is

component Decoder_2_to_4
Port (I : in STD_LOGIC_VECTOR (1 downto 0);
      EN : in STD_LOGIC;
      Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal ADDEN : std_logic;
signal MOVEN : std_logic;
signal NEGEN : std_logic;
signal JNZEN : std_logic;


signal typeId : std_logic_vector(1 downto 0);
signal firstReg : std_logic_vector(2 downto 0);
signal secondReg : std_logic_vector(2 downto 0);
signal valIn : std_logic_vector(3 downto 0);
signal JMP_Val: std_logic_vector(2 downto 0);
signal JMPCHECK : STD_LOGIC;

begin

--typeId <= InBus(1 downto 0);
--firstReg <= InBus(4 downto 2);
--secondReg <= InBus(7 downto 5);
--valIn <= InBus(11 downto 8);
--JMP_Val <= InBus(11 downto 9);

typeId <= InBus(11 downto 10);
firstReg <= InBus(9 downto 7);
secondReg <= InBus(6 downto 4);
valIn <= InBus(3 downto 0);
JMP_Val <= InBus(2 downto 0);

decoder : Decoder_2_to_4
port map(
    I => typeId,
    EN => '1',
    Y(0) => ADDEN,
    Y(1) => NEGEN,
    Y(2) => MOVEN,
    Y(3) => JNZEN
);

   --RegEN(0) <= (MOVEN or NEGEN or ADDEN) and firstReg(0);
   --RegEN(1) <= (MOVEN or NEGEN or ADDEN) and firstReg(1); 
   --RegEN(2) <= (MOVEN or NEGEN or ADDEN) and firstReg(2);
   
   --RegBankSwitch <= MOVEN;
   
   RegEN(0) <= firstReg(0);
   RegEN(1) <= firstReg(1);
   RegEN(2) <= firstReg(2);
   
   LoadSelector <= (not(MOVEN) or NEGEN or ADDEN);
   ImmediateValue(0) <= valIn(0);
   ImmediateValue(1) <= valIn(1);
   ImmediateValue(2) <= valIn(2);
   ImmediateValue(3) <= valIn(3);
    
  
   MUXAAddress(0) <= (ADDEN and firstReg(0));
   MUXAAddress(1) <= (ADDEN and firstReg(1)); 
   MUXAAddress(2) <= (ADDEN and firstReg(2)) ;
   
      
   MUXBAddress(0) <= (ADDEN and secondReg(0)) or (NEGEN and firstReg(0));
   MUXBAddress(1) <= (ADDEN and secondReg(1)) or (NEGEN and firstReg(1)); 
   MUXBAddress(2) <= (ADDEN and secondReg(2)) or (NEGEN and firstReg(2));
  
   JMPCHECK <= not(JMPRegVal(0)) and not(JMPRegVal(1)) and not(JMPRegVal(2)) and not(JMPRegVal(3));

 
   ASSel <= NEGEN ;
   
    
   JMPFlag <=  not(JMPCHECK and JNZEN); 
   JMPAddress <= JMP_Val;
   
   
   typeIdOutput <= typeId;

   --ADDENABLED <= ADDEN;

end Behavioral;
