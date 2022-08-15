----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 10:33:41 PM
-- Design Name: 
-- Module Name: ControlUnit_sim - Behavioral
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

entity ControlUnit_sim is
--  Port ( );
end ControlUnit_sim;

architecture Behavioral of ControlUnit_sim is

component ControlUnit
Port ( --ROMInput : in STD_LOGIC_VECTOR (95 downto 0);
       --BankData : in STD_LOGIC_VECTOR(31 downto 0);
       Clk : in STD_LOGIC;
       ResetPush : in STD_LOGIC;
       Overflow : out STD_LOGIC;
       Zero : out STD_LOGIC;
       mem : out STD_LOGIC_VECTOR(2 downto 0);
       
       PICLKOUT0 : out STD_LOGIC;
       DVal : out STD_LOGIC_VECTOR(3 downto 0);
       ASVal : Out STD_LOGIC_VECTOR(3 downto 0);
       BankDataOutput : out STD_LOGIC_VECTOR(31 downto 0);
       BankENAdd  : out STD_LOGIC_VECTOR(2 downto 0);
       --QOutput0 : out STD_LOGIC_VECTOR( 31 downto 0);
       ResetALL : in STD_LOGIC;
       jmpflag0 : out STD_LOGIC;
       InBusOutput : out STD_LOGIC_VECTOR(11 downto 0);
       BankDataInput : out STD_LOGIC_VECTOR(3 downto 0);

       
       RegSeven : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--signal ROMInput : STD_LOGIC_VECTOR (95 downto 0);
--signal BankData : STD_LOGIC_VECTOR(31 downto 0);
signal Clk : STD_LOGIC:='1';
signal ResetPush : STD_LOGIC;
signal Overflow : STD_LOGIC;
signal Zero : STD_LOGIC;

signal ResetALL : STD_LOGIC;
signal mem : STD_LOGIC_VECTOR(2 downto 0);
signal jmpflag0 : STD_LOGIC;
signal InBusOutput : STD_LOGIC_VECTOR(11 downto 0);
signal BankDataInput : STD_LOGIC_VECTOR(3 downto 0);


signal RegSeven : STD_LOGIC_VECTOR (3 downto 0);

signal PICLKOUT0 : STD_LOGIC;
--signal QOutput0 : STD_LOGIC_VECTOR( 31 downto 0);
signal BankENAdd : STD_LOGIC_VECTOR(2 downto 0);
signal BankDataOutput : STD_LOGIC_VECTOR(31 downto 0);
signal ASVal : STD_LOGIC_VECTOR(3 downto 0);
signal DVal : STD_LOGIC_VECTOR(3 downto 0);

begin
UUT: ControlUnit
port map(
    --ROMInput => ROMInput,
    --BankData => BankData,
    Clk => Clk,
    ResetPush => ResetPush,
    Overflow => Overflow,
    Zero => Zero,
    
    DVal => DVal,
    ASVal => ASVal,
    ResetALL => ResetALL,
    mem => mem,
    --QOutput0 => QOutput0,
    jmpflag0 => jmpflag0,
    InBusOutput => InBusOutput ,
    BankDataInput => BankDataInput, 
    BankENAdd => BankENAdd,
    BankDataOutput => BankDataOutput,
    PICLKOUT0 => PICLKOUT0,


    RegSeven => RegSeven);
    

process begin
Clk <= not(Clk);
wait for 2ns;
end process;

process begin
--Zero <= '1';
--OverfLow <= '0';
ResetPush <= '1';
wait for 20ns;

ResetPush <= '0';
wait for 980ns;
--ROMInput(11 downto 0) <= "100000010001";
--BankData <= "11100110101000101100010010000000";
-- ResetPush <= '1';
--wait for 100ns;

--ResetALL <= '0';
--ROMInput(23 downto 12) <= "010000001001";
--ResetPush <= '0';
--wait for 100ns;

--ROMInput(35 downto 24) <= "110000011001";
--ResetPush <= '0';
--wait for 100ns;

--ROMInput(47 downto 36) <= "000001010000";
--ResetPush <= '0';
--wait for 100ns;

--ROMInput(59 downto 48) <= "000011010000";
--ResetPush <= '0';
--wait for 100ns;

--ROMInput(71 downto 60) <= "000010011100";
--ResetPush <= '0';
--wait for 100ns;

end process;

end Behavioral;
