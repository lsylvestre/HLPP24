-- code generated from the following source code:
--   stdlib.ecl
--   ../benchs/game-of-life/v3/v3.ecl
--
-- with the following command:
--
--    ./eclat -relax ../benchs/game-of-life/v3/v3.ecl -xilinx-zybo -main=main_xilinx

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.runtime.all;


entity top is
  port (signal clk : in std_logic;
        signal sw : in std_logic_vector(0 to 3);
        signal btn : in std_logic_vector(0 to 3);
        signal led : out std_logic_vector(0 to 3)
  );
end entity;

architecture rtl of top is

    component main is
        port (signal clk : in std_logic;
             -- signal run : in std_logic;
              signal reset : in std_logic;
             -- signal rdy : out value(0 to 0);
              signal argument : in value(0 to 7);
              signal result : out value(0 to 3)
        );
    end component;
    signal RST : std_logic := '1';
    signal argument : value(0 to 7);
    signal result : value(0 to 3);
    signal ready : value (0 to 0);
    begin
        process (clk)
            begin
            if (rising_edge(clk)) then
                if RST = '1' then
                    RST <= '0';
                end if;
            end if;
        end process;
argument <= sw & btn;
main_CC : component main
        port map (clk => clk,
                  reset => RST,
                  --rdy => ready,
                  argument => argument,
                  result => result
                  );
led <= result(0 to 3);

end architecture;

