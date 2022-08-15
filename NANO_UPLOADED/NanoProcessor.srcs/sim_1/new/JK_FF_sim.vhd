----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/23/2022 12:44:42 PM
-- Design Name: 
-- Module Name: JK_FF_sim - Behavioral
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

entity JK_FF_sim is
--  Port ( );
end JK_FF_sim;

architecture Behavioral of JK_FF_sim is

component JK_FF
port( J,K: in  std_logic;
       Reset: in std_logic;
       Clock_enable: in std_logic;
       Clock: in std_logic;
       Output: out std_logic);
end component;

signal J,K: std_logic;
signal Reset: std_logic;
signal Clock_enable: std_logic:='1';
signal Clock: std_logic := '1';
signal Output: std_logic;

begin
UUT : JK_FF
port map(
     J => J,
     K => K,
     Reset => Reset,
     Clock_enable => Clock_enable,
     Clock => Clock,
     Output => Output);
     

process begin
Clock <= not(Clock);
wait for 5ns;
end process;

process begin
Reset <= '1';
J <= '0';
K <= '0';
wait for 50ns;

Reset <= '0';
J <= '0';
K <= '0';
wait for 100ns;

J <= '1';
K <= '1';
wait for 100ns;

J <= '1';
K <= '0';
wait for 100ns;

J <= '0';
K <= '1';
wait for 100ns;
end process;


end Behavioral;
