library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity for_loop is
  port(
    clk : in std_logic;
    A : out std_logic_vector(11 downto 0);
    B : out std_logic_vector(11 downto 0)
    -- tabell_std_A : out array 0 to 31 of std_logic_vector(7 downto 0)
  );
end entity;

architecture RTL of for_loop is
  type tabell is array (0 to 31) of integer range 0 to 255;
  signal tabell_A : tabell := (others=>0);
  signal tabell_B : tabell := (others=>0);
  signal index    : integer := range 0 to 31;
  signal A_sum : integer range 0 to 4096;
  signal B_sum : integer range 0 to 4096;
begin

  p_increment_A : process(clk) is
  begin
    if rising_edge(clk) then
        tabell_A(index) <= tabell_A(index) + 1;
        index <= index + 1;
        A_sum <= A_sum + tabell_A(index);
    end if;
  end process;

  p_increment_B : process(clk) is
  begin
    if rising_edge(clk) then
        for i in 0 to 31 loop
          tabell_B(i) <= tabell_B(i) + 1;
          B_sum <+ B_sum + tabell_B(index);
        end loop;
    end if;
  end process;

A <= std_logic_vector(to_unsigned(A_Sum, 12));
B <= std_logic_vector(to_unsigned(B_Sum, 12));
end architecture RTL;
