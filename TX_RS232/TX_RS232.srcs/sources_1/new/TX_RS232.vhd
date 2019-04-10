----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2019 23:18:44
-- Design Name: 
-- Module Name: TX_RS232 - Behavioral
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


entity RS232_TX is
    Port ( Clk : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Start : in STD_LOGIC;
               Data : in STD_LOGIC_VECTOR (7 downto 0);
               EOT : out STD_LOGIC;
               TX : out STD_LOGIC);
end RS232_TX;

architecture Behavioral of RS232_TX is
    --FSM definida en el guion
    TYPE estados IS (idle, Start_Bit, Send_Data,Stop_Bit);
    --variables de estado 
	SIGNAL s_current_state, s_next_state: estados;


 --------------
	--CONSTANTES--
	--------------
        -- contador del numero de clicks de reloj(87 clicks de reloj) para comparar la llegada del dato
    constant Halfbitcounter: STD_LOGIC_vector(7 downto 0) := "01010111"; 
        -- contador  de final 
    constant Bitcounter: STD_LOGIC_vector(7 downto 0) := "10101110";
    
    
    
    
   --------------- 
   -- VARIABLES --
   ---------------
   --señal de salida y señal de transmision
    SIGNAL s_TX_Salida, s_finalized_transmission: std_logic;
    --contador de ancho del bit
    SIGNAL s_pulse_width: STD_LOGIC_vector(7 downto 0);
    --contador de datos se envian
    --SIGNAL s_dataCount: integer := 0 ;
    SIGNAL s_dataCount: integer := 7 ;
    
  --#############################################
  --#############################################
  --#############################################
     
   
  begin
  -- identificar el estado actual conforme a las entradas y salidas
    PROCESS (reset, clk, s_current_state, s_pulse_width)

    begin
        if(reset = '0') then
        
            --momento inicial de la recepcion de datos
            --se resetean las variables para tener los datos inicializados a 0
            s_current_state <= idle;
            s_pulse_width <= "00000000";
                                 
        elsif clk'event AND clk='1' then 
                             
            -- si no se esta en idle se compara con los 174 clicks de reloj para conocer si ha completado el momento de 1bit de dato
              if s_current_state /= idle and s_pulse_width = "10101110" then 
                            s_pulse_width <= "00000000";
              else
                            s_pulse_width <= s_pulse_width + 1;
              end if;
        end if;
    END PROCESS;
    
    --#############################################
    --#############################################
    --#############################################
    

   --genera los siguiente estados:
    
   
    PROCESS(s_current_state, s_pulse_width , s_next_state )
    begin
        
        s_next_state <= s_current_state;  
    
        CASE s_current_state IS
               
            WHEN idle => -- dado que la transmision de datos comienza con el bit de start a nivel logico 1 se busca ese valor. 
                    
                    TX <= '1';
                    EOT <= '1';

                    IF (start = '1') THEN
                    -- en caso de llegada del nivel logico 0 del start se pasa de idle a start bit
                        s_next_state <= Start_Bit;
                    else 
                       s_next_state <= Idle;
                    END IF;
            
            -----------------------------------------------------  

             WHEN Start_Bit =>-- se busca los 87 click de reloj para muestrear el valor del dato que se debe enviar 
                    TX <= '0';--el bit de comienzo es 0
                    EOT <= '0';
                    If (s_pulse_width >=  Halfbitcounter) then 
                      -- de alcanzar 87 cliks de reloj se pasa al estado de envio del dato
                      s_next_state <= Send_Data;
                      else
                      s_next_state <= Start_Bit;
                    end if;
        
            -----------------------------------------------------      

            WHEN Send_Data=>

                   EOT <= '0';
                   IF (s_pulse_width >= Bitcounter) THEN
                        --If (s_dataCount = 7) then
                        If (s_dataCount = 0) then
                           s_next_state <= Stop_Bit;
                                                                       
                        else      
                          TX <= Data(s_dataCount);
                          --s_dataCount <= s_dataCount + 1;          
                          s_dataCount <= s_dataCount - 1;                
                          s_next_state <= Send_Data;
                        end if;
                   end if;
             -----------------------------------------------------      

             WHEN Stop_Bit=>
                    
                    If (s_pulse_width >=  "00000001") then
                    s_next_state <= Idle;
                    end if;
                    IF (s_dataCount = 0) THEN 
                        s_dataCount <= 7;
                    END IF; 
                    TX <= '1';
                    EOT <= '1';
        END CASE;
    END PROCESS;

end Behavioral;