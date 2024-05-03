-- code generated from the following source code:
--   
--
-- with the following command:
--
--    ./eclat

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.runtime.all;


entity main is
  
  port(signal clk    : in std_logic;
       signal reset  : in std_logic;
       signal run    : in std_logic;
       signal rdy    : out value(0 to 0);
       signal argument : in value(0 to 31);
       signal result : out value(0 to 31));
       
end entity;
architecture rtl of main is

  type t_state is (compute5);
  signal state: t_state;
  
  begin
    process(clk)
      variable rdy4 : value(0 to 0) := (others => '0');
      variable result3 : value(0 to 31) := (others => '0');
      
    begin
      
      if rising_edge(clk) then
        if (reset = '1') then
          default_zero(result3); default_zero(rdy4); 
          rdy <= "1";
          rdy4 := "0";
          state <= compute5;
          
        else if run = '1' then
          case state is
          when compute5 =>
            rdy4 := eclat_false;
            result3 := eclat_add(argument & X"0000000" & X"1");
            rdy4 := eclat_true;
            state <= compute5;
          end case;
          
          result <= result3;
          rdy <= rdy4;
          
        end if;
      end if;
    end if;
  end process;
end architecture;
