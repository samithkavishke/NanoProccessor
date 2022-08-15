library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end FA;

architecture Behavioral of FA is

component HA
    PORT (
    A,B: in STD_LOGIC;
    C_out,S : out STD_LOGIC);
end component;

signal C0, S0, C1, S1: STD_LOGIC;

begin

HA0 : HA
    PORT MAP(
    A => A,
    B => B,
    C_out => C0,
    S => S0
    );
    
    
HA1 : HA
        PORT MAP(
        A => S0,
        B => C_in,
        C_out => C1,
        S => S1
        );
        
        
S <= S1;
C_out <= C0 OR C1;



end Behavioral;
