library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flankedeteksjon is
	port (
			clk 			: in 	std_logic;
			data_in 		: in 	std_logic;
			neg_flanke_puls : out  std_logic;
			flanke_puls	: out std_logic
	);
end entity flankedeteksjon;

architecture RTL of flankedeteksjon is
	signal input_Q, input_QQ 		: std_logic;
	signal input_QQQ	: std_logic;
begin
	p_detektor : process(clk) is
	begin
		if rising_edge(clk) then
			-- synkroniserer innsignal i to vipper
			input_Q <= data_in;
			input_QQ <= input_Q;
			
			--flankedetekor
			input_QQQ <= input_QQ;
			flanke_puls <= input_QQ and not input_QQQ;
			neg_flanke_puls <= (not input_QQ) and input_QQQ;
		end if;
	end process;

end architecture RTL;