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

            
        TYPE state IS (Idle,CONTROL_RX,RX_COMANDO,RX_PARAMETRO1,RX_PARAMETRO2,RX_FIN, CONTROL_TX, TRANSMISION_BYTE1,TRANSMISION_STATUS,TRANSMISION_BYTE2);
        SIGNAL s_DMA_current_state, s_DMA_next_state: state;
 ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------

        --SEÑALES DMA
        signal Data_Read_aux : std_logic;
        signal RX_empty_aux: std_logic;
        signal TX_Data_aux : std_logic_vector(7 downto 0);
        signal Valid_D_aux : std_logic;       
        signal ACK_OUT_aux : std_logic;
        signal TX_RDY_aux : std_logic;
        signal Send_command_aux : std_logic;
        signal DMA_ACK_aux : std_logic;
        signal READY_aux : std_logic;
        signal DMA_RQ_aux : std_logic;
        signal CS_aux : std_logic;
        signal OE_aux : std_logic;
        signal Write_en_aux : std_logic;
        signal Address_aux : std_logic_vector(7 downto 0);
        signal Databus_OUT_from_DMA_aux : std_logic_vector(7 downto 0);
        signal Databus_IN_to_DMA_aux : std_logic_vector(7 downto 0);
        signal contador: integer :=0;
        signal contador_aux: integer :=0;
            -- contador = 1  comando
            -- contador = 2  parametro 1
            -- contador = 3  parametro 2
            -- contador = 4  fin transmision
        signal prueba : std_logic;            
    
  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------ 

begin
  RELOJ: PROCESS (Reset, Clk)
    begin
      if(Reset = '0') then
      s_DMA_current_state <= idle;
      contador<=0;
      prueba<='0';
      elsif rising_edge(Clk) then 
      s_DMA_current_state <=  s_DMA_next_state;  
      contador<=contador_aux;
      end if;
  END PROCESS  RELOJ;
  
 -- contador<=contador_aux;
  --RX
    --INPUTS
    RX_empty_aux<=RX_empty;
    --OUTPUTS
      Data_Read <= Data_Read_aux;
  --TX
    --INPUTS
    ACK_OUT_aux <= ACK_OUT;
    TX_RDY_aux <= TX_RDY;
    --OUTPUTS
    TX_Data<=TX_Data_aux;
    Valid_D<=Valid_D_aux;
  --RAM
    --INPUTS
    Databus_IN_to_DMA_aux<=Databus;  
    --OUTPUTS
    CS<=CS_aux;
    OE<=OE_aux;
    Write_en<=Write_en_aux;
    Address<=Address_aux;
    Databus<=Databus_OUT_from_DMA_aux;  
  --MICRO
    --INPUTS
    DMA_ACK_aux<=DMA_ACK;
    Send_command_aux<=Send_comm;
    --OUTPUTS
    DMA_RQ<= DMA_RQ_aux;
    READY<=READY_aux;
  
  STATES: PROCESS (s_DMA_current_state,RX_empty_aux,Send_command_aux,DMA_ACK_aux,contador,contador_aux,ACK_OUT_aux)
    begin
        CASE s_DMA_current_state IS
            WHEN Idle =>
                -- SELECCION DE TX O RX
                IF RX_empty_aux ='0' and Send_command_aux='0'THEN
                    s_DMA_next_state<=RX_COMANDO;
                elsif Send_command_aux='1' then 
                    s_DMA_next_state<=CONTROL_TX;
                else 
                    s_DMA_next_state<=idle;
                END IF;
            -----------------------------------------------------  
            WHEN CONTROL_RX =>
                prueba <= '0';
                IF DMA_ACK_aux = '1' then -- AND contador=0 THEN
                    prueba <= '1';
                    s_DMA_next_state<=RX_COMANDO;
                    contador_aux<=1;
               -- ELSIF RX_empty_aux='1' then
                --    s_DMA_next_state <= idle;
                elsif Send_command_aux='1' then
                    s_DMA_next_state<=idle;
                ELSE 
                    s_DMA_next_state <= idle;--CONTROL_RX;
                END IF;
                
            WHEN RX_COMANDO =>
                IF DMA_ACK_aux = '1' AND contador=1 THEN
                    s_DMA_next_state<=RX_PARAMETRO1;
                    contador_aux<=2;
               -- ELSIF RX_empty_aux='1' then
                --    s_DMA_next_state <= idle;
                ELSE
                    s_DMA_next_state <= RX_COMANDO;
                END IF;
                
            WHEN RX_PARAMETRO1 =>
                IF DMA_ACK_aux = '1' AND contador=2 THEN
                     s_DMA_next_state<=RX_PARAMETRO2;
                     contador_aux<=3;
                --ELSIF RX_empty_aux='1' then
                --    s_DMA_next_state <= idle;
                ELSE
                    s_DMA_next_state<=RX_PARAMETRO1;
                END IF;
                
            WHEN RX_PARAMETRO2 =>
                IF DMA_ACK_aux = '1' AND contador=3 THEN
                    s_DMA_next_state<=RX_FIN;
                    contador_aux<=4;
                --ELSIF RX_empty_aux='1' then
                --    s_DMA_next_state <= idle;
                ELSE
                    s_DMA_next_state<=RX_PARAMETRO2;
                END IF;
                
            WHEN RX_FIN =>
                IF DMA_ACK_aux = '1' AND contador=4 THEN
                    s_DMA_next_state<=IDLE;
                    contador_aux<=0;
                ELSE 
                    s_DMA_next_state<=RX_FIN;
                END IF;
            -----------------------------------------------------                  
            WHEN CONTROL_TX =>
                IF ACK_OUT_aux = '0' THEN
                    s_DMA_next_state<=TRANSMISION_BYTE1;
                ELSE    
                    s_DMA_next_state<=CONTROL_TX;
                END IF;
            
            WHEN TRANSMISION_BYTE1 =>
                IF ACK_OUT_aux = '0' THEN
                    s_DMA_next_state<=TRANSMISION_STATUS;
                ELSE
                    s_DMA_next_state<=TRANSMISION_BYTE1;
                END IF;
            
            WHEN TRANSMISION_STATUS =>
                IF ACK_OUT_aux = '0' THEN
                    s_DMA_next_state<=TRANSMISION_BYTE2;
                ELSE
                    s_DMA_next_state<=TRANSMISION_STATUS;
                END IF;
                
            WHEN TRANSMISION_BYTE2 =>
                IF ACK_OUT_aux = '0' THEN
                    s_DMA_next_state<=IDLE;
                ELSE 
                    s_DMA_next_state<=TRANSMISION_BYTE2;
                END IF; 
                               
        end CASE;
  END PROCESS  STATES;
  
   OUTPUTS: PROCESS (s_DMA_current_state,RX_empty_aux,Send_command_aux,DMA_ACK_aux,ACK_OUT_aux,TX_RDY_aux)
    begin
            ------------DEFAULT-----------------
            --RX
            Data_Read_aux <= '0';
            --TX
            TX_Data_aux <= (others => 'Z');
            Valid_D_aux <='1';
            --RAM
            CS_aux<='Z';
            OE_aux<='Z';
            Write_en_aux <= 'Z';
            Address_aux <= (others => 'Z');
            --MICRO
            READY_aux<='1';
            DMA_RQ_aux<='0';
            ----------------------------------------
            
        CASE s_DMA_current_state IS
            WHEN Idle =>
