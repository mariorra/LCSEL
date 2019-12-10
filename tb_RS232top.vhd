
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   USE work.RS232_test.all;
   
entity RS232top_TB is
end RS232top_TB;

architecture Testbench of RS232top_TB is

  component RS232top
    port (
      Reset     : in  std_logic;
      Clk100MHz : in  std_logic;
      Data_in   : in  std_logic_vector(7 downto 0);
      Valid_D   : in  std_logic;
      Ack_in    : out std_logic;
      TX_RDY    : out std_logic;
      TD        : out std_logic;
      RD        : in  std_logic;
      Data_out  : out std_logic_vector(7 downto 0);
      Data_read : in  std_logic;
      Full      : out std_logic;
      Empty     : out std_logic);
      
  end component;
  
  signal Reset, Clk, Valid_D, Ack_in, TX_RDY : std_logic;
  signal TD, RD, Data_read, Full, Empty : std_logic;
  signal Data_out, Data_in : std_logic_vector(7 downto 0);


begin

  UUT: RS232top
    port map (
      Reset     => Reset,
      Clk100MHz => Clk,
      Data_in   => Data_in,
      Valid_D   => Valid_D,
      Ack_in    => Ack_in,
      TX_RDY    => TX_RDY,
      TD        => TD,
      RD        => RD,
      Data_out  => Data_out,
      Data_read => Data_read,
      Full      => Full,
      Empty     => Empty);

  --Data_in <= "11100010";
   -- Clock generator
  p_clk : PROCESS
  BEGIN
     clk <= '1', '0' after 5 ns;
     wait for 10 ns;--100MHZ
  END PROCESS;
  
 --p_tx : PROCESS
  --BEGIN    
    
    --Valid_D <= '0'; 
    --reset <= '0', '1' after 5 us;
    --Data_in <= "00000000";
    ----------------------------------------------------------
    --secuencia con la que se desactiva el envio ciclico
    --wait until Ack_in='0';
    --wait for 5 us;
    --Valid_D <= '1';
    --wait for 20 us;
    --Valid_D <= '0';
    --wait until Ack_in='0';
    ----------------------------------------------------------
    --Data_in <= "11100010"; 
    --wait for 5 us;
    --Valid_D <= '1';
    --wait for 20 us;
    --Valid_D <= '0';
    --wait until Ack_in='0';
    
    --Data_in <= "00001100"; 
    --wait for 5 us;
    --Valid_D <= '1';

    --wait for 20 us;
    --Valid_D <= '0';
    --wait until Ack_in='0';
    
    --reset <= '0', '1' after 35 us;
   -- wait until Ack_in='0';
        
    --Data_in <= "11111111"; 
    --wait for 5 us;
    --Valid_D <= '1';
    --wait for 20 us;
    --Valid_D <= '0';
    --wait until Ack_in='0';
    
    
    
    --Data_in <= "10101010"; 
    --wait for 5 us;
    --Valid_D <= '1';
    --wait for 20 us;
    --Valid_D <= '0';
    --wait until Ack_in='0';
    
    
    --Transmit(TD,Data_in);
    --wait for 20 us; 
  --END PROCESS;
  -- Reset & Start generator
  Reset <= '0', '1' after 75 ns;
 p_reset_rx : PROCESS
          BEGIN
            Valid_D <= '1'; 
            RD <= '1';
            wait for 40 us;
            Transmit(RD, X"49");
          END PROCESS;
          
p_FIFO_TEST : PROCESS
         BEGIN
        Data_read <= '0','1'after 40us;
         wait for 400 us;
          END PROCESS;
           
          
end Testbench;

