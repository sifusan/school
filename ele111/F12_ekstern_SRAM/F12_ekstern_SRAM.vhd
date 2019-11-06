library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity F12_ekstern_SRAM is
	port(
			SW 			: in std_logic_vector(17 downto 0);
			KEY 			: in std_logi_vector(3 downto 0);
			LEDR			: out std_logic_vector(17 downto 0);
			LEDG			: out std_logic_vector(7 downto 0);
			HEX0, HEx1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic(6 downto 0);
			SRAM_ADDR 	: out std_logicC_vector(19 downto 0);
			SRAM_DQ		: inout std_logic_vector(15 downto 0);
			SRAM_WE_N	: buffer std_logic_vector;
			SRAM_CE_N,
			SRAM_OE_N,
			SRAM_UB_N,
			SRAM_LB_N	: out std_logic
	);

end entity F12_ekstern_SRAM;

architecture rtl of F12_ekstern_SRAM is
	signal data_ut 	: std_logic_vector(7 downto 0);
	signal data_inn 	: std_logic_vector(7 downto 0);
	signal adresse 	: std_logic_vector(4 downto 0);
	
begin
	SRAM_CE_N <= '0';
	SRAM_OE_N <= '0';
	SRAM_UB_N <= '0';
	SRAM_LB_N <= '0';
	
	SRAM_WE_N <= SW(17);
	
	adresse 	<= SW(15 downto 11);
	data_inn <= SW(7 downto 0);
	
	data_ut 	<= SRAM_DQ(7 downto 0);
	SRAM_DQ  <= "00000000" & data_inn when SRAM_WE_N = '0' else (other => 'Z');
	
	SRAM_ADDR(19 downto 5) <= (others => '0');
	SRAM_ADDR(4 downto 0) <= adresse;
	
	dekoder0 : ROM_7_seg
		port map(
				adresse => data_ut(3 downto 0),
				HEX => HEX0;
		);
		
	dekoder1 : ROM_7_seg
		port map(
				adresse => data_ut(7 downto 4),
				HEX => HEX1;
		);
		
	dekoder4 : ROM_7_seg
		port map(
				adresse => data_inn(3 downto 0),
				HEx => HEX4;
		);
		
	dekoder5 : ROM_7_seg
		port map(
				adresse => data_inn(7 downto 4),
				HEX => HEX5;
		);
		
	dekoder6 : ROM_7_seg
		port map(
				adresse => adresse(3 downto 0),
				HEX => HEX6;
		);
		
	dekoder7 : ROM_7_seg
		port map(
				adresse => "000" & adresse(4),
				HEX => HEX7;
		);
	
end architecture rtl;