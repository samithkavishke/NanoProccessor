----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 08:40:47 AM
-- Design Name: 
-- Module Name: Adder_3_bit - Behavioral
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

entity Adder_3_bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           F : out STD_LOGIC_VECTOR (2 downto 0));
end Adder_3_bit;

architecture Behavioral of Adder_3_bit is

component FA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component;

signal C1, C2, C3, X0, X1, X2: STD_LOGIC;
signal B: std_logic_vector(2 downto 0);
begin
FA0 : FA
    PORT MAP(
    C_in => '0',
    A => A(0),
    B => B(0),
    S =>  F(0),
    C_out => C1
    ); 
    

FA1 : FA
    PORT MAP(
    C_in => C1,
    A => A(1),
    B => B(1),
    S => F(1),
    C_out => C2
    );

FA2 : FA
    PORT MAP(
    C_in => C2,
    A => A(2),
    B => B(2),
    S => F(2),
    C_out => C3
    );

B <= "001";

    
end Behavioral;
