library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mottaker_sf is
  port (
        CLOCK_50 : in     std_logic;
        KEY      : in     std_logic_vector(3 downto 0);
        GPIO     : inout  std_logic_vector(35 downto 0);
        LEDR     : out    std_logic_vector(17 downto 0)
  );
end entity mottaker_sf;

architecture rtl of mottaker_sf is

signal vippe_a, vippe_b : std_logic;
signal mottatt_blink    : std_logic;

begin

  LEDR(17) <= mottatt_blink;

  p_motta : process(CLOCK_50) is
  begin
      if rising_edge(CLOCK_50) then
        GPIO(1) <= 'Z';
        vippe_a <= GPIO(1);
        vippe_b <= vippe_a;
        mottatt_blink <= vippe_b;
      end if;
  end process;

end architecture;
