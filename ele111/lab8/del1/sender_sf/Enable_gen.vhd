library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Enable_gen Is
	port ( clock_50 		: in std_logic;
			 resetn 			: in std_logic;
			 velg_enable	: in std_logic_vector(2 downto 0);
			 enable			: buffer std_logic
	);
end;

architecture rtl of Enable_gen is

type 		rom 		is array (0 to 7 ) of integer range 0 to 50000000;
constant rom_EN 	: rom := (50_000_000, 12_500_000, 500_000, 50_000, 5000, 500, 50, 5);
signal 	teller 	: integer range 0 to 50000000;

begin
	-- velg 001 peker på plass 1, der legges 12_500_000 så gjør enable 4 ganger i sekundet
process(clock_50)
	begin
		if rising_edge(clock_50) then
			if resetn = '0' then
				teller <= 0;
			else
				teller <= teller + 1;
				if teller = rom_EN(to_integer(unsigned(velg_enable))) then
					enable <= '1';
					teller <= 0;
				else
					enable <= '0';
				end if;
			end if;
		end if;
	end process;
end;
