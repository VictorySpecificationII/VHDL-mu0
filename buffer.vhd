-------------------------------------------
-- VHDL implementation of mu0 processor  --
-- Direction buffer 16bit                --
-- Ben Howes 2011                        --
-------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
-- use IEE.std_logic_unsigned."="

entity buff is
  port (IN_A: in std_logic_vector (15 downto 0);
        EN: in std_logic;
        OUT_A : out std_logic_vector (15 downto 0)
  );
end;

architecture struct of buff is
  
begin
  
get_output : process(IN_A, EN)
  variable v_out : std_logic_vector (15 downto 0);
  
  begin
  
  if(en = '1') then
    v_out := in_a;
  else
    v_out := "ZZZZZZZZZZZZZZZZ"; -- there must be a better way!
  end if;
  
  OUT_A <= v_out;
  
end process;
  
end struct;