library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--library common_work;
library work;

entity i2c_master_tb is
end i2c_master_tb;

architecture TB_RTL of i2c_master_tb is

component i2c_master is
  generic (
    BYTE_S   : integer := 7
  );
  port(
    CLK     : in    std_logic;
    RST     : in    std_logic;
    EN      : in    std_logic;
    WR_N    : in    std_logic;
    DELAY   : in    std_logic_vector(7 downto 0);
    STOP    : in    std_logic;
    WR_BYTE : in    std_logic_vector(BYTE_S downto 0);
    SDA     : inout std_logic;
    SCL     : out   std_logic;
    DONE    : out   std_logic;
    IDLE    : out   std_logic;
    NO_ACK  : out   std_logic;
    RD_BYTE : out   std_logic_vector(BYTE_S downto 0)
  );
end component;

shared variable T             : time      := 20 ns;
shared variable TSU           : time      := 5 ns;
shared variable T_PULS_DELAY  : time      := 10 us;
shared variable NR_PULS_REPS  : integer   := 2;
signal VectorClk              : std_logic := '0';

--procedures

procedure PULSE
(
  signal A : out std_logic
) is
begin
  wait for T;
  A <= '0';
  wait for T;
  A <= '1';
  wait for T;
  A <= '0';
end;

-- procedure PULSE_REP -- repeated pulse
-- (
--   signal A : out std_logic; --signal to output pulse to
--   variable B : in time;       --time between each pulse
--   variable C : integer       -- number of repetitions
-- ) is
-- begin
--   A <= '0';
--   for i in C downto 1 loop
--     wait for T;
--     A <= '1';
--     wait for T;
--     A <= '0';
--     wait for B;
--   end loop;
--  end;

signal CLK               : std_logic := '0';
signal RST               : std_logic := '0';
signal EN                : std_logic := '0';
signal WR_N              : std_logic := '0';
signal STOP              : std_logic := '0';
signal DELAY             : std_logic_vector(7 downto 0) := (others => '0');
signal WR_BYTE           : std_logic_vector(7 downto 0) := (others => '0');
signal SDA               : std_logic := 'Z';
signal SCL               : std_logic;
signal IDLE              : std_logic;
signal DONE              : std_logic;
signal NO_ACK            : std_logic;
signal RD_BYTE           : std_logic_vector(7 downto 0);

begin

VectorClk <= not VectorClk after T/2;
CLK <= not VectorClk after TSU;
DELAY <= "00000101";

I2C_MASTER0 : I2C_MASTER
   port map (
     CLK      => CLK,
     RST      => RST,
     EN       => EN,
     WR_N     => WR_N,
     STOP     => STOP,
     DELAY    => DELAY,
     WR_BYTE  => WR_BYTE,
     SDA      => SDA,
     SCL      => SCL,
     IDLE     => IDLE,
     DONE     => DONE,
     NO_ACK   => NO_ACK,
     RD_BYTE  => RD_BYTE
   );

WR_BYTE <= "11010000";
-- EN <= '0';
PULSE(EN);
STOP <= '0';
-- STOP <= '1' after 3 us;

-- STOP <= '1' after 3 us, '0' after 7 us, '1' after 23 us;
-- STOP <= '0';
-- pulse_proc : process
-- begin
--   PULSE(EN);
--   wait for 10 us;
--   -- PULSE(EN);
--   -- wait for 10 us;
-- end process;
-- PULSE(EN);

-- PULSE_REP(EN, T_PULS_DELAY, NR_PULS_REPS);
-- STOP <= '0' after 1 us, '1' after 2 us;
end architecture;
