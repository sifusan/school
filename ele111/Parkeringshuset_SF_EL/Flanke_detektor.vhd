library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Flanke_detektor is
	port (
			clock_50		: in std_logic;
			reset_clk 	: in std_logic;
			sig_inn		: in std_logic;
			sig_inn_ne	: out std_logic
	);
end entity Flanke_detektor;

architecture RTL of Flanke_detektor is
	signal input_Q : std_logic;
begin
	p_detektor : process(clock_50) is
	begin
		if reset_clk = '0' then
			input_Q <= '0';
			sig_inn_ne <= '0';
		elsif rising_edge(clock_50) then
			input_Q <= sig_inn;
			sig_inn_ne <= (not sig_inn) and input_Q;
		end if;
	end process;
end architecture RTL;