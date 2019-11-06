library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram32x8_sf is
port (
		clk		: in std_logic;
		WR			: in std_logic;
		address	: in std_logic_vector(4 downto 0);
		data_in	: in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0)
);
end;

architecture rtl of ram32x8_sf is
	type ram_array is array (0 to 31) of std_logic_vector(7 downto 0);
	signal mem : ram_array;

begin
	process(clk)
		begin
			if rising_edge(clk) then
				data_out <= mem(to_integer(unsigned(address)));
				if WR = '0' then
					mem(to_integer(unsigned(address))) <= data_in;
				end if;
			end if;
	end process;
end;