library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity sender_sf is
  port (
        CLOCK_50  : in    std_logic;
        KEY       : in    std_logic_vector(3 downto 0);
        SW        : in    std_logic_vector(17 downto 0);
        GPIO      : inout std_logic_vector(35 downto 0);
        LEDR      : out   std_logic_vector(17 downto 0);
        LEDG      : out   std_logic_vector(7 downto 0)
  );
end entity sender_sf;

architecture rtl of sender_sf is


component Enable_gen Is
	port ( clock_50 		: in std_logic;
			 resetn 			  : in std_logic;
			 velg_enable	  : in std_logic_vector(2 downto 0);
			 enable			    : buffer std_logic
	);
end component;


component reset_sync is
	port(
			clk : in std_logic;
			rst_n : in std_logic;
			rst_clk_n : out std_logic
		);
end component;


signal hallo          : std_logic;
signal enable_out     : std_logic;
signal synched_reset  : std_logic;

begin

  LEDR(17) <= hallo;

  enable_gen_1 : Enable_gen
  port map (
            clock_50    => CLOCK_50,
            resetn      => synched_reset,
            velg_enable => "000",
            enable      => enable_out
  );

  reset_syncher : reset_sync
  port map (
            clk       => CLOCK_50,
            rst_n     => KEY(3),
            rst_clk_n => synched_reset
  );

  p_hallo : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if enable_out = '1' then
        hallo <= not hallo;
      end if;
    end if;
  end process;

  p_send : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      GPIO(1) <= hallo;
    end if;
  end process;
end architecture;
