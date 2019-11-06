library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity antiprell is
	port(
		clk 			: in std_logic;
		reset_clk 	: in std_logic;
		input 		: in std_logic;
		passering	: out std_logic
	);
end entity antiprell;

architecture RTL of antiprell is
	-- deklarerer tilstander
	type 		tilstand_type is (start, vent, funnet_1, ligger_hoegt, til_null);
	signal 	tilstand : tilstand_type;
	signal	teller 	: integer range 0 to 1000;
begin
	-- process for tilstandsmaskin
	p_tilstandsmaskin : process(clk) is
	begin
		if rising_edge(clk) then
			if reset_clk = '0' then
				tilstand <= start;
			else
				case tilstand is
					when start 			=>
						tilstand <= vent;
						teller <= 0;

					when vent 			=>
						teller <= 0;
						if input = '1' then
							tilstand <= funnet_1;
						else
							tilstand <= vent; -- not really necessary
						end if;

					when funnet_1 		=>
						teller <= teller + 1;
						if input = '1' then
							if teller >= 999 then
								tilstand <= ligger_hoegt;
							else
								tilstand <= funnet_1;
							end if;
						else
							tilstand <= vent;
						end if;

					when ligger_hoegt =>
						teller <= 0;
						if input = '1' then
							tilstand <= ligger_hoegt;
						else
							tilstand <= til_null;
						end if;

					when til_null		=>
						teller <= teller + 1;
						if input = '1' then
							tilstand <= ligger_hoegt;
						else
							if teller >= 999 then
								tilstand <= vent;
							else
								tilstand <= til_null;
							end if;
						end if;
				end case;
			end if;
		end if;
	end process;

	p_passering : process(tilstand) is
	begin
		case tilstand is
			when start => 			passering <= '0';
			when vent => 			passering <= '0';
			when funnet_1 => 		passering <= '0';
			when ligger_hoegt => passering <= '1';
			when til_null => 		passering <= '1';
			when others =>			tilstand <= start;
		end case;
	end process;
end architecture;
