library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity L4_klokke_SF is
	port (
			CLOCK_50 	: in std_logic;
			KEY 			: in std_logic_vector(3 downto 0);
			SW				: in std_logic_vector(2 downto 0);
			resetn		: in std_logic;
			start			: in std_logic;
			LEDR 			: out std_logic_vector(17 downto 0);
			HEX0,
			HEX1,
			HEX2,
			HEX3,
			HEX4,
			HEX5			: out std_logic_vector(6 downto 0);
			bcd_timer_out,
			bcd_minutter_out,
			bcd_sekunder_out : out std_logic_vector(7 downto 0)
	);
end entity L4_klokke_SF;

architecture RTL of L4_klokke_SF is

	component Enable_gen is
		port (
				clock_50 	: in std_logic;
				resetn 		: in std_logic;
				velg_enable	: in std_logic_vector(2 downto 0);
				Enable		: out std_logic
		);
	end component;

	component bin2bcd is
	port(
			bin_in 	: in std_logic_vector(6 downto 0);
			bcd_out 	: out std_logic_vector(7 downto 0)
	);
	end component;

	component ROM_7_seg is
    port(
        adresse : in std_logic_vector(3 downto 0);
        HEX     : out std_logic_vector(0 to 6)
    );
	end component;

	signal hallo 			  : std_logic;
	signal clk_50 			: std_logic;
	signal enable_in 		: std_logic_vector(2 downto 0);
	signal enable_out		: std_logic;
	signal sekund_std		: std_logic_vector(5 downto 0);
	signal minutt_std		: std_logic_vector(5 downto 0);
	signal timer_std		: std_logic_vector(4 downto 0);
	signal bcd_sek,
				bcd_min,
				bcd_tim		: std_logic_vector(7 downto 0);
	signal bin_in_1, bin_in_2, bin_in_3 : std_logic_vector(6 downto 0);
begin
	LEDR(17) <= hallo;
	clk_50 <= CLOCK_50;
	--resetn <= KEY(0);
	enable_in <= SW(2 downto 0);

	LEDR(5 downto 0) 		<= sekund_std(5 downto 0);
	LEDR(11 downto 6) 	<= minutt_std(5 downto 0);
	LEDR(16 downto 12) 	<= timer_std(4 downto 0);

	bcd_timer_out <= bcd_tim;
	bcd_minutter_out <= bcd_min;
	bcd_sekunder_out <= bcd_sek;

	bin_in_1 <= '0' & sekund_std; --trenger disse for å unngå error i modelsim
	bin_in_2 <= '0' & minutt_std;
	bin_in_3 <= "00" & timer_std;

	enable_gen_1 : Enable_gen
		port  map(
			clock_50 	=> clk_50,
			resetn 		=> resetn,
			velg_enable => enable_in,
			enable 		=> enable_out
	);

	bin2bcd_0 : bin2bcd
		port map(
			bin_in => bin_in_1,
			bcd_out => bcd_sek
	);

	bin2bcd_1 : bin2bcd
		port map(
			bin_in => bin_in_2,
			bcd_out => bcd_min
	);

	bin2bcd_2 : bin2bcd
		port map(
			bin_in => bin_in_3,
			bcd_out => bcd_tim
	);

	dekoder_0 : ROM_7_seg
		port map(
			adresse => bcd_sek(3 downto 0),
			HEX => HEX0
	);

	dekoder_1 : ROM_7_seg
		port map(
			adresse => bcd_sek(7 downto 4),
			HEX => HEX1
	);

	dekoder_2 : ROM_7_seg
		port map(
			adresse => bcd_min(3 downto 0),
			HEX => HEX2
	);

	dekoder_3 : ROM_7_seg
		port map(
			adresse => bcd_min(7 downto 4),
			HEX => HEX3
	);

	dekoder_4 : ROM_7_seg
		port map(
			adresse => bcd_tim(3 downto 0),
			HEX => HEX4
	);

	dekoder_5 : ROM_7_seg
		port map(
			adresse => bcd_tim(7 downto 4),
			HEX => HEX5
	);
	tid : process(clk_50)
	variable s : integer := to_integer(unsigned(sekund_std));
	variable m : integer := to_integer(unsigned(minutt_std));
	variable t : integer := to_integer(unsigned(timer_std));
	begin
		if rising_edge(clk_50) then
			if resetn = '0' then
				s := 0;
				m := 0;
				t := 0;
			elsif enable_out = '1' and start = '1' then
				if s < 59 then
					s := s + 1;
				else
					s := 0;
					m := m + 1;
					if m = 60 then
						m := 0;
						t := t + 1;
						if t = 24 then
							t := 0;
						end if;
					end if;
				end if;
			end if;

			sekund_std 	<= std_logic_vector(to_unsigned(s, sekund_std'length));
			minutt_std 	<= std_logic_vector(to_unsigned(m, minutt_std'length));
			timer_std 	<= std_logic_vector(to_unsigned(t, timer_std'length));
		end if;
	end process tid;

	blink : process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if enable_out = '1' then
				hallo <= not hallo;
			end if;
		end if;
	end process blink;
end architecture RTL;
