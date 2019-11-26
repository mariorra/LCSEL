
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;

entity PICtop is
  port (
    Reset    : in  std_logic;           -- Asynchronous, active low
    Clk20Mhz      : in  std_logic;           -- System clock, 20 MHz, rising_edge
    Clk100MHZ      : in  std_logic;           -- System clock, 20 MHz, rising_edge
    RS232_RX : in  std_logic;           -- RS232 RX line
    RS232_TX : out std_logic;           -- RS232 TX line
    switches : out std_logic_vector(7 downto 0);   -- Switch status bargraph
    Temp     : out std_logic_vector(7 downto 0);   -- Display value for T_STAT
    Disp     : out std_logic_vector(1 downto 0));  -- Display activation for T_STAT
end PICtop;

architecture behavior of PICtop is

  component RS232top
    port (
      Reset     : in  std_logic;
      Clk       : in  std_logic;
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

  component Clk_gen--100mhz
    port (
      reset     : in  std_logic;
      clk_in1   : in  std_logic;
      clk_out1  : out  std_logic);
     -- locked    : out std_logic);
  end component;
  
  component DMA
        port (
            Reset     : in std_logic;
            Clk : in  std_logic; --20Mhz
            RCVD_Data : in std_logic_vector (7 downto 0);
            RX_Full : in std_logic;
            RX_Empty : in std_logic;
            Data_Read : out std_logic;
            ACK_out : in std_logic;
            TX_RDY : in std_logic;
            Valid_D : out std_logic;
            TX_Data : out std_logic_vector(7 downto 0);
            Address : out std_logic_vector(7 downto 0);
            Databus : inout std_logic_vector(7 downto 0);
            Write_en : out std_logic;
            OE : out std_logic;
            DMA_RQ : out std_logic;
            DMA_ACK : in std_logic;
            Send_comm : in std_logic;
            READY : out std_logic); 
end component;
     
     
component ram
            port (
               Clk      : in    std_logic;
               Reset    : in    std_logic;
               write_en : in    std_logic;
               oe       : in    std_logic;
               address  : in    std_logic_vector(7 downto 0);
               databus  : inout std_logic_vector(7 downto 0);
               switches :  out std_logic_vector(7 downto 0);
               temp_L : out std_logic_vector(6 downto 0);
               temp_H : out std_logic_vector(6 downto 0) 
               );
end component;

  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------
        signal reset_o, Clk  : std_logic;
        --RX
        signal Data_out_FROM_RS_RX_RCVD_Data : std_logic_vector(7 downto 0);
        signal Full_RS_RX : std_logic;
        signal Empty_RS_RX : std_logic;
        signal DMA_read_RX : std_logic;
        --TX
        signal Data_in_TO_RS_TX_TX_Data : std_logic_vector(7 downto 0);
        signal Valid_D_RS : std_logic;
        signal ACK_FROM_RS : std_logic;
        signal TX_RDY_FROM_RS : std_logic; 
        --SEÑALES DMA            
        signal Send_command : std_logic;
        signal DMA_ACK : std_logic;
        signal READY : std_logic;
        signal DMA_RQ : std_logic;
        --SEÑALES RAM
        signal CS_RAM : std_logic;
        signal OE_RAM : std_logic;
        signal Write_en_RAM : std_logic;
        signal RAM_ADDR : std_logic_vector (7 downto 0);
        signal databus : std_logic_vector (7 downto 0);        
        signal Temp_L : std_logic_vector (6 downto 0);
        signal Temp_H : std_logic_vector (6 downto 0);
  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------ 
        
begin  -- behavior
  reset_o <= not(Reset);
  RS232_PHY: RS232top
        port map (
            Reset     => Reset,
            Clk       => Clk,
            Data_in   => Data_in_TO_RS_TX_TX_Data,
            Valid_D   => Valid_D_RS,
            Ack_in    => ACK_FROM_RS,
            TX_RDY    => TX_RDY_FROM_RS,
            TD        => RS232_TX,
            RD        => RS232_RX,
            Data_out  => Data_out_FROM_RS_RX_RCVD_Data,
            Data_read => DMA_read_RX,
            Full      => Full_RS_RX,
            Empty     => Empty_RS_RX
            );


 DMA_ports: DMA
        port map (
            Reset => Reset,
            Clk => Clk,
            RCVD_Data => Data_out_FROM_RS_RX_RCVD_Data,
            RX_Full=> Full_RS_RX,
            RX_Empty => Empty_RS_RX,
            Data_Read => DMA_read_RX,
            ACK_out => ACK_FROM_RS,
            TX_RDY => TX_RDY_FROM_RS,
            Valid_D => Valid_D_RS,
            TX_Data => Data_in_TO_RS_TX_TX_Data,
            Address => RAM_ADDR,
            Databus => Databus,
            Write_en => Write_en_RAM,
            OE => OE_RAM,
            DMA_RQ => DMA_RQ,
            DMA_ACK => DMA_ACK,
            Send_comm => Send_command ,
            READY => READY
            );
        
RAM_PORTS: RAM
        port map (
            Clk  =>  Clk,  
            Reset =>  Reset,  
            write_en => Write_en_RAM,
            oe  => OE_RAM,
            address => RAM_ADDR, 
            databus  => Databus,
            switches => switches,
            temp_L => Temp_L,
            temp_H => Temp_H
            );
                  
           
 Clock_generator : Clk_Gen
        port map (
            reset    => reset_o,   
            clk_in1  => Clk100MHz,
            clk_out1 => Clk
        --    locked   => open
           );  
           
  
Clocking: process (Clk, Reset)
    begin
    if Reset = '0' then
    elsif rising_edge(Clk) then
    end if;
    end process Clocking;
end behavior;

