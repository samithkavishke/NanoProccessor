----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 10:07:33 PM
-- Design Name: 
-- Module Name: Reg12bit - Behavioral
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

entity Reg12bit is
    Port ( D : in STD_LOGIC_VECTOR (11 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           EN : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (11 downto 0));
end Reg12bit;

architecture Behavioral of Reg12bit is

component D_FF
 Port( D : in STD_LOGIC;
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC;
       Qbar : out STD_LOGIC);
end component;

signal Clk1 : STD_LOGIC;

begin

Clk1 <= Clk and (Res or EN);

D_FF_0 : D_FF
port map(
    D => D(0),
    Res => Res,
    Clk => Clk1,
    Q => Q(0)
);

D_FF_1 : D_FF
port map(
    D => D(1),
    Res => Res,
    Clk => Clk1,
    Q => Q(1)
);

D_FF_2 : D_FF
port map(
    D => D(2),
    Res => Res,
    Clk => Clk1,
    Q => Q(2)
);

D_FF_3 : D_FF
port map(
    D => D(3),
    Res => Res,
    Clk => Clk1,
    Q => Q(3)
);

D_FF_4 : D_FF
port map(
    D => D(4),
    Res => Res,
    Clk => Clk1,
    Q => Q(4)
);

D_FF_5 : D_FF
port map(
    D => D(5),
    Res => Res,
    Clk => Clk1,
    Q => Q(5)
);

D_FF_6 : D_FF
port map(
    D => D(6),
    Res => Res,
    Clk => Clk1,
    Q => Q(6)
);

D_FF_7 : D_FF
port map(
    D => D(7),
    Res => Res,
    Clk => Clk1,
    Q => Q(7)
);

D_FF_8 : D_FF
port map(
    D => D(8),
    Res => Res,
    Clk => Clk1,
    Q => Q(8)
);

D_FF_9 : D_FF
port map(
    D => D(9),
    Res => Res,
    Clk => Clk1,
    Q => Q(9)
);

D_FF_10 : D_FF
port map(
    D => D(10),
    Res => Res,
    Clk => Clk1,
    Q => Q(10)
);

D_FF_11 : D_FF
port map(
    D => D(11),
    Res => Res,
    Clk => Clk1,
    Q => Q(11)
);


end Behavioral;
