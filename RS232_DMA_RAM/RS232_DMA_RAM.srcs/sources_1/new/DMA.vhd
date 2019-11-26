----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2019 22:42:30
-- Design Name: 
-- Module Name: DMA - Behavioral
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
USE work.OUTPUTS_DMA.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

  entity DMA is
        port (
            --COMUNES
            Reset     : in std_logic;
            Clk : in  std_logic; --20Mhz
            --COMPARTIDAS CON RS2323 RX
            RCVD_Data : in std_logic_vector (7 downto 0);
            RX_Full : in std_logic;
            RX_Empty : in std_logic;
            Data_Read : out std_logic;
            --COMPARTIDAS CON RS2323 TX
            TX_Data : out std_logic_vector(7 downto 0);
            Valid_D : out std_logic;
            ACK_out : in std_logic;
            TX_RDY : in std_logic;
            --COMPARTIDAS CON RAM
            CS : out std_logic;
            OE : out std_logic;
            Write_en : out std_logic;
            Address : out std_logic_vector(7 downto 0);
            Databus : inout std_logic_vector(7 downto 0);
            --compartidas con microprocesador
            Send_comm : in std_logic;
            DMA_ACK : in std_logic;
            READY : out std_logic;
            DMA_RQ : out std_logic); 
end DMA;

architecture Behavioral of DMA is

        --RECEPTION_1
        --RECEPTION_2
        --TRANSMISION_1
        TYPE state IS (Idle,CONTROL_RX,RX_COMANDO,RX_PARAMETRO1,RX_PARAMETRO2,RX_FIN, CONTROL_TX, TRANSMISION_1);
        SIGNAL s_DMA_current_state, s_DMA_next_state: state;
 ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------

        --SEÑALES DMA
        signal Data_Read_aux : std_logic;
        signal TX_Data_aux : std_logic_vector(7 downto 0);
        signal Valid_D_aux : std_logic;                
        signal Send_command_aux : std_logic;
        signal DMA_ACK_aux : std_logic;
        signal READY_aux : std_logic;
        signal DMA_RQ_aux : std_logic;
        signal CS_aux : std_logic;
        signal OE_aux : std_logic;
        signal Write_en_aux : std_logic;
        signal Address_aux : std_logic_vector(7 downto 0);
        signal ID_BYTE_aux: integer :=0;
            -- ID_BYTE_aux = 0  comando
            -- ID_BYTE_aux = 1  parametro 1
            -- ID_BYTE_aux = 2  parametro 2
    
  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------ 

begin
  RELOJ: PROCESS (Reset, Clk)
    begin
      if(Reset = '0') then
      s_DMA_current_state <= idle;
      elsif rising_edge(Clk) then 
      s_DMA_current_state <=  s_DMA_next_state;  
      end if;
  END PROCESS  RELOJ;
  
  Data_Read <= Data_Read_aux;
  DMA_RQ<= DMA_RQ_aux;
  Valid_D<=Valid_D_aux;
  Send_command_aux<=Send_comm;
  DMA_ACK_aux<=DMA_ACK;
  READY<=READY_aux;
  TX_Data<=TX_Data_aux;
  CS<=CS_aux;
  OE<=OE_aux;
  Write_en<=Write_en_aux;
  Address<=Address_aux;
  
  
  STATES: PROCESS (Clk,s_DMA_current_state)
    begin
        CASE s_DMA_current_state IS
            WHEN Idle =>
                -- SELECCION DE TX O RX
                IF RX_empty ='0' and Send_command_aux='0'THEN
                    s_DMA_next_state<=CONTROL_RX;
                elsif Send_command_aux='1' then 
                    s_DMA_next_state<=CONTROL_TX;
                END IF;
              
            WHEN CONTROL_RX =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=0 THEN
                s_DMA_next_state<=RX_COMANDO;
                END IF;
            WHEN RX_COMANDO =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=1 THEN
                s_DMA_next_state<=RX_PARAMETRO1;
                END IF;
            WHEN RX_PARAMETRO1 =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=2 THEN
                s_DMA_next_state<=RX_PARAMETRO2;
                END IF;
            WHEN RX_PARAMETRO2 =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=3 THEN
                s_DMA_next_state<=RX_FIN;
                END IF;
            WHEN RX_FIN =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=4 THEN
                s_DMA_next_state<=IDLE;
                END IF;
            WHEN CONTROL_TX =>
            WHEN TRANSMISION_1 =>
        end CASE;
  END PROCESS  STATES;
  
   OUTPUTS: PROCESS (Clk,s_DMA_current_state)
    begin
        CASE s_DMA_current_state IS
            WHEN Idle =>
            --------------------
            --RESET OUTPUT DMA--
            --RX
            Data_Read_aux <= '0';
            --TX
            TX_Data_aux <= (others => '0');
            Valid_D_aux <='1';
            --RAM
            CS_aux<='Z';
            OE_aux<='Z';
            Write_en_aux <= 'Z';
            Address_aux <= (others => 'Z');
            --MICRO
            READY_aux<='1';
            DMA_RQ_aux<='0';
            --------------------
            
            IF RX_empty ='1' and Send_command_aux='0'THEN
                DMA_RQ_aux<='0';
            elsif send_comm='1' then  
                DMA_RQ_aux<='1';
                READY_aux<='0';
            END IF;
            
  --#############################################
  --#############################################
  --#############################################
            
            WHEN CONTROL_RX =>
            UPDATE_OUTPUTS('0',(others => 'Z'),'1','Z','Z','Z',(others => 'Z'),'0','1',0);
                --RX
                Data_Read_aux<='0';
                --TX
                TX_Data_aux<=(others => 'Z');
                Valid_D_aux<='1';
                --RAM
                CS_aux<= 'Z';
                OE_aux<= 'Z';
                Write_en_aux<='Z';
                Address_aux<=(others => 'Z');
                --MICRO
                READY_aux<='0';
                DMA_RQ_aux<='1';

                ID_BYTE_aux<=0;

                
            WHEN CONTROL_RX =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=0 THEN
                UPDATE_OUTPUTS('1',(others => 'Z'),'1','Z','Z','1',00,'0','1',1);
                END IF;
            WHEN RX_PARAMETRO1 =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=1 THEN
                UPDATE_OUTPUTS('1',(others => 'Z'),'1','Z','Z','1',01,'0','1',2);
                END IF;
            WHEN RX_PARAMETRO2 =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=2 THEN
                UPDATE_OUTPUTS('1',(others => 'Z'),'1','Z','Z','1',02,'0','1',3);
                END IF;
            WHEN RX_FIN =>
                IF DMA_ACK_aux = '1' AND ID_BYTE_aux=3 THEN
                UPDATE_OUTPUTS('1',(others => 'Z'),'1','Z','Z','1',03,'0','0',0);
                END IF;
                
  --#############################################
  --#############################################
  --#############################################
  
              
            WHEN CONTROL_TX =>
            
  --#############################################
  --#############################################
  --#############################################
  
              
            WHEN TRANSMISION_1 =>
        end CASE;
  END PROCESS  OUTPUTS;
  
end Behavioral;
