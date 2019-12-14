
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;
USE work.RS232_TEST.all;
entity PICtop_tb is
end PICtop_tb;

architecture TestBench of PICtop_tb is

  component PICtop
    port (
      Reset    : in  std_logic;
      Clk100MHZ      : in  std_logic;
      RS232_RX : in  std_logic;
      RS232_TX : out std_logic;
      switches : out std_logic_vector(7 downto 0);
      Temp     : out std_logic_vector(6 downto 0);
      Disp     : out std_logic_vector(1 downto 0);
      --señales para simular el control desde el micro 
      U_DMA_RQ : out std_logic;
      U_DMA_ACK : in std_logic;
      U_Send_command : in std_logic;
      U_READY : out std_logic 
      );
  end component;

-----------------------------------------------------------------------------
-- Internal signals
-----------------------------------------------------------------------------

  signal Reset    : std_logic;
  signal Clk      : std_logic;
  signal RS232_RX : std_logic;
  signal RS232_TX : std_logic;
  signal switches : std_logic_vector(7 downto 0);
  signal Temp     : std_logic_vector(6 downto 0);
  signal Disp     : std_logic_vector(1 downto 0);
        --señales para simular el control desde el micro 
 signal    TB_U_DMA_RQ :  std_logic;
 signal    TB_U_DMA_ACK :  std_logic;
 signal    TB_U_Send_command :  std_logic;
 signal    TB_U_READY :  std_logic ;
 
 signal prueba_tb: std_logic;

begin  -- TestBench

  UUT: PICtop
    port map (
        Reset    => Reset,
        Clk100MHZ      => Clk,
        RS232_RX => RS232_RX,
        RS232_TX => RS232_TX,
        switches => switches,
        Temp     => Temp,
        Disp     => Disp,
        --señales para simular el control desde el micro 
        U_DMA_RQ => TB_U_DMA_RQ ,
        U_DMA_ACK => TB_U_DMA_ACK ,
        U_Send_command => TB_U_Send_command ,
        U_READY =>  TB_U_READY )
        ;

-----------------------------------------------------------------------------
-- Reset & clock generator
-----------------------------------------------------------------------------

  Reset <= '0', '1' after 75 ns;
  
  --TB_U_DMA_ACK<='0';


  micro : process
  begin
  
  TB_U_Send_command <=  '0';
  prueba_tb <='0';
  
    -- DMA SOLICITA BUS
    --wait for 1 us;
    WAIT UNTIL  TB_U_DMA_RQ = '1' ;
    prueba_tb <='1';
    IF TB_U_DMA_RQ = '1' THEN
        wait for 1 us;
        -- DMA RECIBE EL BUS
        TB_U_DMA_ACK<='1';
    END IF;
    
    wait for 1 us;
    prueba_tb <='0';
  
    -- DMA DEVUELVE BUS
    
    WAIT UNTIL  TB_U_DMA_RQ = '0' ;
    prueba_tb <='1';
    IF TB_U_DMA_RQ = '0' THEN
        wait for 1 us;
        -- A LA DMA SE LE RETIRA EL BUS
        TB_U_DMA_ACK<='0';
        TB_U_Send_command <= '0';
      END IF;
  
  wait for 100 us;
  prueba_tb <='0';
end process micro;
   
  p_clk : PROCESS
  BEGIN
     clk <= '1', '0' after 5 ns;
     wait for 10 ns;
  END PROCESS p_clk;


-------------------------------------------------------------------------------
-- Sending some stuff through RS232 port
-------------------------------------------------------------------------------

  SEND_STUFF : process
  begin
   -- prueba_tb <='0';
     RS232_RX <= '1';
     wait for 40 us;
     Transmit(RS232_RX, X"49");
     wait for 40 us;
     Transmit(RS232_RX, X"34");
     wait for 40 us;
     Transmit(RS232_RX, X"31");
     wait for 40 us;
     Transmit(RS232_RX, X"77");
     wait for 40 us;
     Transmit(RS232_RX, X"55");
     wait for 40 us;
     Transmit(RS232_RX, X"BB");
     wait;
  end process SEND_STUFF;
   
end TestBench;
















