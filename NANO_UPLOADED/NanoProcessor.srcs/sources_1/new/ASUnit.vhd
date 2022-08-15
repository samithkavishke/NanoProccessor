library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ASUnit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Ctrl : in STD_LOGIC;
           C_out : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           ZeroFlag : out STD_LOGIC);
           
end ASUnit;

architecture Behavioral of ASUnit is

component FA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);

end component;

signal C1, C2, C3, X0, X1, X2, X3 : STD_LOGIC;


begin

FA0 : FA
    PORT MAP(
    C_in => Ctrl,
    A => A(0),
    B => X0,
    C_out => C1
    );

FA1 : FA
    PORT MAP(
    C_in => C1,
    A => A(1),
    B => X1,
    C_out => C2
    );

FA2 : FA
    PORT MAP(
    C_in => C2,
    A => A(2),
    B => X2,
    C_out => C3
    );

FA3 : FA
    PORT MAP(
    C_in => C3,
    A => A(3),
    B => X3,
    C_out => C_out
    );

X0 <= B(0) XOR Ctrl;
X1 <= B(1) XOR Ctrl;
X2 <= B(2) XOR Ctrl;
X3 <= B(3) XOR Ctrl;

S(0) <= X0 XOR A(0) XOR Ctrl;
S(1) <= X1 XOR A(1) XOR C1;
S(2) <= X2 XOR A(2) XOR C2;
S(3) <= X3 XOR A(3) XOR C3;

ZeroFlag <=not((X0 XOR A(0) XOR Ctrl) or
            (X1 XOR A(1) XOR C1) or
            (X2 XOR A(2) XOR C2) or
            (X3 XOR A(3) XOR C3));



end Behavioral;
