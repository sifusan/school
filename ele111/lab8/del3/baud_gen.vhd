library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baud_gen is
  port (
          CLOCK_50          : in std_logic;
          resetn            : in std_logic;
          select_baudrate   : in std_logic_vector(2 downto 0);
          start_count       : in std_logic;
          baud_enable_r     : out std_logic;
          baud_enable_s     : out std_logic
  );
end entity baud_gen;

architecture arch of baud_gen  is

type table is array (0 to 7) of integer range 0 to 50000000;
constant baud_rom : table := (4800, 9600, 19200, 34800, 57600, 74880, 115200, 1000000);

signal counter  : integer range 0 to 50000000 := 0;
signal baud_out : integer range 0 to 50000000;

begin
  baud_out <= 50000000 / (baud_rom(to_integer(unsigned(select_baudrate))));

  p_baud_gen : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if resetn = '0' or start_count = '1' then
        counter <= 0;
        baud_enable_r <= '0';
        baud_enable_s <= '0';
      else
        counter <= counter + 1;
        baud_enable_r <= '0';
        baud_enable_s <= '0';

        if counter = baud_out/2 then
          baud_enable_r <= '1';
        elsif counter = baud_out then
          counter <= 0;
          baud_enable_s <= '1';
        end if;
      end if;
    end if;
  end process;
end architecture;
