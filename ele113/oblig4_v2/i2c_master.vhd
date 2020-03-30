library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity i2c_master is
generic (
  BYTE_SZ   : integer := 7
);
port(
  CLK     : in    std_logic;
  RST     : in    std_logic;
  EN      : in    std_logic;
  WR_N    : in    std_logic;
  DELAY   : in    std_logic_vector(7 downto 0);
  STOP    : in    std_logic;
  WR_BYTE : in    std_logic_vector(BYTE_SZ downto 0);
  SDA     : inout std_logic;
  SCL     : out   std_logic;
  DONE    : out   std_logic;
  IDLE    : out   std_logic;
  NO_ACK  : out   std_logic;
  RD_BYTE : out   std_logic_vector(BYTE_SZ downto 0)
);
end;
architecture RTL of i2c_master is
  signal SDA_OUT          : std_logic;
  signal SDA_IN           : std_logic;
  signal SDA_OE           : std_logic;
  signal SCL_S            : std_logic;
  signal WR_INDEX         : integer range 0 to BYTE_SZ+1 := 0;
  signal RD_INDEX         : integer range 0 to BYTE_SZ+1 := 0;

  signal WAIT_RDY         : std_logic := '0';
  signal WRITE_DONE       : std_logic := '0';
  signal READ_DONE        : std_logic := '0';

  signal DELAY_CNT        : std_logic_vector(7 downto 0) := (others => '0');
  signal DELAY_FIN        : std_logic;

  type t_STATE is (s_IDLE, s_START, s_CLK, s_WRITE_BIT, s_READ_BIT, s_WAIT, s_STOP);
  signal STATE  : t_STATE := s_IDLE;

begin

  SDA <= SDA_OUT when SDA_OE = '1' else 'Z';
  SDA_IN <= SDA when SDA_OE <= '0';
  SCL <= SCL_S;

  delay_proc : process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        DELAY_FIN <= '0';
        DELAY_CNT <= (others => '0');
      elsif DELAY_CNT = DELAY then
        DELAY_FIN <= '1';
        DELAY_CNT <= (others => '0');
      else
        DELAY_FIN <= '0';
        DELAY_CNT <= DELAY_CNT + 1;
      end if;
    end if;
  end process;

  fsm_proc : process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        STATE <= s_IDLE;
      else
        case STATE is
          when s_IDLE =>
            SDA_OUT <= '1';
            SCL_S <= '1';
            SDA_OE <= '1';
            DONE <= '1';
            IDLE <= '1';
            if EN = '1' then
              IDLE <= '0';
              STATE <= s_START;
            end if;

          when s_START =>
            DONE <= '0';
            if DELAY_FIN = '1' then
              SDA_OUT <= '0';
              SCL_S <= SDA_OUT;
              if (SDA_OUT or SCL_S) = '0' then
                if WR_N = '0' then
                  SDA_OE <= '1';
                  STATE <= s_WRITE_BIT;
                elsif WR_N = '1' then
                  SDA_OE <= '0';
                  STATE <= s_READ_BIT;
                end if;
              end if;
            end if;

          when s_WRITE_BIT =>
            if DELAY_FIN = '1' then
              if WR_N = '0' then
                DONE <= '0'; --setter done til lav etter første write
                SDA_OUT <= WR_BYTE(BYTE_SZ - WR_INDEX);
                WR_INDEX <= WR_INDEX + 1;
                if WR_INDEX = BYTE_SZ then
                  WRITE_DONE <= '1';
                  WR_INDEX <= 0;
                end if;
                STATE <= s_CLK;
              elsif WR_N = '1' then
                SDA_OE <= '1';
                WAIT_RDY <= '1';
                SDA_OUT <= STOP;
                STATE <= s_CLK;
              end if;
            end if;

          --clock values with SCL and select next appropriate state
          --accounts for TSU, not TS
          WHEN s_CLK =>
            if DELAY_FIN = '1' and SCL_S = '0' then
              SCL_S <= '1';
            elsif DELAY_FIN = '1' and SCL_S = '1' then
              SCL_S <= '0';

              if WAIT_RDY = '1' then
                STATE <= s_WAIT;
              elsif WR_N = '0' then
                if WRITE_DONE = '0' then
                  STATE <= s_WRITE_BIT;
                elsif WRITE_DONE = '1' then
                  DONE <= '1';
                  WRITE_DONE <= '0';
                  STATE <= s_READ_BIT;
                end if;

              elsif WR_N = '1' then
                if READ_DONE = '0' then
                  STATE <= s_READ_BIT;
                elsif READ_DONE = '1' then
                  DONE <= '1';
                  READ_DONE <= '0';
                  STATE <= s_WRITE_BIT;
                end if;
              end if;
            end if;

          when s_READ_BIT =>
            if DELAY_FIN = '1' then
              SDA_OE <= '0';
              if WR_N = '0' then
                NO_ACK <= SDA_IN;
                SDA_OUT <= '0';
                SCL_S <= '0';
                WAIT_RDY <= '1';
                STATE <= s_CLK;
              elsif WR_N = '1' then
                RD_BYTE(BYTE_SZ - RD_INDEX) <= SDA_IN;
                RD_INDEX <= RD_INDEX + 1;
                if RD_INDEX = BYTE_SZ then
                  RD_INDEX <= 0;
                  READ_DONE <= '1';
                end if;
                STATE <= s_CLK;
              end if;
            end if;

            when s_WAIT =>
              WAIT_RDY <= '0';
              if STOP = '1' then
                STATE <= s_STOP;
              elsif EN = '1' then
                if WR_N = '0' then
                  STATE <= s_WRITE_BIT;
                elsif WR_N = '1' then
                  STATE <= s_READ_BIT;
                end if;
              elsif DELAY_FIN = '1' then
                SDA_OE <= '1';
              end if;

          when s_STOP =>
            if DELAY_FIN = '1' then
              SDA_OE <= '1';
              SCL_S <= '1';
              SDA_OUT <= SCL_S;
              if (SDA_OUT and SCL_S) = '1' then
                STATE <= s_IDLE;
              end if;
            end if;
        end case;
      end if;
    end if;
  end process;
end;
