----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/23/2022 02:43:18 PM
-- Design Name: 
-- Module Name: Reg32bit - Behavioral
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

entity Reg32bit is
    Port ( Input : in STD_LOGIC_VECTOR (31 downto 0);
           Clk : in STD_LOGIC;
           EN : in STD_LOGIC;
           Res : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (31 downto 0));
end Reg32bit;

architecture Behavioral of Reg32bit is

component Reg4bit
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

reg0 : Reg4bit
port map(
    D => Input(3 downto 0),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(3 downto 0)
);

reg1 : Reg4bit
port map(
    D => Input(7 downto 4),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(7 downto 4)
);

reg2 : Reg4bit
port map(
    D => Input(11 downto 8),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(11 downto 8)
);

reg3 : Reg4bit
port map(
    D => Input(15 downto 12),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(15 downto 12)
);

reg4 : Reg4bit
port map(
    D => Input(19 downto 16),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(19 downto 16)
);

reg5 : Reg4bit
port map(
    D => Input(23 downto 20),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(23 downto 20)
);

reg6 : Reg4bit
port map(
    D => Input(27 downto 24),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(27 downto 24)
);

reg7 : Reg4bit
port map(
    D => Input(31 downto 28),
    EN => EN,
    Clk => Clk,
    Res => Res,
    Q => Output(31 downto 28)
);

end Behavioral;
