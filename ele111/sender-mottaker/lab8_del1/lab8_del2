library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab8_del1 is
  port(
      CLOCK_50  : in      std_logic;
      KEY       : in      std_logic_vector(3 downto 0);
      SW        : in      std_logic_vector(17 downto 0);
      GPIO      : inout   std_logic_vector(35 downto 0);
      LEDR      : out     std_logic_vector(17 downto 0);
      LEDG      : out     std_logic_vector(7 downto 0)
  );
end entity lab8_del1;

architecture rtl of lab8_del1 is
  component baudarate_gen is
  port(
        CLOCK_50      : in std_logic;
        resetn        : in std_logic;
        velg_baudrate : in std_logic_vector(2 downto 0);
        start_teller  : in std_logic
        baud_enable_m : out std_logic;
        baud_enable_s : out std_logic
  );
end component baudarate_gen;
  component Enable_gen is
    port (
          clock_50    : in std_logic;
          resetn      : in std_logic;
          velg_enable : in std_logic_vector(2 downto 0);
          enable      : out std_logic
    );
  end component;

  component reset_sync is
    port(
    			clk        : in std_logic;
    			rst_n      : in std_logic;
    			rst_clk_n  : out std_logic
    );
  end component;

  signal resetn         : std_logic;
  signal hallo_enable   : std_logic;
  signal hallo          : std_logic;
  signal sender         : std_logic;
  signal mottatt_blink  : std_logic;
  signal start_teller   : std_logic;
  signal vippe_a, vippe_b : std_logic;
begin
  Enable_gen_inst : Enable_gen
    port map (
              clock_50    => CLOCK_50,
              resetn      => resetn,
              velg_enable => "000",
              enable       => hallo_enable
    );

  reset_sync_inst : reset_sync
    port map (
              clk         => CLOCK_50,
              rst_n  => KEY(3),
              rst_clk_n   => resetn
    );


  p_hallo : process (CLOCK_50)  is
  begin
    if rising_edge(CLOCK_50) then
      if resetn = '0' then
        hallo <= '0';
      elsif hallo_enable = '1' then
        hallo <= not hallo;
      end if;
    end if;
  end process;

  LEDR(17) <= hallo;
  sender <= SW(17); --nice
  LEDG(0) <= sender;

  p_send_motta_hallo : process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if sender = '1' then
        GPIO(1) <= hallo;
        mottatt_blink <= '0';
      else
          GPIO(1)       <= 'Z';
          vippe_a       <= GPIO(1);
          vippe_b       <= vippe_a;
          mottatt_blink <= vippe_b;
      end if;
    end if;
  end process;
end architecture;
