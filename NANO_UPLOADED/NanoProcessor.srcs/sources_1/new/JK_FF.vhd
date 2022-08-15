 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity JK_FF is
  port( 
        Reset: in std_logic;
        Clock_enable: in std_logic;
        Clock: in std_logic;
        Output: out std_logic);
end JK_FF;

architecture Behavioral of JK_FF is
  signal temp: std_logic:='0';
begin
  process (Clock,temp,Reset) 
  begin
     if rising_edge(Clock) then                 
        if Reset='1' then   
           temp <= '1';
        elsif Clock_enable ='1' then
           if (temp='0' ) then
              temp <= temp;
           elsif (temp='1') then
              temp <= not (temp);
           end if;
        end if;
     end if;
  end process;
  Output <= temp;
end Behavioral;