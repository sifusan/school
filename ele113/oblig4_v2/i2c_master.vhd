library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity i2c_master is
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
end;
architecture RTL of i2c_master is
  signal SDA_OUT          : std_logic := '1';
  signal SDA_IN           : std_logic := '1';
  signal SDA_OE           : std_logic := '1';
  signal SCL_S            : std_logic := '1';
  signal WR_INDEX         : integer range 0 to BYTE_S+1 := 0;
  signal DELAY_CNT        : std_logic_vector(7 downto 0) := (others => '0');
  signal DELAY_FIN        : std_logic := '0';
  signal STOP_RDY         : std_logic := '0';

  type t_W_STATE is (s_IDLE, s_START, s_DELAY, s_WRITE_BIT, s_READ_BIT, s_WAIT, s_STOP);
  signal W_STATE  : t_W_STATE := s_IDLE;
  signal R_STATE  : t_R_STATE := s_

begin

SDA <= SDA_OUT when SDA_OE = '1' else 'Z';
SDA_IN <= SDA;

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

write_proc : process(CLK)
begin
  if rising_edge(CLK) and WR_N = '0' then
    if RST = '1' then
      W_STATE <= s_IDLE;
    else
      case W_STATE is
        when s_IDLE =>
          SDA_OUT <= '1';
          SCL_S <= '1';
          SDA_OE <= '1';
          DONE <= '1';
          IDLE <= '1';
          if EN = '1' then
            IDLE <= '0';
            W_STATE <= s_START;
          end if;

        when s_START =>
          DONE <= '0';
          if DELAY_FIN = '1' then
            SDA_OUT <= '0';
            SCL_S <= SDA_OUT;
            if (SDA_OUT or SCL_S) = '0' and DELAY_FIN = '1' then
              W_STATE <= s_WRITE_BIT;
            end if;
          end if;

        when s_WRITE_BIT =>
          DONE <= '0'; --setter done til lav etter første write
          SDA_OE <= '1';
          -- if DELAY_FIN = '1' and SCL_S = '0' then
            SDA_OUT <= WR_BYTE(BYTE_S - WR_INDEX);
            -- RD_BYTE(BYTE_S - WR_INDEX) <= SDA_OUT;
            WR_INDEX <= WR_INDEX + 1;
            W_STATE <= s_DELAY;
            -- SCL_S <= '0';
          -- end if;

        WHEN s_DELAY =>
          if DELAY_FIN = '1' and SCL_S = '0' then
            SCL_S <= '1';
          elsif DELAY_FIN = '1' then
            SCL_S <= '0';
            if WR_INDEX = (BYTE_S + 1) then
              WR_INDEX <= 0;
              SDA_OE <= '0';
              -- NO_ACK <= SDA_IN;
              W_STATE <= s_READ_BIT;
            else
              W_STATE <= s_WRITE_BIT;
            end if;
          end if;

          when s_READ_BIT =>
            if DELAY_FIN = '1' and SCL_S = '0' then
              SCL_S <= '1';
            elsif DELAY_FIN = '1' and SCL_S = '1' then
              SCL_S <= '0';
              SDA_OUT <= '0';
              NO_ACK <= SDA_IN;
              W_STATE <= s_WAIT;
            end if;

          when s_WAIT =>
            -- SCL_S <= '0';
            if DELAY_FIN = '1' then
              SDA_OE <= '1';
              if STOP = '1' then
                W_STATE <= s_STOP;
              elsif EN = '1' then
                W_STATE <= s_WRITE_BIT;
              end if;
            end if;

        when s_STOP =>
          if DELAY_FIN = '1' and STOP_RDY = '0' then
            STOP_RDY <= '1';
            SDA_OE <= '1';
          elsif DELAY_FIN = '1' and STOP_RDY = '1' then
            SCL_S <= '0';
            SCL_S   <= '1';
            SDA_OUT <= SCL_S;
            if (SDA_OUT and SCL_S) = '1' and DELAY_FIN = '1' then
              STOP_RDY <= '0';
              W_STATE <= s_IDLE;
            end if;
          end if;
      end case;
    end if;
  end if;
end process;


read_proc : process(CLK)
begin
  if rising_edge(CLK) and WR_N = '1' then
    if RST = '1' then
    end if;
  end if;
end process;
end;
