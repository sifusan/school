
library ieee;
use ieee.std_logic_1164.all;

ENTITY LCD_klokke_SF IS
PORT(
		clock_50 	 		: in 		std_logic;
		SW 						: in 		std_logic_vector(17 downto 0);-- Hex_Display_data
		KEY						: in 		std_logic_vector(3 downto 0);
		LCD_RS,LCD_EN : out 	std_logic;
		LCD_RW 				: out 	std_logic;
		LCD_ON				: out 	std_logic;
		LCD_DATA			: INOUT std_logic_vector(7 downto 0);
		HEX0,
		HEX1,
		HEX2,
		HEX3,
		HEX4,
		HEX5 					: out std_logic_vector(6 downto 0);
		LEDR 					: out std_logic_vector(17 downto 0)
	);
end;

ARCHITECTURE rtl of LCD_klokke_SF IS

COMPONENT LCD_Display IS
	PORT(	reset, clk_48Mhz	: IN		STD_LOGIC;
		 		Hex_Display_Data	: IN  	STD_LOGIC_VECTOR(23 DOWNTO 0);
		 		LCD_RS, LCD_E			: OUT		STD_LOGIC;
		 		LCD_RW						: OUT   STD_LOGIC;
		 		DATA_BUS					: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT LCD_Display;

COMPONENT Reset_synchronizer IS
	PORT ( 	clk					: IN std_logic;
		 			reset_key3 	: IN std_logic;
		 			reset_sync	: OUT std_logic
	);-- NB! sjekk hvilke navn du har benyttet!
END COMPONENT;

COMPONENT L4_klokke_SF IS
	PORT (
			CLOCK_50 	: in std_logic;
			KEY 			: in std_logic_vector(3 DOWNTO 0);
			SW				: in std_logic_vector(2 DOWNTO 0);
			resetn    : in std_logic;
			LEDR 			: out std_logic_vector(17 DOWNTO 0);
			HEX0,
			HEX1,
			HEX2,
			HEX3,
			HEX4,
			HEX5			: out std_logic_vector(6 DOWNTO 0);
			bcd_timer_out,
			bcd_minutter_out,
			bcd_sekunder_out : out std_logic_vector(7 downto 0)
	);
END COMPONENT;

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

SIGNAL bcd 														:	std_logic_vector(23 DOWNTO 0);
signal reset2, reset3 								: std_logic;
SIGNAL reset_key3, reset_key2, reset	: std_logic;

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

BEGIN

LEDR(17) <= hallo;

enable_gen_1 : Enable_gen
	port  map(
		clock_50 	=> CLOCK_50,
		resetn 		=> reset,
		velg_enable => "000",
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


LCD_ON <= '1';
-- bcd <= "100000" & SW(17 DOWNTO 0);
bcd <= bcd_tim & bcd_min & bcd_sek;
reset_key3 <= KEY(3);
reset_key2 <= KEY(2);

digital_klokke : L4_klokke_SF
	port map (	CLOCK_50 					=> clock_50,
							KEY 							=> KEY,
							SW 								=> SW(17 downto 15),
							resetn  				  => reset3,
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

reset_synkroniseres_2: Reset_synchronizer
	port map (	clk 				=> clock_50,
							reset_key3 	=> reset_key2,
							reset_sync 	=> reset2
	);

	reset_synkroniseres_3: Reset_synchronizer
		port map (	clk 				=> clock_50,
								reset_key3 	=> reset_key3,
								reset_sync 	=> reset3
		);

--Kobler til LCD displayet
lcd: LCD_Display
	port map (	reset 						=> reset2,
							clk_48Mhz					=> CLOCK_50,
		 					Hex_Display_Data	=> bcd,
		 					LCD_RS 						=> LCD_RS,
							LCD_E							=> LCD_EN,
							LCD_RW						=> LCD_RW,
							DATA_BUS 					=> LCD_data
	);
END;
