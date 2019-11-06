library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity F13_oppgave is
	port(
			ext_clk 			: in std_logic;
			a_reset_n		: in std_logic;
			count_out 		: out std_logic_vector(3 downto 0);
			test				: out std_logic
			);
end;

architecture rtl of F13_oppgave is
	signal test_s, ext_clk_s, a_reset_n_s   : std_logic;
	--signal count									 : integer range 0 to 15;
	
begin
	p_teller : process (ext_clk_s) is
		variable count : integer range 0 to 15 := 0;
	begin
		if rising_edge(ext_clk_s) then
			if a_reset_n_s = '0' then
				--count <= 0;
				count := 0;
			elsif count = 14 then
				test_s <= '0';
				count := count + 1;
			else
				--count <= count + 1;
				count := count + 1;
			end if;
		end if;		
	end process p_teller;
end;