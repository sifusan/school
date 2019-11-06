library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parkeringshus is
	port(
			CLOCK_50 : in std_logic;
			KEY		: in std_logic_vector(3 downto 0);
			LEDR		: out std_logic_vector(17 downto 0);
			SW			: in std_logic_vector(17 downto 0);
			HEX0,
			HEX1,
			HEX2,
			HEX3,
			HEX4,
			HEX5,
			HEX6,
			HEX7		: out std_logic_vector(6 downto 0)
	);
end entity parkeringshus;

architecture RTL of parkeringshus is

signal reset, synched_reset						: std_logic;
signal sensor_inn, sensor_ut 						: std_logic;
signal synched_sensor_inn 							: std_logic;
signal synched_sensor_ut							: std_logic;
signal input_Q_inn, input_Q_ut 					: std_logic;
signal input_QQ_inn, input_QQ_ut 				: std_logic;
signal puls_inn_input, puls_ut_input			: std_logic;
signal puls_inn_output, puls_ut_output			: std_logic;
signal antall_biler									: std_logic_vector(7 downto 0);
signal bcd_out											: std_logic_vector(11 downto 0);
signal hallo, enable_out							: std_logic;

component antiprell is
	port (
				clk 			: in std_logic;
				reset_clk 	: in std_logic;
				input			: in std_logic;
				passering 	: out std_logic
	);
end component;

component Flanke_detektor is
	port (
			clock_50		: in std_logic;
			reset_clk 	: in std_logic;
			sig_inn		: in std_logic;
			sig_inn_ne	: out std_logic
	);
end component;


component reset_sync is
	port(
			clk 			: in std_logic;
			rst_n 		: in std_logic;
			rst_clk_n 	: out std_logic
		);
end component;

component tell_biler is
	port(
			clock_50 		: in std_logic;
			reset_clk		: in std_logic;
			bil_inn			: in std_logic;
			bil_ut			: in std_logic;
			antall_biler	: out std_logic_vector(7 downto 0)
	);
end component;

component ROM_7_seg is
    port(
        adresse : in std_logic_vector(3 downto 0);
        HEX     : out std_logic_vector(0 to 6)
    );
end component;

component bin2bcd is
	port(
			bin_in 	: in std_logic_vector(7 downto 0);
			bcd_out 	: out std_logic_vector(11 downto 0)
	);
end component;

component Enable_gen Is
	port ( clock_50 		: in std_logic;
			 resetn 			: in std_logic;
			 velg_enable	: in std_logic_vector(2 downto 0);
			 enable			: buffer std_logic
	);
end component;

begin
	sensor_inn 	<= KEY(1);
	sensor_ut 	<= KEY(2);
	reset 		<= KEY(3);
	LEDR(7 downto 0) <= antall_biler;
	LEDR(17) <= hallo;
	
	enable_gen_comp : Enable_gen
		port map(
			clock_50 	=> CLOCK_50,
			resetn  	=> synched_reset,
			velg_enable => "001",
			enable  => enable_out
		);

	reset_sync_comp : reset_sync
		port map(
			clk 			=> CLOCK_50,
			rst_n 		=> reset,
			rst_clk_n 	=> synched_reset
		);
	
	anti_prell_inn : antiprell
		port map(
			clk 			=>  CLOCK_50,
			reset_clk 	=> synched_reset,
			input			=> synched_sensor_inn,
			passering 	=> puls_inn_input
		);
		
	anti_prell_ut : antiprell
		port map(
			clk 			=>  CLOCK_50,
			reset_clk 	=> synched_reset,
			input 		=> synched_sensor_ut,
			passering 	=> puls_ut_input
		);
		
		
	flanke_detektor_inn : Flanke_detektor
		port map(
			clock_50 	=> CLOCK_50,
			reset_clk 	=> synched_reset,
			sig_inn 		=> puls_inn_input,
			sig_inn_ne	=> puls_inn_output
		);
		
	flanke_detektor_ut : Flanke_detektor
		port map(
			clock_50 	=> CLOCK_50,
			reset_clk 	=> synched_reset,
			sig_inn 		=> puls_ut_input,
			sig_inn_ne	=> puls_ut_output
		);
	
	bill_teller : tell_biler
		port map(
			clock_50 		=> CLOCK_50,
			reset_clk 		=> synched_reset,
			bil_inn 			=> puls_inn_output,
			bil_ut 			=> puls_ut_output,
			antall_biler 	=> antall_biler
		);
		
	bin2bcd_comp : bin2bcd
		port map(
			bin_in 	=> antall_biler,
			bcd_out	=> bcd_out
		);
		
	ROM_7_seg_0 : ROM_7_seg
		port map(
			adresse	=> bcd_out(3 downto 0),
			HEX		=> HEX0
		);
		
	ROM_7_seg_1 : ROM_7_seg
		port map(
			adresse	=> bcd_out(7 downto 4),
			HEX		=> HEX1
		);
		
	ROM_7_seg_2 : ROM_7_seg
		port map(
			adresse	=> bcd_out(11 downto 8),
			HEX		=> HEX2
		);
			
	
	p_sync_signaler : process(CLOCK_50) is
	begin
		if rising_edge(CLOCK_50) then
			input_Q_inn <= sensor_inn;
			input_QQ_inn <= input_Q_inn;
			synched_sensor_inn <= input_QQ_inn;
			
			input_Q_ut <= sensor_ut;
			input_QQ_ut <= input_QQ_ut;
			synched_sensor_ut <= input_QQ_ut;
		end if;
	end process;
	
	blink : process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if enable_out = '1' then
				hallo <= not hallo;
			end if;
		end if;
	end process blink;
end architecture;