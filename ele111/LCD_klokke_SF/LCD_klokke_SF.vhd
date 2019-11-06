
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LCD_klokke_SF is
port(
		clock_50 	 		: in 		std_logic;
		SW 						: in 		std_logic_vector(17 downto 0);-- Hex_Display_data
		KEY						: in 		std_logic_vector(3 downto 0);
		LCD_RS,LCD_EN : out 	std_logic;
		LCD_RW 				: out 	std_logic;
		LCD_ON				: out 	std_logic;
		LCD_DATA			: inout std_logic_vector(7 downto 0);
		HEX0,
		HEX1,
		HEX2,
		HEX3,
		HEX4,
		HEX5 					: out std_logic_vector(6 downto 0);
		LEDR 					: out std_logic_vector(17 downto 0)
	);
end;

architecture rtl of LCD_klokke_SF is

component LCD_Display is
	port(	reset, clk_48Mhz			: in		STD_LOGIC;
		 		Hex_Display_Data			: in  	STD_LOGIC_VECTOR(23 downto 0);
				Hex_Display_rundetid 	: in 		STD_LOGIC_VECTOR(15 downto 0);
		 		LCD_RS, LCD_E					: out		STD_LOGIC;
		 		LCD_RW								: out   STD_LOGIC;
		 		DATA_BUS							: inout	STD_LOGIC_VECTOR(7 downto 0)
	);
end component LCD_Display;

component Reset_synchronizer is
	port ( 	clk					: in std_logic;
		 			reset_key3 	: in std_logic;
		 			reset_sync	: out std_logic
	);-- NB! sjekk hvilke navn du har benyttet!
end component;

