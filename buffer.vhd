-------------------------------------------
-- VHDL implementation of mu0 processor  --
-- Direction buffer 16bit                --
-- Ben Howes 2011                        --
-------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
-- use IEE.std_logic_unsigned."="
entity buff is
  port (in_a: in std_logic (15 downto 0),
        en: in std_logic,
        out_a : out std_logic (15 downto 0)
  );
end;

architecture struct of buff is
  
begin
  
get_output : process(in_a, en)
  v_out : std_logic (15 downto 0);
  
  begin
  
  if(en = '1') then
    v_out := in_a;
  else
    v_out := "ZZZZZZZZZZZZZZZZ"; -- there must be a better way!
  end if;
  
  output <= v_out;
  
end process;
  
end struct;