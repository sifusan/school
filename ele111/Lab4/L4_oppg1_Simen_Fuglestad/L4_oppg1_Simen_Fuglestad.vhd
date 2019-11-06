library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity L4_oppg1_Simen_Fuglestad is
	port (
				clk 		: in std_logic;
				A, B, C 	: in std_logic;
				Y			: out std_logic
	
	);
end entity L4_oppg1_Simen_Fuglestad;

architecture rtl of L4_oppg1_Simen_Fuglestad is
	signal internal_register : std_logic;
begin

	p_oppg1a : process(clk) is
	begin
		if rising_edge(clk) then
			internal_register <= A and B;
			Y <= internal_register or C;
		end if;
	end process;
		
end architecture rtl;