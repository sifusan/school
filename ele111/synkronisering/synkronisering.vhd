library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synkronisering is
	port (
			clk 		: in std_logic;
			data_in 	: in std_logic;
			data_out : out std_logic
	);
end entity synkronisering;

architecture RTL of synkronisering is
	signal dff 	: std_logic;
	signal dff1 : std_logic;
	signal dff2 : std_logic;
begin
	p_sync_input : process(clk) is
	begin
		if rising_edge(clk) then
			dff <= data_in;
		end if;
	end process;
	
	p_tovipper : process(clk) is
	begin
		if rising_edge(clk) then
			dff1 <= data_in;
			dff2 <= dff1;
		end if;
	end process;
	
	data_out <= dff2;
end architecture RTL;