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
		if rising_edge(clock_50) then
			-- synkroniserer innsignal i to vipper
--			input_Q <= sig_inn;
--			input_QQ <= input_Q;

			--flankedetekor
--			input_QQQ <= input_QQ;
--			sig_inn_ne <= input_QQ and not input_QQQ;
--			sig_inn_ne <= (not input_QQ) and input_QQQ;

			input_Q <= sig_inn;
			sig_inn_ne <= (not sig_inn) and input_Q;
		end if;
	end process;

end architecture RTL;
