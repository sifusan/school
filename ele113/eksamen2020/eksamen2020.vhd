library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--Dette er en besvarelse til oppg 2 eksamen 2020

entity eksamen2020 is
  port (
    CLK : in std_logic;
    RST : in std_logic;
    PM_IN : in std_logic;
    CS  : in std_logic;
    WR  : in std_logic;
    RD  : in std_logic;
    ADR : in std_logic_vector(1 downto 0);
    WR_DATA : in std_logic_vector(31 downto 0);
    RD_DATA : out std_logic_vector(31 downto 0)
  );
end entity;

architecture RTL of eksamen2020 is

  --Registersignaler
  signal PM_EN : std_logic;
  signal PM_PRE : std_logic_vector(7 downto 0);
  signal PM_CNT : std_logic_vector(31 downto 0);
  signal PM_IN_I : std_logic;
  signal PM_OF   : std_logic;
  signal PM_DONE : std_logic;

  --signaler til flankedeteksjon
  signal POS_EDGE : std_logic;
  signal POS_EDGE_Q : std_logic;
  signal POS_EDGE_QQ : std_logic;

  signal PM_PRE_CNT : integer range 0 to 256;

  signal in_progress : std_logic;
  signal clk_enable : std_logic;
  signal pos_edge_cnt : integer range 0 to 2;


begin

  --PM_EN register
  process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        PM_EN <= '0';
      elsif CS = '1' and ADR = "00" and WR = '1' then
        PM_EN <= WR_DATA(0);
      else
        PM_EN <= '0';
      end if;
    end if;
  end process;

  --PM_PRE register
  process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        PM_PRE <= (others => '0');
      elsif CS = '1' and ADR = "00" and WR = '1' then
        PM_PRE <= WR_DATA(15 downto 8);
      end if;
    end if;
  end process;

  --READ registre
  process(ADR, CS, PM_EN, PM_PRE, PM_IN_I, PM_OF, PM_DONE)
  begin
    case ADR is
      when "00" =>
        RD_DATA <= X"0000" & PM_PRE & "0000000" & PM_EN;
      when "01" =>
        RD_DATA <= PM_CNT;
      when "10" =>
        RD_DATA <= X"0000000" & "0" & PM_IN_I & PM_OF & PM_DONE;
      when "11" =>
        RD_DATA <= X"00000000"; --ingen data i dette addressefeltet
      end case;
    end process;

    PM_IN_I <= PM_IN;

    positiv_flanke_detektor : process(CLK)
    begin
      if rising_edge(CLK) then
        if RST = '1' then
          POS_EDGE <= '0';
          POS_EDGE_Q <= '0';
          POS_EDGE_QQ <= '0';
        elsif PM_DONE = '0' then
          POS_EDGE_Q <= PM_IN;
          POS_EDGE_QQ <= POS_EDGE_Q;
          if (POS_EDGE_Q and (not POS_EDGE_QQ)) = '1' then
            POS_EDGE <= '1';
          else
            POS_EDGE <= '0';
          end if;
        end if;
      end if;
    end process;

    pm_done_proc : process(CLK)
    begin
      if rising_edge(CLK) then
        if RST = '1' then
          PM_DONE <= '1';
        else
          if PM_EN = '1' then
            PM_DONE <= '0';
          elsif POS_EDGE <= '1' and in_progress = '1' then
            PM_DONE <= '1';
          end if;
        end if;
      end if;
    end process;

    --helper process to determine when measurement is in progress
    in_progress_proc : process(CLK)
    begin
      if rising_edge(CLK) then
        if PM_DONE = '0' and POS_EDGE = '1' and in_progress = '0' then
          in_progress <= '1';
        elsif PM_DONE = '0' and POS_EDGE = '1' and in_progress = '1' then
          in_progress <= '0';
        end if;
      end if;
    end process;


    pm_logikk : process(CLK)
    begin
      if rising_edge(CLK) then
        if RST = '1' or PM_EN = '1' then
          PM_CNT <= (others => '0');
        else
          if clk_enable = '1' then
            PM_CNT <= PM_CNT + 1;
            if PM_CNT = X"FFFFFFFF" then
              PM_OF <= '1';
            end if;
          end if;
        end if;
      end if;
    end process;

    pm_prescaler : process(CLK)
    begin
      if rising_edge(CLK) then
        if RST = '1' or PM_EN = '1' then
          PM_PRE_CNT <= 0;
        elsif in_progress = '1' then
          PM_PRE_CNT <= PM_PRE_CNT + 1;
          if PM_PRE_CNT = PM_PRE then
            clk_enable <= '1';
            PM_PRE_CNT <= 0;
          else
            clk_enable <= '0';
          end if;
        end if;
      end if;
    end process;



end architecture;
