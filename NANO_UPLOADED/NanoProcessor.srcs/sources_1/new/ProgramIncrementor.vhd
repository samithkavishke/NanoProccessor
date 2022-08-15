----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 09:34:27 AM
-- Design Name: 
-- Module Name: ProgramIncrementor - Behavioral
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

entity ProgramIncrementor is
    Port ( JMPFlag : in STD_LOGIC;
           JMPAddress : in STD_LOGIC_VECTOR(2 downto 0);
           Reset : in STD_LOGIC;
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           MemorySelector : out STD_LOGIC_VECTOR (2 downto 0));
end ProgramIncrementor;

architecture Behavioral of ProgramIncrementor is

component Adder_3_bit
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       F : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component Reg3bit
Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
       Res : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (2 downto 0);
       Clk : in STD_LOGIC;
       EN : in STD_LOGIC);
end component;

component Mux_2_to_1_3bit
Port ( D : in STD_LOGIC_VECTOR (5 downto 0);
       S : in STD_LOGIC;
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal MuxOut,MuxIn,InOutSignal :STD_LOGIC_VECTOR(2 downto 0);

begin
ProgramCounter : Reg3bit
port map(
    D => MuxOut,
    Res => Reset,
    Clk => Clk,
    EN => EN,
    Q => InOutSignal
    
);

Adder: Adder_3_bit
port map(
    A => InOutSignal,
    EN => EN,
    F => MuxIn
);

Mux : Mux_2_to_1_3bit
port map(
    D(2 downto 0) => JMPAddress,
    D(5 downto 3) => MuxIn,
    S => JMPFlag,
    EN => EN,
    Y => MuxOut
    
);

MemorySelector <= InOutSignal;

end Behavioral;
