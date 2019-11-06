library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Simen_Fuglestad_L3_del4 is
	port(
			SW 			: in std_logic_vector(17 downto 0);
			KEY 			: in std_logic_vector(3 downto 0);
			LEDR			: out std_logic_vector(17 downto 0);
			LEDG			: out std_logic_vector(7 downto 0);
			HEX0, HEx1,
			HEX2, HEX3,
			HEX4, HEX5,
			HEX6, HEX7 	: out std_logic_vector(0 to 6);
			SRAM_ADDR 	: out std_logic_vector(19 downto 0);
			SRAM_DQ		: inout std_logic_vector(15 downto 0);
			SRAM_WE_N	: buffer std_logic;
			SRAM_CE_N,
			SRAM_OE_N,
			SRAM_UB_N,
			SRAM_LB_N	: out std_logic
	);

end entity Simen_Fuglestad_L3_del4;

architecture rtl of Simen_Fuglestad_L3_del4 is
	signal data_out 	: std_logic_vector(7 downto 0);
	signal data_in 	: std_logic_vector(7 downto 0);
	signal address 	: std_logic_vector(4 downto 0);
	signal clk, wr,
				reset,
				CE			: std_logic;
	
	component ROM_7_seg is
	port(
			address 	: in std_logic_vector(3 downto 0);
			HEX 		: out std_logic_vector(6 downto 0)
		);
end component ROM_7_seg;
	
begin
	SRAM_CE_N <= '0';
	SRAM_OE_N <= '0';
	SRAM_UB_N <= '0';
	SRAM_LB_N <= '0';
	
	SRAM_WE_N <= SW(17);
	
	
	address 	<= SW(15 downto 11);
	data_in 	<= SW(7 downto 0);
	
	data_out <= SRAM_DQ(7 downto 0);
	
	SRAM_DQ  <= "00000000" & data_in when SRAM_WE_N = '0' else (others => 'Z');
	
	SRAM_ADDR(19 downto 5) <= (others => '0');
	SRAM_ADDR(4 downto 0) 	<= address;
	
	LEDG(0) <= wr;
	
	dekoder0 : ROM_7_seg
		port map(
				address => data_out(3 downto 0),
				HEX => HEX0
		);
		
	dekoder1 : ROM_7_seg
		port map(
				address => data_out(7 downto 4),
				HEX => HEX1
		);
		
	dekoder4 : ROM_7_seg
		port map(
				address => data_in(3 downto 0),
				HEx => HEX4
		);
		
	dekoder5 : ROM_7_seg
		port map(
				address => data_in(7 downto 4),
				HEX => HEX5
		);
		
	dekoder6 : ROM_7_seg
		port map(
				address => address(3 downto 0),
				HEX => HEX6
		);
		
	dekoder7 : ROM_7_seg
		port map(
				address => "000" & address(4),
				HEX => HEX7
		);
	
end architecture rtl;