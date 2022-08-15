----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 09:07:41 AM
-- Design Name: 
-- Module Name: ControlUnit - Behavioral
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

entity ControlUnit is
Port ( --ROMInput : in STD_LOGIC_VECTOR (95 downto 0);
       --BankData : in STD_LOGIC_VECTOR(31 downto 0);
       Clk : in STD_LOGIC;
       ResetPush : in STD_LOGIC;
       ResetALL : in STD_LOGIC;
       Overflow : out STD_LOGIC;
       Zero : out STD_LOGIC;
       
       PICLKOUT0 : out STD_LOGIC;
       DVal : out STD_LOGIC_VECTOR(3 downto 0);
       ASVal : Out STD_LOGIC_VECTOR(3 downto 0);
       BankDataOutput : out STD_LOGIC_VECTOR( 31 downto 0);
       BankENAdd : out STD_LOGIC_VECTOR( 2 downto 0);
       BankDataInput : out STD_LOGIC_VECTOR(3 downto 0);
       InBusOutput : out STD_LOGIC_VECTOR(11 downto 0);
       mem: out STD_LOGIC_VECTOR(2 downto 0);
       jmpflag0 : out STD_LOGIC;
       --QOutput0 : out STD_LOGIC_VECTOR( 31 downto 0);

       RegSeven : out STD_LOGIC_VECTOR (3 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

component SlowClock is
    Port ( ClkIn : in STD_LOGIC;
           ClkOut : out STD_LOGIC);
end component;

component ROM
Port ( ROMInput : in STD_LOGIC_VECTOR (95 downto 0);
       Memory_Sel : in STD_LOGIC_VECTOR (2 downto 0);
       Res : in STD_LOGIC;
       Instruction_Out : out STD_LOGIC_VECTOR (11 downto 0);
       EN : in STD_LOGIC;
       Clk : in STD_LOGIC);
end component;

component VariableClock
Port ( ClkIn : in STD_LOGIC;
       ClkOut : out STD_LOGIC;
       Cycles : in Integer);
end component;

component ProgramIncrementor
Port ( JMPFlag : in STD_LOGIC;
      JMPAddress : in STD_LOGIC_VECTOR(2 downto 0);
      Reset : in STD_LOGIC;
      EN : in STD_LOGIC;
      Clk : in STD_LOGIC;
      MemorySelector : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component RegisterBank
Port ( EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           --QOutput : out STD_LOGIC_VECTOR (31 downto 0);           
           RegEN : in STD_LOGIC_VECTOR (2 downto 0);
           --InitData : in STD_LOGIC_VECTOR (31 downto 0);
           R0 : out STD_LOGIC_VECTOR(3 downto 0);
           R1 : out STD_LOGIC_VECTOR(3 downto 0);
           R2 : out STD_LOGIC_VECTOR(3 downto 0);
           R3 : out STD_LOGIC_VECTOR(3 downto 0);
           R4 : out STD_LOGIC_VECTOR(3 downto 0);
           R5 : out STD_LOGIC_VECTOR(3 downto 0);
           R6 : out STD_LOGIC_VECTOR(3 downto 0);
           R7 : out STD_LOGIC_VECTOR(3 downto 0);
        
           Intermediate : out STD_LOGIC_VECTOR(7 downto 0);
           RegData : in STD_LOGIC_VECTOR (3 downto 0));
end component;

component ASUnit
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       Ctrl : in STD_LOGIC;
       C_out : out STD_LOGIC;
       S : out STD_LOGIC_VECTOR (3 downto 0);
       ZeroFlag : out STD_LOGIC
       );
end component;

component Mux_8_to_1
Port ( D : in STD_LOGIC_VECTOR (31 downto 0);           
       S : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Mux_2_to_1_4bit
Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
       S : in STD_LOGIC;
       EN : in STD_LOGIC;           
       Y : out STD_LOGIC_VECTOR(3 downto 0));
end component;



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
       JMPAddress : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component ROMNew 
    Port ( memorySel : in STD_LOGIC_VECTOR (2 downto 0);
           InBus : out STD_LOGIC_VECTOR (11 downto 0));
end component;

component TSBMUX8_4bit 
    Port ( Sel : in STD_LOGIC_VECTOR (2 downto 0);
           R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component TSBMUX2_3bit 
    Port ( Sel : in STD_LOGIC;
           R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;
--signal D : STD_LOGIC_VECTOR(3 downto 0);
--signal I : STD_LOGIC_VECTOR(11 downto 0);
--signal M: STD_LOGIC_VECTOR(3 downto 0);
--signal R : STD_LOGIC_VECTOR(3 downto 0);


signal memSel : STD_LOGIC_VECTOR( 2 downto 0 ) := "000";
signal InBus0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
signal ROMEN : STD_LOGIC;
signal ROMClkOut : STD_LOGIC;

signal jmpFlag : STD_LOGIC:= '0';
signal PIInputAddress : STD_LOGIC_VECTOR(2 downto 0);
signal PIEN : STD_LOGIC:='1';
signal PIClkOut : STD_LOGIC;

signal BankEN : STD_LOGIC:='1';
signal BankClkOut : STD_LOGIC;
signal BankOutput : STD_LOGIC_VECTOR(31 downto 0);
signal BankInput : STD_LOGIC_VECTOR(2 downto 0);

signal ASClkOut : STD_LOGIC;
signal MUXAOutput : STD_LOGIC_VECTOR(3 downto 0);
signal MUXBOutput : STD_LOGIC_VECTOR(3 downto 0);
signal ASSel : STD_LOGIC;
signal ASUnitOut : STD_LOGIC_VECTOR( 3 downto 0);

signal MUXASel : STD_LOGIC_VECTOR(2 downto 0);
signal MUXBSel : STD_LOGIC_VECTOR(2 downto 0);
signal MUXAEN : STD_LOGIC:='1';
signal MUXBEN : STD_LOGIC:='1';

signal MUXCSel: STD_LOGIC;
signal MUXCEN : STD_LOGIC:='1';
signal DecoderVal : STD_LOGIC_VECTOR(3 downto 0);
signal MUXCOutput : STD_LOGIC_VECTOR(3 downto 0);

signal IDClkOut : STD_LOGIC;
signal IDEN : STD_LOGIC:='1';
signal InsType : STD_LOGIC_VECTOR(1 downto 0);

begin

--- ROM and ROM Clk -----------------------------------------------------------------------------------------

--SlowClk : SlowClock
--port map(
--    ClkIn => Clk,
--    ClkOut => PIClkOut
--);

ROM0 : ROMNew
port map(
    memorySel => memSel,
    InBus => InBus0
);

--ROM0 : ROM
--port map(
--    ROMInput => ROMInput,
--    Memory_Sel => memSel,
--    Res => '0',
--    Instruction_Out => InBus0,
--    EN => ROMEN,
--    Clk => ROMClkOut
--);

------------------------------------------------------------------------------------------------------------

--- Program Incrementor ------------------------------------------------------------------------------------
PIClk : VariableClock
port map(
    ClkIn => Clk,
    ClkOut => PIClkOut,
    Cycles => 4
);

PI : ProgramIncrementor
Port map (
    JMPFlag => jmpFlag,
    JMPAddress => PIInputAddress,
    Reset => ResetPush,
    EN => PIEN,
    Clk => PIClkOut,
    MemorySelector => memSel);

------------------------------------------------------------------------------------------------------------

--- Register Bank ------------------------------------------------------------------------------------------
--BankClk : VariableClock
--port map(
--    ClkIn => Clk,
--    ClkOut => BankClkOut,
--    Cycles => 5 );

RegBank : RegisterBank
Port map ( EN => '1',
           Clk => PIClkOut,
           Res => ResetPush,
           --QOutput => BankOutput,  
           R0=> BankOutput(3 downto 0),
           R1=> BankOutput(7 downto 4),        
           R2=> BankOutput(11 downto 8),        
           R3=> BankOutput(15 downto 12),        
           R4=> BankOutput(19 downto 16),        
           R5=> BankOutput(23 downto 20),        
           R6=> BankOutput(27 downto 24),        
           R7=> BankOutput(31 downto 28),        

           RegEN => BankInput,
           --InitData => BankData,
           RegData => MUXCOutput);
-------------------------------------------------------------------------------------------------------------

--- ASUnit --------------------------------------------------------------------------------------------------


ASUnit0 : ASUnit
Port map  ( 
       A => MUXAOutput,
       B => MUXBOutput,
       Ctrl => ASSel,
       C_out => Overflow, --need to be changed
       S => ASUnitOut,
       ZeroFlag => Zero
       );
       
-------------------------------------------------------------------------------------------------------------

--- MUXA and MUXB -------------------------------------------------------------------------------------------

--MUXA : Mux_8_to_1
--port map ( 
--       D => BankOutput,         
--       S => MUXASel,
--       EN => MUXAEN,
--       Y => MUXAOutput);

--MUXB : Mux_8_to_1
--port map ( 
  --     D => BankOutput,         
      -- S => MUXBSel,
    --   EN => MUXBEN,
      -- Y => MUXBOutput);
-------------------------------------------------------------------------------------------------------------

--- MUXC ----------------------------------------------------------------------------------------------------

--MUXC : Mux_2_to_1_4bit
--port map ( 
--       D(3 downto 0) => ASUnitOut , 
--       D(7 downto 4) => DecoderVal,        
--       S => MUXCSel,
--       EN => MUXCEN,
--       Y => MUXCOutput);

MUXC0 :TSBMUX2_3bit 
    Port map
    ( Sel => MUXCSel, 
       R0 => ASUnitOut,
       R1 => DecoderVal,
       Q => MUXCOutput);

-------------------------------------------------------------------------------------------------------------

----- MUX ------------------------------------------------------------------------------------------------
MUXA0 :TSBMUX8_4bit 
Port map ( Sel => MUXASel,
       R0 => BankOutput(3 downto 0),
       R1 => BankOutput(7 downto 4),
       R2 => BankOutput(11 downto 8),
       R3 => BankOutput(15 downto 12),
       R4 => BankOutput(19 downto 16),
       R5 => BankOutput(23 downto 20),
       R6 => BankOutput(27 downto 24),
       R7 => BankOutput(31 downto 28),
       Q =>MUXAOutput);


MUXB0 :TSBMUX8_4bit 
Port map ( Sel => MUXBSel,
       R0 => BankOutput(3 downto 0),
       R1 => BankOutput(7 downto 4),
       R2 => BankOutput(11 downto 8),
       R3 => BankOutput(15 downto 12),
       R4 => BankOutput(19 downto 16),
       R5 => BankOutput(23 downto 20),
       R6 => BankOutput(27 downto 24),
       R7 => BankOutput(31 downto 28),
       Q =>MUXBOutput);

----------------------------------------------------------------------------------------------------------



--- Instruction Decoder ------------------------------------------------------------------------------------
       
Decoder : InstructionDecoderNew
Port map ( InBus => InBus0,
           JMPRegVal => MUXAOutput,
           RegEN => BankInput,
           LoadSelector => MUXCSel,
           ImmediateValue => DecoderVal,
           MUXAAddress => MUXASel,
           MUXBAddress => MUXBSel,
           ASSel => ASSel,
           JMPFlag => jmpFlag,
           JMPAddress => PIInputAddress);
       
--InsDecoder:InstructionDecoderNew
--Port map ( Clk => IDClkOut,
--           EN => IDEN,
--           InBus =>InBus0,
--           JMPReg => MUXAOutput,--input taken form ASUnit
--           RegEN => BankInput,
--          LoadSelector => MUXCSel,
--           ImmediateValue => DecoderVal,
--           RegisterSelectorA => MUXASel,
--          RegisterSelectorB => MUXBSel,
--           JMPFlag => jmpFlag,
--           JMPAddress => PIInputAddress,
--           InstructionType => InsType);
-------------------------------------------------------------------------------------------------------------
RegSeven <= BankOutput(31 downto 28);

BankENAdd <= BankInput;
mem <= memSel;
jmpflag0 <= jmpFlag;
--QOutput0 <= BankOutput;
InBusOutput<= InBus0;
BankDataInput <= MUXCOutput;
BankDataOutput <= BankOutput;
PICLKOUT0 <= PIClkOut;


DVal <= DecoderVal;
ASVal <= ASUnitOut;
end Behavioral;
