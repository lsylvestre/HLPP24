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
       signal argument : in value(0 to 0);
       signal result : out value(0 to 32));
       
end entity;
architecture rtl of main is

  type t_state is (compute7);
  signal state: t_state;
  type t_state_var15 is (compute10);
  signal state_var15: t_state_var15;
  
  begin
    process(clk)
      variable result5 : value(0 to 32) := (others => '0');
      variable rdy6, rdy9, \$v13\, \$v14\ : value(0 to 0) := (others => '0');
      variable result8 : value(0 to 31) := (others => '0');
      
    begin
      
      if rising_edge(clk) then
        if (reset = '1') then
          default_zero(result5); default_zero(\$v14\); default_zero(\$v13\); 
          default_zero(rdy9); default_zero(rdy6); default_zero(result8); 
          rdy <= "1";
          rdy6 := "0";
          state <= compute7;
          state_var15 <= compute10;
          
        else if run = '1' then
          case state is
          when compute7 =>
            rdy6 := eclat_false;
            case state_var15 is
            when compute10 =>
              rdy9 := eclat_false;
              result8 := X"0000000" & X"1";
              rdy9 := eclat_true;
              state_var15 <= compute10;
            end case;
            \$v14\ := eclat_not(rdy9);
            if \$v14\(0) = '1' then
              result8 := X"0000000" & X"2";
              \$v13\ := eclat_true;
              if \$v13\(0) = '1' then
                state_var15 <= compute10;
              end if;
            end if;
            result5 := result8 & rdy9;
            rdy6 := eclat_true;
            state <= compute7;
          end case;
          
          result <= result5;
          rdy <= rdy6;
          
        end if;
      end if;
    end if;
  end process;
end architecture;
