----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2022 03:04:47 PM
-- Design Name: 
-- Module Name: ROM - Behavioral
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

entity ROM is
    Port ( ROMInput : in STD_LOGIC_VECTOR (95 downto 0);
           Memory_Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Instruction_Out : out STD_LOGIC_VECTOR (11 downto 0);
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC);
end ROM;

architecture Behavioral of ROM is

component Reg12bit
port(
    D : in STD_LOGIC_VECTOR (11 downto 0);
    EN: in STD_LOGIC;
    Res : in STD_LOGIC;
    CLk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR(11 downto 0));
end component;

component Decoder_3_to_8
port(
    I : in STD_LOGIC_VECTOR (2 downto 0);
    En : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (7 downto 0)
);
end component;

signal Y : STD_LOGIC_VECTOR(7 downto 0);
signal Outputs : STD_LOGIC_VECTOR(95 downto 0);

begin
Decoder: Decoder_3_to_8
port map(
    I => Memory_Sel,
    EN => EN,
    Y => Y
    
);

Reg0 : Reg12bit
port map(
    D => ROMInput(11 downto 0),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(11 downto 0)
);

Reg1 : Reg12bit
port map(
    D => ROMInput(23 downto 12),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(23 downto 12)
);

Reg2 : Reg12bit
port map(
    D => ROMInput(35 downto 24),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(35 downto 24)
);

Reg3 : Reg12bit
port map(
    D => ROMInput(47 downto 36),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(47 downto 36)
);

Reg4 : Reg12bit
port map(
    D => ROMInput(59 downto 48),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(59 downto 48)
);

Reg5 : Reg12bit
port map(
    D => ROMInput(71 downto 60),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(71 downto 60)
);

Reg6 : Reg12bit
port map(
    D => ROMInput(83 downto 72),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(83 downto 72)
);

Reg7 : Reg12bit
port map(
    D => ROMInput(95 downto 84),
    EN => EN,
    Res => Res,
    CLk => Clk,
    Q => Outputs(95 downto 84)
);

Instruction_Out(0) <= (Y(0) and Outputs(0)) or 
                      (Y(1) and Outputs(12)) or
                      (Y(2) and Outputs(24)) or
                      (Y(3) and Outputs(36)) or
                      (Y(4) and Outputs(48)) or 
                      (Y(5) and Outputs(60)) or
                      (Y(6) and Outputs(72)) or
                      (Y(7) and Outputs(84));
                      
Instruction_Out(1) <= (Y(0) and Outputs(1)) or 
                      (Y(1) and Outputs(13)) or
                      (Y(2) and Outputs(25)) or
                      (Y(3) and Outputs(37)) or
                      (Y(4) and Outputs(49)) or 
                      (Y(5) and Outputs(61)) or
                      (Y(6) and Outputs(73)) or
                      (Y(7) and Outputs(85)); 

Instruction_Out(2) <= (Y(0) and Outputs(2)) or 
                      (Y(1) and Outputs(14)) or
                      (Y(2) and Outputs(26)) or
                      (Y(3) and Outputs(38)) or
                      (Y(4) and Outputs(50)) or 
                      (Y(5) and Outputs(62)) or
                      (Y(6) and Outputs(74)) or
                      (Y(7) and Outputs(86));   
                      
Instruction_Out(3) <= (Y(0) and Outputs(3)) or 
                      (Y(1) and Outputs(15)) or
                      (Y(2) and Outputs(27)) or
                      (Y(3) and Outputs(39)) or
                      (Y(4) and Outputs(51)) or 
                      (Y(5) and Outputs(63)) or
                      (Y(6) and Outputs(75)) or
                      (Y(7) and Outputs(87));
                      
Instruction_Out(4) <= (Y(0) and Outputs(4)) or 
                      (Y(1) and Outputs(16)) or
                      (Y(2) and Outputs(28)) or
                      (Y(3) and Outputs(40)) or
                      (Y(4) and Outputs(52)) or 
                      (Y(5) and Outputs(64)) or
                      (Y(6) and Outputs(76)) or
                      (Y(7) and Outputs(88));    
                      
Instruction_Out(5) <= (Y(0) and Outputs(5)) or 
                    (Y(1) and Outputs(17)) or
                    (Y(2) and Outputs(29)) or
                    (Y(3) and Outputs(41)) or
                    (Y(4) and Outputs(53)) or 
                    (Y(5) and Outputs(65)) or
                    (Y(6) and Outputs(77)) or
                    (Y(7) and Outputs(89)); 
                    
Instruction_Out(6) <= (Y(0) and Outputs(6)) or 
                    (Y(1) and Outputs(18)) or
                    (Y(2) and Outputs(30)) or
                    (Y(3) and Outputs(42)) or
                    (Y(4) and Outputs(54)) or 
                    (Y(5) and Outputs(66)) or
                    (Y(6) and Outputs(78)) or
                    (Y(7) and Outputs(90));   
                    
Instruction_Out(7) <= (Y(0) and Outputs(7)) or 
                    (Y(1) and Outputs(19)) or
                    (Y(2) and Outputs(31)) or
                    (Y(3) and Outputs(43)) or
                    (Y(4) and Outputs(55)) or 
                    (Y(5) and Outputs(67)) or
                    (Y(6) and Outputs(79)) or
                    (Y(7) and Outputs(91));
                    
Instruction_Out(8) <= (Y(0) and Outputs(8)) or 
                    (Y(1) and Outputs(20)) or
                    (Y(2) and Outputs(32)) or
                    (Y(3) and Outputs(44)) or
                    (Y(4) and Outputs(56)) or 
                    (Y(5) and Outputs(68)) or
                    (Y(6) and Outputs(80)) or
                    (Y(7) and Outputs(92));
                    
Instruction_Out(9) <= (Y(0) and Outputs(9)) or 
                    (Y(1) and Outputs(21)) or
                    (Y(2) and Outputs(33)) or
                    (Y(3) and Outputs(45)) or
                    (Y(4) and Outputs(57)) or 
                    (Y(5) and Outputs(69)) or
                    (Y(6) and Outputs(81)) or
                    (Y(7) and Outputs(93));
                    
Instruction_Out(10) <= (Y(0) and Outputs(10)) or 
                    (Y(1) and Outputs(22)) or
                    (Y(2) and Outputs(34)) or
                    (Y(3) and Outputs(46)) or
                    (Y(4) and Outputs(58)) or 
                    (Y(5) and Outputs(70)) or
                    (Y(6) and Outputs(82)) or
                    (Y(7) and Outputs(94));
                    
Instruction_Out(11) <= (Y(0) and Outputs(11)) or 
                    (Y(1) and Outputs(23)) or
                    (Y(2) and Outputs(35)) or
                    (Y(3) and Outputs(47)) or
                    (Y(4) and Outputs(59)) or 
                    (Y(5) and Outputs(71)) or
                    (Y(6) and Outputs(83)) or
                    (Y(7) and Outputs(95));
                    
end Behavioral;
