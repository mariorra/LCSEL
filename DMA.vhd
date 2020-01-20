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
            RESET_FIFO : out std_logic;
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

            
        TYPE state IS (Idle,CONTROL_RX,RX_COMANDO,RX_PARAMETRO1,RX_PARAMETRO2,RX_FIN, CONTROL_TX, TRANSMISION_BYTE1,TRANSMISION_STATUS,TRANSMISION_BYTE2,TX_FIN);
        SIGNAL s_DMA_current_state, s_DMA_next_state: state;
 ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------

        --SEÑALES DMA
        signal RCVD_Data_aux : std_logic_vector(7 downto 0);
        signal Data_Read_aux : std_logic;
        signal RX_empty_aux: std_logic;
        signal RESET_FIFO_aux: std_logic;
        signal RX_full_aux: std_logic;
        signal TX_Data_aux : std_logic_vector(7 downto 0):="00000000" ;
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
        signal CICLO : std_logic := '0';
    --------------
    --CONSTANTES--
    --------------
        -- contador del numero de clicks de reloj para comparar la llegada del dato
    constant Halfbitcounter: STD_LOGIC_vector(7 downto 0) := "01010111"; 
        -- contador  de 3 ciclos de reloj con ello el addres se sincroniza con el dato en la ram 
    constant Bitcounter: STD_LOGIC_vector(7 downto 0) := "00000011";

            --contador de ancho del bit
    signal s_pulse_width: STD_LOGIC_vector(7 downto 0) :="00000000" ;
    
  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------ 

