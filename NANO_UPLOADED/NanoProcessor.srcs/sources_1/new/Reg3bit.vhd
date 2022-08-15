----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 01:00:16 PM
-- Design Name: 
-- Module Name: Reg3bit - Behavioral
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

entity Reg3bit is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           EN : in STD_LOGIC);
end Reg3bit;

architecture Behavioral of Reg3bit is

component D_FF
Port ( D : in STD_LOGIC;
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC;
       Qbar : out STD_LOGIC);
end component;

signal Clk1 : STD_LOGIC;

begin

CLk1<= Clk and EN;

D_FF0 : D_FF
port map(
    D => D(0),
    Res => Res,
    Clk => Clk1,
    Q => Q(0)
);

D_FF1 : D_FF
port map(
    D => D(1),
    Res => Res,
    Clk => Clk1,
    Q => Q(1)
);

D_FF2 : D_FF
port map(
    D => D(2),
    Res => Res,
    Clk => Clk1,
    Q => Q(2)
);

end Behavioral;
