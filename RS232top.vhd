
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   
entity RS232top is

  port (
    Reset     : in  std_logic;   -- Low_level-active asynchronous reset
    Clk_TOP : in  std_logic;   -- System clock (20MHz), rising edge used
    Data_in   : in  std_logic_vector(7 downto 0);  -- Data to be sent
    Valid_D   : in  std_logic;   -- Handshake signal
                                 -- from guest system, low when data is valid
    Ack_in    : out std_logic;   -- ACK for data received, low once data
                                 -- has been stored
    TX_RDY    : out std_logic;   -- System ready to transmit
    TD        : out std_logic;   -- RS232 Transmission line
    RD        : in  std_logic;   -- RS232 Reception line
    Data_out  : out std_logic_vector(7 downto 0);  -- Received data
    Data_read : in  std_logic;   -- Data read for guest system
    RESET_FIFO :in  std_logic;
    Full      : out std_logic;   -- Full internal memory
    Empty     : out std_logic);  -- Empty internal memory

end RS232top;

architecture RTL of RS232top is
 
  ------------------------------------------------------------------------
  -- Component for Clock Frequency modification
  ------------------------------------------------------------------------

  signal Clk, reset_p    : std_logic;

  component Clk_gen
    port (
      reset     : in  std_logic;
      clk_in1   : in  std_logic;
      clk_out1  : out  std_logic);
     -- locked    : out std_logic);
  end component;
  
 ------------------------------------------------------------------------
  -- Components for Transmitter Block
  ------------------------------------------------------------------------

  component TX_RS232
    port (
      Clk   : in  std_logic;
      Reset : in  std_logic;
      Start : in  std_logic;
      Data  : in  std_logic_vector(7 downto 0);
      EOT   : out std_logic;
      TX    : out std_logic);
  end component;

  ------------------------------------------------------------------------
  -- Components for Receiver Block
  ------------------------------------------------------------------------

  component ShiftRegister
    port (
      Reset  : in  std_logic;
      Clk    : in  std_logic;
      Enable : in  std_logic;
      D      : in  std_logic;
      Q      : out std_logic_vector(7 downto 0));
  end component;

  component RX_RS232
    port (
      Clk       : in  std_logic;
      Reset     : in  std_logic;
      LineRD_in : in  std_logic;
      Valid_out : out std_logic;
      Code_out  : out std_logic;
      Store_out : out std_logic);
  end component;

  component fifo
    port (
      clk   : IN  std_logic;
      srst  : IN  std_logic;
      din   : IN  std_logic_VECTOR(7 downto 0);
      wr_en : IN  std_logic;
      rd_en : IN  std_logic;
      dout  : OUT std_logic_VECTOR(7 downto 0);
      full  : OUT std_logic;
      empty : OUT std_logic);
  end component;

  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------

  signal Data_FF    : std_logic_vector(7 downto 0);
  signal StartTX    : std_logic;  -- start signal for transmitter
  signal LineRD_in  : std_logic;  -- internal RX line
  signal Valid_out  : std_logic;  -- valid bit @ receiver
  signal Code_out   : std_logic;  -- bit @ receiver output
  signal sinit      : std_logic;  -- fifo reset
  signal Fifo_in    : std_logic_vector(7 downto 0);
  signal Fifo_write : std_logic;
  signal TX_RDY_i   : std_logic;

begin  -- RTL

  reset_p <= not(Reset);		  -- active high reset
  
  Clock_generator : Clk_gen
    port map (
      reset    => reset_p,   
      clk_in1  => Clk_TOP,
      clk_out1 => Clk);
    --  locked   => open);

  Transmitter: TX_RS232
    port map (
      Clk   => Clk,
      Reset => Reset,
      Start => StartTX,
      Data  => Data_FF,
      EOT   => TX_RDY_i,
      TX    => TD);

  Receiver: RX_RS232
    port map (
      Clk       => Clk,
      Reset     => Reset,
      LineRD_in => LineRD_in,
      Valid_out => Valid_out,
      Code_out  => Code_out,
      Store_out => Fifo_write);

  Shift: ShiftRegister
    port map (
      Reset  => Reset,
      Clk    => Clk,
      Enable => Valid_Out,
      D      => Code_Out,
      Q      => Fifo_in);

  --sinit <= not reset;
   sinit <= RESET_FIFO;
  Internal_memory: fifo
    port map (
      clk   => clk,
      srst  => sinit,
      din   => Fifo_in,
      wr_en => Fifo_write,
      rd_en => Data_read,
      dout  => Data_out,
      full  => Full,
      empty => Empty);

  -- purpose: Clocking process for input protocol
  Clocking : process (Clk, Reset)
  begin
  
    if Reset = '0' then  -- asynchronous reset (active low)
      Data_FF   <= (others => '0');
      LineRD_in <= '1';
      Ack_in    <= '1';
      StartTX <= '0';
     
    elsif Clk'event and Clk = '1' then 
      LineRD_in <= RD;

       
      --ESTA TRANSICIOn hace que solo se use RX o TX
      if Valid_D = '0' and TX_RDY_i = '1' then
        -- TX
        Data_FF <= Data_in;
        Ack_in  <= '0';
        StartTX <= '1';
      else
        -- RX
        Ack_in  <= '1';
        StartTX <= '0';
      end if;
    end if;
    
  end process Clocking;

  TX_RDY <= TX_RDY_i;

end RTL;

