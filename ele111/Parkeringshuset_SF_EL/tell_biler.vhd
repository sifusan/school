library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tell_biler is
	port(
			clock_50 		: in std_logic;
			reset_clk		: in std_logic;
			bil_inn			: in std_logic;
			bil_ut			: in std_logic;
			antall_biler	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture rtl of tell_biler is

signal totalt_biler 	: integer range 0 to 255;
signal tell_opp 		: std_logic := '0';
signal tell_ned 		: std_logic := '0';
signal input_Q_inn	: std_logic;
signal input_Q_ut		: std_logic;

begin	
	antall_biler <= std_logic_vector(to_unsigned(totalt_biler, 8));

	p_tell_biler : process(clock_50) is
	begin
		if reset_clk = '0' then
			totalt_biler <= 0;
			tell_opp <= '0';
			tell_ned <= '0';
			input_Q_inn <= '0';
			input_Q_inn <= '0';
		elsif rising_edge(clock_50) then
			input_Q_inn <= bil_inn;
			tell_opp <= bil_inn and not input_Q_inn;
				
			input_Q_ut <= bil_ut;
			tell_ned <= bil_ut and not input_Q_ut;
				
			if (tell_opp = '1') and (totalt_biler < 255) then
				totalt_biler <= totalt_biler + 1;
			end if;
				
			if (tell_ned = '1') and (totalt_biler > 0) then
				totalt_biler <= totalt_biler - 1;
			end if;
		end if;
	end process;
end architecture;