begin
  RELOJ: PROCESS (Reset, Clk)
    begin
    --contador_aux<=0;
      if(Reset = '0') then
      s_DMA_current_state <= idle;
      contador<=0;
      --contador_aux<=0;
     elsif rising_edge(Clk) then 
      s_DMA_current_state <=  s_DMA_next_state;  
      contador<=contador_aux;
        if  s_DMA_next_state /= idle  then
          if s_pulse_width >= "000000100" then 
            s_pulse_width <= "00000000";
          else
            s_pulse_width <= s_pulse_width + 1;
          end if;
        ELSE
            s_pulse_width <= "00000000";
       END IF;
      end if;
  END PROCESS  RELOJ;
  
   --RX
    --INPUTS
    RCVD_Data_aux<=RCVD_Data;
    RX_empty_aux<=RX_empty;
    RX_full_aux<=RX_full;
    RESET_FIFO<=RESET_FIFO_aux;
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
    
  
  
  STATES: PROCESS (s_DMA_current_state,s_DMA_next_state,RX_empty_aux,Send_command_aux,DMA_ACK_aux,contador,contador_aux,ACK_OUT_aux,TX_Data_aux)
    begin
    s_DMA_next_state<=idle;
    contador_aux<=contador;
        CASE s_DMA_current_state IS
            WHEN Idle =>
                -- SELECCION DE TX O RX
                IF (RX_empty_aux ='0' and Send_command_aux='0' )or contador = 4 THEN
                    s_DMA_next_state<=CONTROL_RX;
                elsif Send_command_aux='1' and DMA_ACK_aux = '1'  then 
                    s_DMA_next_state<=CONTROL_TX;
                else 
                    s_DMA_next_state<=idle;
                END IF;
                 if contador = 4 then
                contador_aux<=0;
                end if;

            -----------------------------------------------------  
            WHEN CONTROL_RX =>
              
            
                --IF RX_empty_aux ='0'
                IF DMA_ACK_aux = '1' AND contador=0  THEN
                    s_DMA_next_state<=RX_COMANDO;
                   -- contador_aux<=1;
                ELSIF DMA_ACK_aux = '1' AND contador=1  THEN
                    s_DMA_next_state<=RX_PARAMETRO1;
                    --contador_aux<=2; 
                ELSIF DMA_ACK_aux = '1' AND contador=2  THEN
                    s_DMA_next_state<=RX_PARAMETRO2;
                ELSIF DMA_ACK_aux = '1' AND contador=3 THEN
                    s_DMA_next_state<=RX_FIN;
                    --contador_aux<=3;
                ELSIF DMA_ACK_aux = '0' then
                   s_DMA_next_state<=idle;
                END IF;

            WHEN RX_COMANDO =>
                if  DMA_ACK_aux = '1' then
                    contador_aux<=1;
                end if;
                   s_DMA_next_state <= idle;
               
            WHEN RX_PARAMETRO1 =>
                if  DMA_ACK_aux = '1' then
                     contador_aux<=2;
               end if;
                    s_DMA_next_state<=idle;
               
                
            WHEN RX_PARAMETRO2 =>
                if  DMA_ACK_aux = '1' then
                    contador_aux<=3;
                end if;
                    s_DMA_next_state<=idle;
                    
               WHEN RX_FIN=> 
                   s_DMA_next_state <= idle;
                    contador_aux<=4;            
            
            -----------------------------------------------------                  
            WHEN CONTROL_TX =>
                IF ACK_OUT_aux = '0' and DMA_ACK_aux = '1' then 
                    s_DMA_next_state<=TRANSMISION_BYTE1;
               ELSE 
                    s_DMA_next_state<=idle;
                END IF;
            
            WHEN TRANSMISION_BYTE1 =>
                IF ACK_OUT_aux = '0' THEN
                    s_DMA_next_state<=TRANSMISION_STATUS;
                ELSE
                    s_DMA_next_state<=TRANSMISION_BYTE1;
                END IF;
           
            WHEN TRANSMISION_STATUS =>
                IF ACK_OUT_aux = '1'  THEN
                    s_DMA_next_state<=TRANSMISION_BYTE2;
                ELSE
                    s_DMA_next_state<=TRANSMISION_STATUS;
                END IF;
                
            WHEN TRANSMISION_BYTE2 =>
                IF ACK_OUT_aux = '0'  THEN
                    s_DMA_next_state<=TX_FIN;
                ELSE 
                    s_DMA_next_state<=TRANSMISION_BYTE2;
                END IF; 

            WHEN TX_FIN =>
                iF ACK_OUT_aux = '1'  THEN
                    s_DMA_next_state<=IDLE;

               ELSE 
                   s_DMA_next_state<=TX_FIN;
                END IF; 
                               
        end CASE;
  END PROCESS  STATES;
  
   OUTPUTS: PROCESS (s_DMA_next_state,s_DMA_current_state,RX_empty_aux,Send_command_aux,DMA_ACK_aux,ACK_OUT_aux,TX_RDY_aux,RX_Full_aux,CICLO,contador,RCVD_Data_aux,RCVD_DATA,Databus_IN_to_DMA_aux)
    begin
        TX_Data <= (others => 'Z');
            ------------DEFAULT-----------------
            if Send_command_aux='0' then
            --RX
            Data_Read_aux <= '0';
            RESET_FIFO_aux<='0';
            TX_Data_aux <= (others => 'Z');
            Valid_D_aux <='1';
            else
            --TX
            Data_Read_aux <=  '0';
            RESET_FIFO_aux<= 'Z';
            TX_Data_aux <= (others => 'Z');
            Valid_D_aux <='0';
            end if;
            
            --RAM
            CS_aux<='Z';
            OE_aux<='Z';
            Write_en_aux <= 'Z';
            Address_aux <= (others => 'Z');
            Databus_OUT_from_DMA_aux <= (others => 'Z');
            --MICRO
            READY_aux<='1';
            DMA_RQ_aux<='0';
            ----------------------------------------
         
        CASE s_DMA_current_state IS
            WHEN Idle =>
                Valid_D_aux <='Z';
               -- SE SOLICITA EL BUS PARA PODER ESCRIBIRLO
               
               --CUANDO EL DATO SE HAYA RECOGIDO  la primera vez o tras recoger los bytes
                   -- o mientras recibo los bytes
                if (RX_empty_aux ='0' or (contador>=0 and contador<=3 )) and Send_command_aux ='0' then 
                    DMA_RQ_aux<='1'; 
                     --mientras quiero enviar dato
                elsif Send_command_aux ='1'   then
                    DMA_RQ_aux<='1';

                END IF;
                
                if contador =4 then
                    DMA_RQ_aux<='1'; 
                end if;
                
                --if s_DMA_next_state = CONTROL_RX and RX_Full_aux ='0' then
                --Data_Read_aux <= '1';
                --end if;

                if RX_Full_aux ='1' then--and RX_empty_aux ='0'then
                    RESET_FIFO_aux<= '1';
                end if;
            
  --#############################################
  --#############################################
  --#############################################

            WHEN CONTROL_RX =>
                    
                    Data_Read_aux <= '1';
                    Write_en_aux <= '0'; --no escribe en ram solo solicita el dato. 
                    DMA_RQ_aux<='1';
                    --devolucion<='1';

            WHEN RX_COMANDO =>
                
                   -- Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"00";
                    Databus_OUT_from_DMA_aux<=RCVD_Data_aux;
                    DMA_RQ_aux<='1';
                
            WHEN RX_PARAMETRO1 =>
                
                    --Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"01";
                    Databus_OUT_from_DMA_aux<=RCVD_Data;
                    DMA_RQ_aux<='1';
                    
                
            WHEN RX_PARAMETRO2 =>
                
                   -- Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"02";
                    Databus_OUT_from_DMA_aux<=RCVD_Data_aux;
                    DMA_RQ_aux<='1';
                    

            WHEN RX_FIN =>
                
                    --Data_Read_aux <= '1';
                    TX_Data_aux <= (others => 'Z');
                    Write_en_aux <= '1';
                    Address_aux <= x"03";
                    Databus_OUT_from_DMA_aux<=x"FF";
                    DMA_RQ_aux<='1';

                    -----LO ULTIMO 
                    --RESET_FIFO_aux<= '1';
           
  --#############################################
  --#############################################
  --#############################################
             WHEN CONTROL_TX =>
                
                --TX_Data <=Databus_IN_to_DMA_aux;
               -- Valid_D_aux <='Z';
                OE_aux<='0';
                Address_aux <= x"04";
                READY_aux<='0';
                DMA_RQ_aux<='1';
                               
            WHEN TRANSMISION_BYTE1 =>
                
                TX_Data <=Databus_IN_to_DMA_aux;
                OE_aux<='0';
                Address_aux <= x"04";
                READY_aux<='0';
                DMA_RQ_aux<='1';
            
            WHEN TRANSMISION_STATUS =>
                
               -- Valid_D_aux <='Z';
               -- Databus_OUT_from_DMA_aux<= (others => 'Z');
                READY_aux<='0';
                DMA_RQ_aux<='1';
                --TX_Data <=Databus_IN_to_DMA_aux;
                OE_aux<='0';
                Address_aux<=X"05";
                
            WHEN TRANSMISION_BYTE2 =>
                --Valid_D_aux <= '0';
                TX_Data <=Databus_IN_to_DMA_aux;
                OE_aux<='0';
                Address_aux<=X"05";
                READY_aux<='0';
                DMA_RQ_aux<='1';
               
            WHEN TX_FIN =>
                DMA_RQ_aux<='0';
                Valid_D_aux <='Z';
                --if s_DMA_next_state = idle then
                --Valid_D_aux <='Z';
                --end if;
                
        end CASE;
  END PROCESS  OUTPUTS;
  
end Behavioral;
