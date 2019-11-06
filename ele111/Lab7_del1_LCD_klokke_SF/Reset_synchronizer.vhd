library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reset_synchronizer is
	port(
			clk : in std_logic;
			reset_key3 : in std_logic;
			reset_sync : out std_logic
		);
end;

architecture rtl of Reset_synchronizer is
	signal dff : std_logic;
begin
	p_sync : process(clk, reset_key3) is
	begin
		if reset_key3 = '0' then
			dff <= '0';
			reset_sync <= '0';
		elsif rising_edge(clk) then
			dff <= '1';
			reset_sync <= dff;
		end if;
	end process;
end;
