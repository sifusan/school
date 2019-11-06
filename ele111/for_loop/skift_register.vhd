library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity skift_register is
  port(
    clk : in std_logic;
    data_inn : in std_logic;
    data_ut : out std_logic
  );
end entity;

architecture RTL of skift_register is
  signal skift_reg_array : std_logic_vector(5 downto 0);

begin
  p_skift : process(clk)
  begin
    if rising_edge(clk) then
      skift_reg_array(0) <= data_inn;
      skift_reg_array(1) <= skift_reg_array(0);
      skift_reg_array(2) <= skift_reg_array(1);
      skift_reg_array(3) <= skift_reg_array(2);
      skift_reg_array(4) <= skift_reg_array(3);
      skift_reg_array(5) <= skift_reg_array(4);
      data_ut <= skift_register(5);
    end if;
  end process;

  p_skift_med_for_loop : process(clk)
  begin
    skift_reg_array(0) <= data_inn;
    for i in 0 to 4 loop
      skift_reg_array(i+1) <= skift_reg_array(i);
    end loop;
    data_ut <= skift_reg_array(5);
  end process;
end architecture RTL;
