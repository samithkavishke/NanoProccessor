----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2018 03:59:26 AM
-- Design Name: 
-- Module Name: TB_Nano_Processor - Behavioral
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

entity NanoProcessorsim is
--  Port ( );
end NanoProcessorsim;

architecture Behavioral of NanoProcessorsim is
    component NanoProcessor
    Port ( CLK : in STD_LOGIC;
           RESETPUSH : in STD_LOGIC:='0';
           ZERO : out STD_LOGIC;
           --CARRY : out STD_LOGIC;
           OVERFLOW : out STD_LOGIC;
           
           instaddr : out STD_LOGIC_VECTOR(2 downto 0);
           Inst0 : out STD_LOGIC_VECTOR (11 downto 0);
           
           --SIGN : out STD_LOGIC;
           R0 : out STD_LOGIC_VECTOR (3 downto 0);
           R1 : out STD_LOGIC_VECTOR (3 downto 0);
           R2 : out STD_LOGIC_VECTOR (3 downto 0);
           R3 : out STD_LOGIC_VECTOR (3 downto 0);
           R4 : out STD_LOGIC_VECTOR (3 downto 0);
           R5 : out STD_LOGIC_VECTOR (3 downto 0);
           R6 : out STD_LOGIC_VECTOR (3 downto 0);
           R7 : out STD_LOGIC_VECTOR (3 downto 0);
          NEXT_IA: out STD_LOGIC_VECTOR (2 downto 0);
          CURR_IA: out STD_LOGIC_VECTOR (2 downto 0)
           );
    end component;
    
    signal instaddr : STD_LOGIC_VECTOR(2 downto 0);
    signal R7 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R6 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R5 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R4 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R3 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R2 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal CLK : STD_LOGIC := '0';
    signal RESETPUSH : STD_LOGIC:= '0';
    signal ZERO : STD_LOGIC := '0';
    signal OVERFLOW : STD_LOGIC := '0';
    signal NEXT_IA: STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal CURR_IA: STD_LOGIC_VECTOR (2 downto 0) := "000";
    
    signal Inst0 :STD_LOGIC_VECTOR (11 downto 0);
    
begin
    UUT: NanoProcessor port map(
            R7 => R7,
            R6 => R6,
            R5 => R5,
            R4 => R4,
            R3 => R3,
            R2 => R2,
            R1 => R1,
            R0 => R0,
            CLK  => CLK,
            RESETPUSH => RESETPUSH,
            ZERO => ZERO,
            OVERFLOW => OVERFLOW,
            
            instaddr => instaddr,
            NEXT_IA => NEXT_IA,
            CURR_IA => CURR_IA,
            inst0 => inst0
       );  
       
process begin
Clk <= not Clk;
wait for 20ns;
end process;

process begin
wait for 300ns;
RESETPUSH <= '1';
wait for 50ns;
RESETPUSH <= '0';
end process;                  
end Behavioral;   
                  