component L4_klokke_SF is
	port (
			CLOCK_50 	: in std_logic;
			KEY 			: in std_logic_vector(3 downto 0);
			SW				: in std_logic_vector(2 downto 0);
			resetn    : in std_logic;
			start 		: in std_logic;
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
end component;

component Enable_gen Is
	port (	clock_50 			: in std_logic;
			 		resetn 				: in std_logic;
			 		velg_enable		: in std_logic_vector(2 downto 0);
			 		enable				: buffer std_logic
	);
end component;

component ROM_7_seg is
    port(
        adresse : in std_logic_vector(3 downto 0);
        HEX     : out std_logic_vector(0 to 6)
    );
end component ROM_7_seg;

SIGNAL bcd 														:	std_logic_vector(23 downto 0);
SIGNAL synched_reset2, synched_reset3	: std_logic;
signal reset_key2, reset_key3					: std_logic;

signal hallo 				: std_logic;

--signaler fra lab4
signal clk_50 			: std_logic;
signal enable_in 		: std_logic_vector(2 downto 0);
signal enable_temp 	: std_logic_vector(2 downto 0);
signal resetn				: std_logic;
signal t 						: integer range 0 to 50000000;
signal enable_out		: std_logic;
signal sekund_std		: std_logic_vector(5 downto 0);
signal minutt_std		: std_logic_vector(5 downto 0);
signal timer_std		: std_logic_vector(4 downto 0);
signal bcd_sek,
			 bcd_min,
			 bcd_tim			: std_logic_vector(7 downto 0);

signal flanke_Q0, flanke_QQ0, flanke_QQQ0  : std_logic;
signal flanke_Q1, flanke_QQ1, flanke_QQQ1  : std_logic;
signal enable_lagr_rundetid, enable_les_av : std_logic;

signal start_klokke : std_logic := '0';

type ram_array is array (0 to 31) of std_logic_vector(23 downto 0);
signal memory : ram_array;

signal antall_runder : integer range 0 to 31 := 0;
signal running : std_logic := '0';

signal mem_rundetid : std_logic_vector(23 downto 0);

signal intern_rundetid : std_logic_vector(15 downto 0);

signal teller : integer range 0 to 999;
begin

enable_gen_1 : Enable_gen
	port  map(
		clock_50 	=> CLOCK_50,
		resetn 		=> synched_reset2,
		velg_enable => "000",
		enable 		=> enable_out
);

digital_klokke : L4_klokke_SF
	port map (	CLOCK_50 					=> clock_50,
							KEY 							=> KEY,
							SW 								=> SW(17 downto 15),
							resetn  				  => synched_reset2,
							start							=> start_klokke,
							HEX0							=> HEX0,
							HEX1							=> HEX1,
							HEX2							=> HEX2,
							HEX3							=> HEX3,
							HEX4							=> HEX4,
							HEX5							=> HEX5,
							bcd_timer_out 		=> bcd_tim,
							bcd_minutter_out	=> bcd_min,
							bcd_sekunder_out 	=> bcd_sek
	);

reset_synkroniseres_2 : Reset_synchronizer
	port map (	clk 				=> clock_50,
							reset_key3 	=> reset_key2,
							reset_sync 	=> synched_reset2
	);

	reset_synkroniseres_3 : Reset_synchronizer
		port map (	clk 				=> clock_50,
								reset_key3 	=> reset_key3,
								reset_sync 	=> synched_reset3
		);

--Kobler til LCD displayet
lcd: LCD_Display
	port map (	reset 						=> synched_reset3,
							clk_48Mhz					=> CLOCK_50,
		 					Hex_Display_Data	=> bcd,
							Hex_Display_rundetid => intern_rundetid,
		 					LCD_RS 						=> LCD_RS,
							LCD_E							=> LCD_EN,
							LCD_RW						=> LCD_RW,
							DATA_BUS 					=> LCD_data
	);

	intern_rundetid <= (SW(7 downto 0)) & mem_rundetid(7 downto 0); -- suppress modelsim error

	LEDR(17) <= hallo;
	LCD_ON <= '1';
	bcd <= bcd_tim & bcd_min & bcd_sek;
	reset_key3 <= KEY(3);
	reset_key2 <= KEY(2);

	blink : process(clock_50)
	begin
		if rising_edge(CLOCK_50) then
			if enable_out = '1' then
				hallo <= not hallo;
			end if;
		end if;
	end process blink;

	p_init : process(clock_50)
	begin
		if rising_edge(clock_50) then
			if running = '0' and enable_lagr_rundetid = '1' then
				start_klokke <= '1';
				running <= '1';
			end if;
		end if;
	end process;

	p_stoppeklokke : process(clock_50)
	begin
		if rising_edge(clock_50) then
			if teller < 999 and running = '1' then
				teller <= teller + 1;
			end if;
			if enable_lagr_rundetid = '1' and running = '1' then
				if teller >= 998 then
					memory(antall_runder) <= "0000000000000000" & bcd_sek;
					antall_runder <= antall_runder + 1;
					teller <= 0;
				end if;
			end if;
		end if;
	end process p_stoppeklokke;

	p_les_av : process(clock_50)
	begin
		if rising_edge(clock_50) then
			if enable_les_av = '1' then
				mem_rundetid <= memory(to_integer(unsigned(SW(7 downto 0))));
			end if;
		end if;
	end process;

	p_enable_lagr_runde : process(clock_50) is
	begin
	 	if rising_edge(clock_50) then
			flanke_Q0 <= KEY(0);
			flanke_QQ0 <= flanke_Q0;
			flanke_QQQ0 <= flanke_QQ0;
			enable_lagr_rundetid <= (not KEY(0) and flanke_QQQ0);
		end if;
	end process;

	p_enable_les_av : process(clock_50) is
	begin
		if rising_edge(clock_50) then
			flanke_Q1 <= KEY(1);
			flanke_QQ1 <= flanke_Q1;
			flanke_QQQ1 <= flanke_QQ1;
			enable_les_av <= (not KEY(1) and flanke_QQQ1);
		end if;
	end process;
end;
