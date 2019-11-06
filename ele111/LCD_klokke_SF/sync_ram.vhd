library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_ram is
  port (clk      : in std_logic;
        address  : in std_logic_vector(3 downto 0);
        data_in  : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0);
        WE, CS, OE : in std_logic
  );
end;

architecture rtl of sync_ram is
  type ram_array is array (0 to 31) of std_logic_vector(7 downto 0);
  signal mem : ram_array;

begin
  process(clk)
  begin
    if rising_edge(clk) then
      if CS = '0' then
        if OE = '0' then
          data_out <= mem(to_integer(unsigned(address)));
        end if;
        if WE = '0' then
          mem(to_integer(unsigned(address))) <= data_in;
        end if;
      end if;
    end if;
  end process;
end;
