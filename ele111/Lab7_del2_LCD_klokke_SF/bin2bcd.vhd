library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
	port(
			bin_in 	: in std_logic_vector(6 downto 0);
			bcd_out 	: out std_logic_vector(7 downto 0)
	);
end entity bin2bcd;

architecture rtl of bin2bcd is

begin
	p_convert : process(bin_in)
		variable integer_high 	: integer range 0 to 9;
		variable integer_low 	: integer range 0 to 9;
		variable temp				: integer range 0 to 99;
	begin
		temp				:= to_integer(unsigned(bin_in));
		integer_high	:= temp/10;
		integer_low		:= temp - integer_high * 10;
		
		bcd_out(3 downto 0) <= std_logic_vector(to_unsigned(integer_low, 4));
		bcd_out(7 downto 4) <= std_logic_vector(to_unsigned(integer_high, 4));
	end process;
end architecture rtl;