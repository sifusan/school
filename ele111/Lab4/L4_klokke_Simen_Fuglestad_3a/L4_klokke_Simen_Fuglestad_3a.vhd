library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity L4_klokke_ERL_SF_3a is
	port (
			CLOCK_50 	: in std_logic;
			KEY 			: in std_logic_vector(3 downto 0);
			SW				: in std_logic_vector(2 downto 0);
			LEDR 			: out std_logic_vector(17 downto 0);
			HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : out std_logic_vector(6 downto 0)
	);
end entity L4_klokke_ERL_SF_3a;

architecture RTL of L4_klokke_ERL_SF_3a is

	component Enable_gen Is
		port (
				clock_50 		: in std_logic;
				resetn 			: in std_logic;
				velg_enable	: in std_logic_vector(2 downto 0);
				Enable			: out std_logic
		);
	end component;

	signal hallo 				: std_logic := '0';
	signal clk_50, resetn, enable_out 			: std_logic;
	signal enable_in 		: std_logic_vector(2 downto 0);

begin
	LEDR(17) <= hallo;
	clk_50 <= CLOCK_50;
	resetn <= KEY(0);
	enable_in <= SW(2 downto 0);

	enable_gen_1 : Enable_gen
		port  map(
			clock_50 	=> clk_50,
			resetn 		=> resetn,
			velg_enable => enable_in,
			enable 		=> enable_out
	);

	blink : process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if enable_out = '1' then
				hallo <= not hallo;
			end if;
		end if;
	end process blink;
end architecture RTL;
