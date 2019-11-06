library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lyskryss is
	port (
			CLOCK_50 : in std_logic;
			KEY		: in std_logic_vector(3 downto 0);
			SW			: in std_logic_vector(17 downto 0);
			GPIO		: inout std_logic_vector(35 downto 0);
			LEDR		: out std_logic_vector(17 downto 0)
	);
end entity lyskryss;

architecture RTL of lyskryss is

component Enable_gen Is
	port ( clock_50 		: in std_logic;
			 resetn 			: in std_logic;
			 velg_enable	: in std_logic_vector(2 downto 0);
			 enable			: buffer std_logic
	);
end component;

component reset_sync is
	port(
			clk : in std_logic;
			rst_n : in std_logic;
			rst_clk_n : out std_logic
		);
end component;

signal hallo, enable, reset_in, synched_reset, teller : std_logic;

type tilstand_type is (fase1, fase2, fase3, fase4, fase5, fase6);
type tilstand_array_type is array(0 to 5) of tilstand_type;
constant tilstander : tilstand_array_type :=(fase1, fase2, fase3, fase4, fase5, fase6);

signal tilstand_selector : std_logic_vector(2 downto 0);
signal tilstand : tilstand_type;
signal utsignal : std_logic_vector(5 downto 0);


begin
	LEDR(17) <= hallo;
	reset_in <= KEY(3);
	tilstand <= tilstander(to_integer(unsigned(tilstand_selector)));
	
	Enable_gen_0 : Enable_gen
		port map (
			clock_50 => CLOCK_50,
			resetn => synched_reset,
			velg_enable => SW(2 downto 0),
			enable => enable
		);
		
	reset_sync_0 : reset_sync
		port map (
			clk => CLOCK_50,
			rst_n => reset_in,
			rst_clk_n => synched_reset
		);

	blink : process(CLOCK_50) is
	begin
		if rising_edge(CLOCK_50) then
			if enable = '1' then
				hallo <= not hallo;
			end if;
		end if;
	end process;
	
	p_tilstand : process(CLOCK_50) is
	variable ts : integer := to_integer(unsigned(tilstand_selector));
	begin
		if synched_reset = '0' then
			ts := 0;
		else
			if rising_edge(CLOCK_50) then
				if enable = '1' then
					if ts = 5 then
						ts := 0;
					else
						ts := ts + 1;
					end if;
				end if;
			end if;
		end if;
		tilstand_selector <= std_logic_vector(to_unsigned(ts, 3));
	end process;
			
	p_utsignal : process(tilstand) is
	begin
		case tilstand is
			when fase1 => utsignal <= "000001";
			when fase2 => utsignal <= "000010";
			when fase3 => utsignal <= "000100";
			when fase4 => utsignal <= "001000";
			when fase5 => utsignal <= "010000";
			when fase6 => utsignal <= "100000";
			when others => utsignal <= "000001";
		end case;
	end process;
end architecture RTL;

