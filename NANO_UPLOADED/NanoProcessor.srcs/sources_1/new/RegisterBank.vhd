----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 09:34:27 AM
-- Design Name: 
-- Module Name: RegisterBank - Behavioral
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

entity RegisterBank is
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
end RegisterBank;

architecture Behavioral of RegisterBank is

component REG_4_BIT
Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
       EN : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Res : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Decoder_3_to_8
Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal Y : STD_LOGIC_VECTOR(7 downto 0);
signal IntermediateSignal : STD_LOGIC_VECTOR(7 downto 0);
signal RegInput : STD_LOGIC_VECTOR(31 downto 0);
signal InitData : STD_LOGIC_VECTOR (31 downto 0);
signal SRegInput : STD_LOGIC_VECTOR(3 downto 0);

begin

--Reg0 : Reg4bit
--port map(
   -- D => RegData,
--    EN => IntermediateSignal(0),
--    Clk => Clk,
 --   Res => Res,
 --   Q => QOutput(3 downto 0) 
--);

--QOutput(3 downto 0) <= "0000";
R0<= "0000";


Reg1 : REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(1) ,
    Clk => Clk,
    Res => Res,
    Q =>R1
);

Reg2 : REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(2) ,
    Clk => Clk,
    Res => Res,
    Q => R2 
);

Reg3 : REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(3) ,
    Clk => Clk,
    Res => Res,
    Q =>R3 
);

Reg4 : REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(4),
    Clk => Clk,
    Res => Res,
    Q => R4);

Reg5 :REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(5),
    Clk => Clk,
    Res => Res,
    Q => R5
);

Reg6 : REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(6),
    Clk => Clk,
    Res => Res,
    Q =>R6
);

Reg7 : REG_4_BIT
port map(
    D => RegData,
    EN => IntermediateSignal(7),
    Clk => Clk,
    Res => Res,
    Q =>R7
);

Decoder : Decoder_3_to_8
port map(
    I => RegEN,
    EN => '1',
    Y => Y
);

IntermediateSignal <=  Y;
--SRegInput(0) <= RegData(0) and not Res;
--SRegInput(1) <= RegData(1) and not Res;
--SRegInput(2) <= RegData(2) and not Res;
--SRegInput(3) <= RegData(3) and  not Res;

Intermediate <= IntermediateSignal;
--process(RegData,Res,RegInput,InitData) begin
--if ( Res = '0') then
--    RegInput(3 downto 0)   <= RegData;
--    RegInput(7 downto 4)   <= RegData;
--    RegInput(11 downto 8)  <= RegData;
--    RegInput(15 downto 12) <= RegData;
--    RegInput(19 downto 16) <= RegData;
--    RegInput(23 downto 20) <= RegData;
--    RegInput(27 downto 24) <= RegData;
--    RegInput(31 downto 28) <= RegData;
    
--elsif (Res = '1') then
--    RegInput <= InitData;
--end if;
--end process;

--InitData <= "00000000000000000000000000000000";
--QOutput <= RegInput;
end Behavioral;
