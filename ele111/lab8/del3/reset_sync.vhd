library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_sync is
	port(
			clk : in std_logic;
			rst_n : in std_logic;
			rst_clk_n : out std_logic
		);
end entity;

architecture rtl of reset_sync is
	signal dff : std_logic;
begin
	p_sync : process(clk, rst_n) is
	begin
		if rst_n = '0' then
			dff <= '0';
			rst_clk_n <= '0';
		elsif rising_edge(clk) then
			dff <= '1';
			rst_clk_n <= dff;
		end if;
	end process;
end;
