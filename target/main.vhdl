-- code generated from the following source code:
--   ../benchs/game-of-life/v1/v1.ecl
--
-- with the following command:
--
--    ./eclat -relax ../benchs/game-of-life/v1/v1.ecl -intel-max10 -main=main_intel

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.runtime.all;


entity main is
  
  port(signal clk    : in std_logic;
       signal reset  : in std_logic;
       signal run    : in std_logic;
       signal rdy    : out value(0 to 0);
       signal argument : in value(0 to 11);
       signal result : out value(0 to 57));
       
end entity;
architecture rtl of main is

  type t_state is (compute763, \$1169_loop103\, \$1178_loop8109\, \$1188_aux107\, \$1202_aux112\, \$1422_aux102\, pause_getI764, pause_getI773, pause_getI782, pause_getI786, pause_getI790, pause_getI794, pause_getI798, pause_getI802, pause_getI806, pause_getI810, pause_getI814, pause_getI824, pause_getII765, pause_getII774, pause_getII783, pause_getII787, pause_getII791, pause_getII795, pause_getII799, pause_getII803, pause_getII807, pause_getII811, pause_getII815, pause_getII825, pause_setI769, pause_setI778, pause_setI820, pause_setII770, pause_setII779, pause_setII821, q_wait766, q_wait771, q_wait775, q_wait780, q_wait784, q_wait788, q_wait792, q_wait796, q_wait800, q_wait804, q_wait808, q_wait812, q_wait816, q_wait822, q_wait826);
  signal state: t_state;
  type array_value_1 is array (natural range <>) of value(0 to 0);
  signal \$1160_w_src\ : array_value_1(0 to 63);
  signal \$$1160_w_src_value\ : value(0 to 0);
  signal \$$1160_w_src_ptr\ : natural range 0 to 63;
  signal \$$1160_w_src_ptr_write\ : natural range 0 to 63;
  signal \$$1160_w_src_write\ : value(0 to 0);
  signal \$$1160_w_src_write_request\ : std_logic := '0';
  signal \$1161_w_dst\ : array_value_1(0 to 63);
  signal \$$1161_w_dst_value\ : value(0 to 0);
  signal \$$1161_w_dst_ptr\ : natural range 0 to 63;
  signal \$$1161_w_dst_ptr_write\ : natural range 0 to 63;
  signal \$$1161_w_dst_write\ : value(0 to 0);
  signal \$$1161_w_dst_write_request\ : std_logic := '0';
  
  begin
    process (clk)
            begin
            if (rising_edge(clk)) then
                 -- if \$$1160_w_src_write_request\ = '1' then
                    \$1160_w_src\(\$$1160_w_src_ptr_write\) <= \$$1160_w_src_write\;
                 -- else
                   \$$1160_w_src_value\ <= \$1160_w_src\(\$$1160_w_src_ptr\);
                 -- end if;
            end if;
        end process;
    
    process (clk)
            begin
            if (rising_edge(clk)) then
                 -- if \$$1161_w_dst_write_request\ = '1' then
                    \$1161_w_dst\(\$$1161_w_dst_ptr_write\) <= \$$1161_w_dst_write\;
                 -- else
                   \$$1161_w_dst_value\ <= \$1161_w_dst\(\$$1161_w_dst_ptr\);
                 -- end if;
            end if;
        end process;
    
    process(clk)
      variable \$1178_loop8109_arg\ : value(0 to 63) := (others => '0');
      variable \$1188_aux107_arg\, \$1422_aux102_arg\ : value(0 to 32) := (others => '0');
      variable \$1169_loop103_arg\ : value(0 to 33) := (others => '0');
      variable result761 : value(0 to 57) := (others => '0');
      variable \$1202_aux112_arg\ : value(0 to 64) := (others => '0');
      variable \$1165\, rdy762, \$v777\, \$1215\, \$v776\, \$1195\, \$v827\, 
               \$v785\, \$v809\, \$1216\, \$1224\, \$v789\, 
               \$1422_aux102_result\, \$v781\, \$v767\, \$v818\, \$v768\, 
               \$1214\, \$v797\, \$v805\, \$1178_loop8109_result\, \$1211\, 
               \$v813\, \$1169_loop103_result\, \$v801\, \$v819\, 
               \$1188_aux107_result\, \$v828\, \$1222\, \$v817\, \$v772\, 
               \$1213\, \$1223\, \$1202_aux112_result\, \$v823\, \$1221\, 
               \$v793\, \$1212\ : value(0 to 0) := (others => '0');
      variable \$1162_v\ : value(0 to 31) := (others => '0');
      variable \$$1160_w_src_ptr_take\ : value(0 to 0) := "0";
      variable \$$1161_w_dst_ptr_take\ : value(0 to 0) := "0";
      
    begin
      
      if rising_edge(clk) then
        if (reset = '1') then
          default_zero(\$1202_aux112_arg\); default_zero(result761); 
          default_zero(\$1212\); default_zero(\$v793\); 
          default_zero(\$1221\); default_zero(\$v823\); 
          default_zero(\$1202_aux112_result\); default_zero(\$1223\); 
          default_zero(\$1422_aux102_arg\); default_zero(\$1213\); 
          default_zero(\$v772\); default_zero(\$v817\); 
          default_zero(\$1222\); default_zero(\$v828\); 
          default_zero(\$1188_aux107_result\); default_zero(\$v819\); 
          default_zero(\$v801\); default_zero(\$1169_loop103_result\); 
          default_zero(\$v813\); default_zero(\$1211\); 
          default_zero(\$1178_loop8109_result\); default_zero(\$v805\); 
          default_zero(\$v797\); default_zero(\$1214\); 
          default_zero(\$v768\); default_zero(\$v818\); 
          default_zero(\$1169_loop103_arg\); default_zero(\$v767\); 
          default_zero(\$v781\); default_zero(\$1422_aux102_result\); 
          default_zero(\$1162_v\); default_zero(\$v789\); 
          default_zero(\$1224\); default_zero(\$1216\); 
          default_zero(\$1188_aux107_arg\); default_zero(\$v809\); 
          default_zero(\$v785\); default_zero(\$v827\); 
          default_zero(\$1178_loop8109_arg\); default_zero(\$1195\); 
          default_zero(\$v776\); default_zero(\$1215\); 
          default_zero(\$v777\); default_zero(rdy762); default_zero(\$1165\); 
          rdy <= "1";
          rdy762 := "0";
          state <= compute763;
          
        else if run = '1' then
          case state is
          when \$1169_loop103\ =>
            \$v819\ := eclat_lt(\$1169_loop103_arg\(0 to 31) & X"0000000" & X"1");
            if \$v819\(0) = '1' then
              \$1169_loop103_result\ := eclat_unit;
              \$v767\ := \$$1160_w_src_ptr_take\;
              if \$v767\(0) = '1' then
                state <= q_wait766;
              else
                \$$1160_w_src_ptr_take\(0) := '1';
                \$$1160_w_src_ptr\ <= 0;
                state <= pause_getI764;
              end if;
            else
              \$1178_loop8109_arg\ := X"0000000" & X"0" & X"0000000" & X"8";
              state <= \$1178_loop8109\;
            end if;
          when \$1178_loop8109\ =>
            \$v768\ := eclat_gt(\$1178_loop8109_arg\(0 to 31) & eclat_sub(eclat_mult(\$1178_loop8109_arg\(32 to 63) & \$1178_loop8109_arg\(32 to 63)) & X"0000000" & X"1"));
            if \$v768\(0) = '1' then
              \$1178_loop8109_result\ := eclat_unit;
              \$1202_aux112_arg\ := X"0000000" & X"0" & eclat_unit & X"0000000" & X"8";
              state <= \$1202_aux112\;
            else
              \$1178_loop8109_arg\ := eclat_add(\$1178_loop8109_arg\(0 to 31) & X"0000000" & X"1") & \$1178_loop8109_arg\(32 to 63);
              state <= \$1178_loop8109\;
            end if;
          when \$1188_aux107\ =>
            \$v777\ := eclat_lt(\$1188_aux107_arg\(0 to 31) & std_logic_vector(to_unsigned(\$1161_w_dst\'length,32)));
            if \$v777\(0) = '1' then
              \$v776\ := \$$1161_w_dst_ptr_take\;
              if \$v776\(0) = '1' then
                state <= q_wait775;
              else
                \$$1161_w_dst_ptr_take\(0) := '1';
                \$$1161_w_dst_ptr\ <= to_integer(unsigned(\$1188_aux107_arg\(0 to 31)));
                state <= pause_getI773;
              end if;
            else
              \$1188_aux107_result\ := eclat_unit;
              \$1169_loop103_arg\ := eclat_sub(\$1169_loop103_arg\(0 to 31) & X"0000000" & X"1") & eclat_unit & eclat_unit;
              state <= \$1169_loop103\;
            end if;
          when \$1202_aux112\ =>
            \$v818\ := eclat_lt(\$1202_aux112_arg\(0 to 31) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32)));
            if \$v818\(0) = '1' then
              \$v817\ := \$$1160_w_src_ptr_take\;
              if \$v817\(0) = '1' then
                state <= q_wait816;
              else
                \$$1160_w_src_ptr_take\(0) := '1';
                \$$1160_w_src_ptr\ <= to_integer(unsigned(\$1202_aux112_arg\(0 to 31)));
                state <= pause_getI814;
              end if;
            else
              \$1202_aux112_result\ := eclat_unit;
              \$1188_aux107_arg\ := X"0000000" & X"0" & eclat_unit;
              state <= \$1188_aux107\;
            end if;
          when \$1422_aux102\ =>
            \$v828\ := eclat_lt(\$1422_aux102_arg\(0 to 31) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32)));
            if \$v828\(0) = '1' then
              \$v827\ := \$$1160_w_src_ptr_take\;
              if \$v827\(0) = '1' then
                state <= q_wait826;
              else
                \$$1160_w_src_ptr_take\(0) := '1';
                \$$1160_w_src_ptr\ <= to_integer(unsigned(\$1422_aux102_arg\(0 to 31)));
                state <= pause_getI824;
              end if;
            else
              \$1422_aux102_result\ := eclat_unit;
              \$1169_loop103_arg\ := X"00000" & X"7d0" & eclat_unit & eclat_unit;
              state <= \$1169_loop103\;
            end if;
          when pause_getI764 =>
            state <= pause_getII765;
          when pause_getI773 =>
            state <= pause_getII774;
          when pause_getI782 =>
            state <= pause_getII783;
          when pause_getI786 =>
            state <= pause_getII787;
          when pause_getI790 =>
            state <= pause_getII791;
          when pause_getI794 =>
            state <= pause_getII795;
          when pause_getI798 =>
            state <= pause_getII799;
          when pause_getI802 =>
            state <= pause_getII803;
          when pause_getI806 =>
            state <= pause_getII807;
          when pause_getI810 =>
            state <= pause_getII811;
          when pause_getI814 =>
            state <= pause_getII815;
          when pause_getI824 =>
            state <= pause_getII825;
          when pause_getII765 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1165\ := \$$1160_w_src_value\;
            \$1162_v\ := eclat_if(\$1165\ & X"0000000" & X"0" & X"0000000" & X"1");
            result761 := eclat_resize(\$1162_v\,58);
            rdy762 := eclat_true;
            state <= compute763;
          when pause_getII774 =>
            \$$1161_w_dst_ptr_take\(0) := '0';
            \$1195\ := \$$1161_w_dst_value\;
            \$v772\ := \$$1160_w_src_ptr_take\;
            if \$v772\(0) = '1' then
              state <= q_wait771;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr_write\ <= to_integer(unsigned(\$1188_aux107_arg\(0 to 31)));
              \$$1160_w_src_write_request\ <= '1';
              \$$1160_w_src_write\ <= \$1195\;
              state <= pause_setI769;
            end if;
          when pause_getII783 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1224\ := \$$1160_w_src_value\;
            \$1216\ := eclat_if(eclat_and(\$1211\ & eclat_eq(eclat_add(eclat_add(eclat_add(eclat_add(eclat_add(eclat_add(eclat_add(
                       eclat_if(\$1212\ & "0001" & "0000") & eclat_if(\$1213\ & "0001" & "0000")) & 
                       eclat_if(\$1214\ & "0001" & "0000")) & eclat_if(\$1215\ & "0001" & "0000")) & 
                       eclat_if(\$1221\ & "0001" & "0000")) & eclat_if(\$1222\ & "0001" & "0000")) & 
                       eclat_if(\$1223\ & "0001" & "0000")) & eclat_if(\$1224\ & "0001" & "0000")) & "0010")) & eclat_true & eclat_eq(eclat_add(eclat_add(eclat_add(eclat_add(eclat_add(eclat_add(eclat_add(
                       eclat_if(\$1212\ & "0001" & "0000") & eclat_if(\$1213\ & "0001" & "0000")) & 
                       eclat_if(\$1214\ & "0001" & "0000")) & eclat_if(\$1215\ & "0001" & "0000")) & 
                       eclat_if(\$1221\ & "0001" & "0000")) & eclat_if(\$1222\ & "0001" & "0000")) & 
                       eclat_if(\$1223\ & "0001" & "0000")) & eclat_if(\$1224\ & "0001" & "0000")) & "0011"));
            \$v781\ := \$$1161_w_dst_ptr_take\;
            if \$v781\(0) = '1' then
              state <= q_wait780;
            else
              \$$1161_w_dst_ptr_take\(0) := '1';
              \$$1161_w_dst_ptr_write\ <= to_integer(unsigned(\$1202_aux112_arg\(0 to 31)));
              \$$1161_w_dst_write_request\ <= '1';
              \$$1161_w_dst_write\ <= \$1216\;
              state <= pause_setI778;
            end if;
          when pause_getII787 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1223\ := \$$1160_w_src_value\;
            \$v785\ := \$$1160_w_src_ptr_take\;
            if \$v785\(0) = '1' then
              state <= q_wait784;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI782;
            end if;
          when pause_getII791 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1222\ := \$$1160_w_src_value\;
            \$v789\ := \$$1160_w_src_ptr_take\;
            if \$v789\(0) = '1' then
              state <= q_wait788;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"0") & eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64))))));
              state <= pause_getI786;
            end if;
          when pause_getII795 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1221\ := \$$1160_w_src_value\;
            \$v793\ := \$$1160_w_src_ptr_take\;
            if \$v793\(0) = '1' then
              state <= q_wait792;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI790;
            end if;
          when pause_getII799 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1215\ := \$$1160_w_src_value\;
            \$v797\ := \$$1160_w_src_ptr_take\;
            if \$v797\(0) = '1' then
              state <= q_wait796;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1")))));
              state <= pause_getI794;
            end if;
          when pause_getII803 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1214\ := \$$1160_w_src_value\;
            \$v801\ := \$$1160_w_src_ptr_take\;
            if \$v801\(0) = '1' then
              state <= q_wait800;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1")))));
              state <= pause_getI798;
            end if;
          when pause_getII807 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1213\ := \$$1160_w_src_value\;
            \$v805\ := \$$1160_w_src_ptr_take\;
            if \$v805\(0) = '1' then
              state <= q_wait804;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI802;
            end if;
          when pause_getII811 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1212\ := \$$1160_w_src_value\;
            \$v809\ := \$$1160_w_src_ptr_take\;
            if \$v809\(0) = '1' then
              state <= q_wait808;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"0") & eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64))))));
              state <= pause_getI806;
            end if;
          when pause_getII815 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1211\ := \$$1160_w_src_value\;
            \$v813\ := \$$1160_w_src_ptr_take\;
            if \$v813\(0) = '1' then
              state <= q_wait812;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI810;
            end if;
          when pause_getII825 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$v823\ := \$$1160_w_src_ptr_take\;
            if \$v823\(0) = '1' then
              state <= q_wait822;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr_write\ <= to_integer(unsigned(\$1422_aux102_arg\(0 to 31)));
              \$$1160_w_src_write_request\ <= '1';
              \$$1160_w_src_write\ <= eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & X"0000000" & X"0") & eclat_true & 
                                      eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & X"0000000" & X"2") & eclat_true & 
                                      eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & eclat_add(X"0000000" & X"8" & X"0000000" & X"1")) & eclat_true & 
                                      eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & eclat_add(X"0000000" & X"8" & X"0000000" & X"2")) & eclat_true & eclat_eq(\$1422_aux102_arg\(0 to 31) & eclat_add(eclat_add(X"0000000" & X"8" & X"0000000" & X"8") & X"0000000" & X"1"))))));
              state <= pause_setI820;
            end if;
          when pause_setI769 =>
            \$$1160_w_src_write_request\ <= '0';
            state <= pause_setII770;
          when pause_setI778 =>
            \$$1161_w_dst_write_request\ <= '0';
            state <= pause_setII779;
          when pause_setI820 =>
            \$$1160_w_src_write_request\ <= '0';
            state <= pause_setII821;
          when pause_setII770 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1188_aux107_arg\ := eclat_add(\$1188_aux107_arg\(0 to 31) & X"0000000" & X"1") & eclat_unit;
            state <= \$1188_aux107\;
          when pause_setII779 =>
            \$$1161_w_dst_ptr_take\(0) := '0';
            \$1202_aux112_arg\ := eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & eclat_unit & \$1202_aux112_arg\(33 to 64);
            state <= \$1202_aux112\;
          when pause_setII821 =>
            \$$1160_w_src_ptr_take\(0) := '0';
            \$1422_aux102_arg\ := eclat_add(\$1422_aux102_arg\(0 to 31) & X"0000000" & X"1") & eclat_unit;
            state <= \$1422_aux102\;
          when q_wait766 =>
            \$v767\ := \$$1160_w_src_ptr_take\;
            if \$v767\(0) = '1' then
              state <= q_wait766;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= 0;
              state <= pause_getI764;
            end if;
          when q_wait771 =>
            \$v772\ := \$$1160_w_src_ptr_take\;
            if \$v772\(0) = '1' then
              state <= q_wait771;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr_write\ <= to_integer(unsigned(\$1188_aux107_arg\(0 to 31)));
              \$$1160_w_src_write_request\ <= '1';
              \$$1160_w_src_write\ <= \$1195\;
              state <= pause_setI769;
            end if;
          when q_wait775 =>
            \$v776\ := \$$1161_w_dst_ptr_take\;
            if \$v776\(0) = '1' then
              state <= q_wait775;
            else
              \$$1161_w_dst_ptr_take\(0) := '1';
              \$$1161_w_dst_ptr\ <= to_integer(unsigned(\$1188_aux107_arg\(0 to 31)));
              state <= pause_getI773;
            end if;
          when q_wait780 =>
            \$v781\ := \$$1161_w_dst_ptr_take\;
            if \$v781\(0) = '1' then
              state <= q_wait780;
            else
              \$$1161_w_dst_ptr_take\(0) := '1';
              \$$1161_w_dst_ptr_write\ <= to_integer(unsigned(\$1202_aux112_arg\(0 to 31)));
              \$$1161_w_dst_write_request\ <= '1';
              \$$1161_w_dst_write\ <= \$1216\;
              state <= pause_setI778;
            end if;
          when q_wait784 =>
            \$v785\ := \$$1160_w_src_ptr_take\;
            if \$v785\(0) = '1' then
              state <= q_wait784;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI782;
            end if;
          when q_wait788 =>
            \$v789\ := \$$1160_w_src_ptr_take\;
            if \$v789\(0) = '1' then
              state <= q_wait788;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"0") & eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64))))));
              state <= pause_getI786;
            end if;
          when q_wait792 =>
            \$v793\ := \$$1160_w_src_ptr_take\;
            if \$v793\(0) = '1' then
              state <= q_wait792;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI790;
            end if;
          when q_wait796 =>
            \$v797\ := \$$1160_w_src_ptr_take\;
            if \$v797\(0) = '1' then
              state <= q_wait796;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1")))));
              state <= pause_getI794;
            end if;
          when q_wait800 =>
            \$v801\ := \$$1160_w_src_ptr_take\;
            if \$v801\(0) = '1' then
              state <= q_wait800;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(\$1202_aux112_arg\(0 to 31) & X"0000000" & X"1")))));
              state <= pause_getI798;
            end if;
          when q_wait804 =>
            \$v805\ := \$$1160_w_src_ptr_take\;
            if \$v805\(0) = '1' then
              state <= q_wait804;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI802;
            end if;
          when q_wait808 =>
            \$v809\ := \$$1160_w_src_ptr_take\;
            if \$v809\(0) = '1' then
              state <= q_wait808;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"0") & eclat_add(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64))))));
              state <= pause_getI806;
            end if;
          when q_wait812 =>
            \$v813\ := \$$1160_w_src_ptr_take\;
            if \$v813\(0) = '1' then
              state <= q_wait812;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(eclat_if(eclat_lt(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & X"0000000" & X"0") & eclat_add(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & 
                                                        eclat_if(eclat_ge(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1") & std_logic_vector(to_unsigned(\$1160_w_src\'length,32))) & eclat_sub(eclat_sub(\$1202_aux112_arg\(0 to 31) & \$1202_aux112_arg\(33 to 64)) & X"0000000" & X"1")))));
              state <= pause_getI810;
            end if;
          when q_wait816 =>
            \$v817\ := \$$1160_w_src_ptr_take\;
            if \$v817\(0) = '1' then
              state <= q_wait816;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(\$1202_aux112_arg\(0 to 31)));
              state <= pause_getI814;
            end if;
          when q_wait822 =>
            \$v823\ := \$$1160_w_src_ptr_take\;
            if \$v823\(0) = '1' then
              state <= q_wait822;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr_write\ <= to_integer(unsigned(\$1422_aux102_arg\(0 to 31)));
              \$$1160_w_src_write_request\ <= '1';
              \$$1160_w_src_write\ <= eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & X"0000000" & X"0") & eclat_true & 
                                      eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & X"0000000" & X"2") & eclat_true & 
                                      eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & eclat_add(X"0000000" & X"8" & X"0000000" & X"1")) & eclat_true & 
                                      eclat_if(eclat_eq(\$1422_aux102_arg\(0 to 31) & eclat_add(X"0000000" & X"8" & X"0000000" & X"2")) & eclat_true & eclat_eq(\$1422_aux102_arg\(0 to 31) & eclat_add(eclat_add(X"0000000" & X"8" & X"0000000" & X"8") & X"0000000" & X"1"))))));
              state <= pause_setI820;
            end if;
          when q_wait826 =>
            \$v827\ := \$$1160_w_src_ptr_take\;
            if \$v827\(0) = '1' then
              state <= q_wait826;
            else
              \$$1160_w_src_ptr_take\(0) := '1';
              \$$1160_w_src_ptr\ <= to_integer(unsigned(\$1422_aux102_arg\(0 to 31)));
              state <= pause_getI824;
            end if;
          when compute763 =>
            rdy762 := eclat_false;
            \$1422_aux102_arg\ := X"0000000" & X"0" & eclat_unit;
            state <= \$1422_aux102\;
          end case;
          
          result <= result761;
          rdy <= rdy762;
          
        end if;
      end if;
    end if;
  end process;
end architecture;
