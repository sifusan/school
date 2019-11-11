library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baudarate_gen is
  port(
        CLOCK_50      : in std_logic;
        resetn        : in std_logic;
        velg_baudrate : in std_logic_vector(2 downto 0);
        start_teller  : in std_logic
        baud_enable_m : out std_logic;
        baud_enable_s : out std_logic
  );
end entity baudarate_gen;

architecture rtl of
  type tabell is array (0 to 7) of integer ragne 0 to 50000000;
  constant baud_rom : tabell := (4800, 9600, 19200, 34800, 57600, 74880, 115200, 1000000)

  signal teller    : integer range 0 to 50000000 := 0;
  signal baud_tall : integer range 0 to 50000000;

  -- signal start_teller : std_logic
begin
  baud_tall <= 50000000 / (baud_rom(to_integer(unsigned(velg_baudrate))));

  p_start_teller : process(CLOCK_50) is
  begin
      if rising_edge(CLOCK_50) then
        if resetn = '0' then
        else
      end if;
    end if;
  end process;

  p_baud_teller : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if resetn = '0' then
        teller <= 0;
        baud_enable_m <= '0';
        baud_enable_s <= '0';
      elsif start_teller = '1' then
        teller <= 0;
        baud_enable_m <= '0';
        baud_enable_s <= '0';
        if teller = baud_tall/2 then
          baud_enable_m <= '1';
        elsif teller = baud_tall then
          teller <= 0;
          baud_enable_s <= '1';
        end if
      end if;
    end if;
  end process;
end architecture;
