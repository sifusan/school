library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Simen_Fuglestad_L3_del2 is
port(
		SW 	: in std_logic_vector(17 downto 0);
		KEY 	: in std_logic_vector(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7  	: out std_logic_vector(0 to 6)
	);
end Simen_Fuglestad_L3_del2;
	
architecture RTL of Simen_Fuglestad_L3_del2 is
	signal out_data 		: std_logic_vector(7 downto 0);
	signal in_data 		: std_logic_vector(7 downto 0);
	signal address			: std_logic_vector(4 downto 0);
	signal clock, wr		: std_logic;
	
	
	component ram32x8_sf is
		port(
			clk		: in std_logic;
			WR			: in std_logic;
			address	: in std_logic_vector(4 downto 0);
			data_in	: in std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0)
		);
	end component ram32x8_sf;
	
	
	component ROM_7_seg is
		port (
			address 	: IN std_logic_vector(3 downto 0);
			HEX 		: OUT std_logic_vector(6 downto 0)
		);
	end component ROM_7_seg;
	
	
begin
	in_data <= SW(7 downto 0);
	wr <= SW(17);
	clock <= KEY(0);
	address <= SW(15 downto 11);
	

	ram32x8_comp : ram32x8_sf
	port map(
		data_in => in_data,
		data_out => out_data,
		WR => wr,
		clk => clock,
		address => address
	);
	
	rom_7_seg_0 : ROM_7_seg
		port map(
			address => out_data(3 downto 0),
			HEX => HEX0
		);
	
	rom_7_seg_1 : ROM_7_seg
		port map(
			address => out_data(7 downto 4),
			HEX => HEx1
		);
		
	--Use this to shut down hex2
	rom_7_seg_2 : ROM_7_seg
		port map(
			address => "ZZZZ",
			HEX => HEX2
		);
		
	--Use this to shut down hex3
	rom_7_seg_3 : ROM_7_seg
		port map(
			address => "ZZZZ",
			HEX => HEX3
		);
	
	rom_7_seg_4 : ROM_7_seg
		port map(
			address => in_data(3 downto 0),
			HEX => HEX4
	);
	
	rom_7_seg_5 : ROM_7_seg
		port map(
			address => in_data(7 downto 4),
			HEX => HEX5
	);
	
	rom_7_seg_6 : ROM_7_seg
		port map(
			address => address(3 downto 0),
			HEX => HEX6
	);
	
	rom_7_seg_7 : ROM_7_seg
		port map(
			address => "000" & address(4),
			HEX => HEX7
	);
end;