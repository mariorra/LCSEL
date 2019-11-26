----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2019 22:24:50
-- Design Name: 
-- Module Name: DMA_RAM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DMA is
    Port ( 
            Reset : in std_logic;
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
            READY : out std_logic
            ); 
end DMA;

entity RAM is
    Port (
            Clk : in STD_LOGIC;
            Reset    : in std_logic;
            write_en : in std_logic;
            oe       : in std_logic;
            address  : in std_logic_vector(7 downto 0);
            databus  : inout std_logic_vector(7 downto 0);
            switches : out std_logic_vector(7 downto 0);
            temp_L : out std_logic_vector(6 downto 0);
            temp_H : out std_logic_vector(6 downto 0)
            );
end RAM;

architecture Behavioral of DMA_RAM is
  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------
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
        
begin

 end Behavioral DMA_RAM;