--                IF Send_command_aux='1' then  

                    READY_aux<='0';
                    DMA_RQ_aux<='1';
  --              END IF;
            
  --#############################################
  --#############################################
  --#############################################
                
            WHEN CONTROL_RX =>
                IF DMA_ACK_aux = '1' THEN
                    Data_Read_aux <= '1';
                    READY_aux<='0';
                    DMA_RQ_aux<='1';
                END IF;
                
            WHEN RX_COMANDO =>
                IF DMA_ACK_aux = '1' THEN
                    Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"00";
                    Databus_OUT_from_DMA_aux<=RCVD_Data;
                    READY_aux<='0';
                END IF;
                
            WHEN RX_PARAMETRO1 =>
                IF DMA_ACK_aux = '1' THEN
                    Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"01";
                    Databus_OUT_from_DMA_aux<=RCVD_Data;
                    READY_aux<='0';
                END IF;
                
            WHEN RX_PARAMETRO2 =>
                IF DMA_ACK_aux = '1' THEN
                    Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"02";
                    Databus_OUT_from_DMA_aux<=RCVD_Data;
                    READY_aux<='0';
                END IF;
                
            WHEN RX_FIN =>
                IF DMA_ACK_aux = '1' THEN
                    Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"03";
                    Databus_OUT_from_DMA_aux<=x"FF";
                    READY_aux<='0';
           
                END IF;
                
  --#############################################
  --#############################################
  --#############################################
  
              
            WHEN CONTROL_TX =>
                
                TX_Data <=Databus_IN_to_DMA_aux;
                Valid_D_aux <='0';
                OE_aux<='0';
                Address_aux <= x"04";
                READY_aux<='0';
                DMA_RQ_aux<='1';
                IF ACK_OUT_aux = '0' THEN
                    Valid_D_aux <='1';
                END IF;
                
            WHEN TRANSMISION_BYTE1 =>
                
                TX_Data <=Databus_IN_to_DMA_aux;
                OE_aux<='0';
                Address_aux <= x"04";
                READY_aux<='0';
                DMA_RQ_aux<='1';
                IF TX_RDY_aux = '1' THEN
                    Valid_D_aux <= '1';
                END IF;
                IF ACK_OUT_aux = '0' THEN
                    Valid_D_aux <= '1';
                END IF;
            
            WHEN TRANSMISION_STATUS =>
                
                Valid_D_aux <= '0';
                Databus_OUT_from_DMA_aux<= (others => 'Z');
                READY_aux<='0';
                DMA_RQ_aux<='1';                
                IF ACK_OUT_aux = '0' THEN
                    TX_Data <=Databus_IN_to_DMA_aux;
                    Valid_D_aux <='1';
                    OE_aux<='0';
                    Address_aux<=X"05";
                END IF;
                
            WHEN TRANSMISION_BYTE2 =>
                TX_Data <=Databus_IN_to_DMA_aux;
                OE_aux<='0';
                Address_aux<=X"05";
                READY_aux<='0';
                DMA_RQ_aux<='1';  
                IF TX_RDY_aux = '1' THEN
                    Valid_D_aux <= '0';
                END IF;
                IF ACK_OUT_aux = '0' THEN
                    Valid_D_aux <='1';
                    READY_aux<='1';
                END IF; 

        end CASE;
  END PROCESS  OUTPUTS;
  
end Behavioral;
