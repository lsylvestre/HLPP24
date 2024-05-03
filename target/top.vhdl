-- code generated from the following source code:
--   ../hlpp/jdlv/life.ecl
--
-- with the following command:
--
--    ./eclat -relax ../hlpp/jdlv/life.ecl -main=main_yosys -yosys-ecp5 -unsafe -arg=0

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.runtime.all;


entity top is
  port (signal clk48 : in std_logic;
        signal i : in std_logic;
        signal o : out std_logic
  );
end entity;

architecture rtl of top is

    component main is
        port (signal clk : in std_logic;
              signal run : in std_logic;
              signal reset : in std_logic;
              signal rdy : out value(0 to 0);
              signal argument : in value(0 to 0);
              signal result : out value(0 to 0)
        );
    end component;
    signal RST : std_logic := '1';
    signal argument : value(0 to 0);
    signal result : value(0 to 0);
    signal ready : value (0 to 0);
    begin
        process (clk48)
            begin
            if (rising_edge(clk48)) then
                if RST = '1' then
                    RST <= '0';
                end if;
            end if;
        end process;
argument <= "" & i;
main_CC : component main
        port map (clk => clk48,
                  run => '1',
                  reset => RST,
                  rdy => ready,
                  argument => argument,
                  result => result
                  );
o <= result(0);

end architecture;

