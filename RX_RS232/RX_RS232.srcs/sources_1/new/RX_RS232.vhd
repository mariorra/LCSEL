----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2019 19:18:02
-- Design Name: 
-- Module Name: RX_RS232 - Behavioral
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

entity RS232_RX is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           LineRD_in : in STD_LOGIC;
           Valid_Out : out STD_LOGIC;
           Code_out : out STD_LOGIC;
           Store_out : out STD_LOGIC);
end RS232_RX;

architecture Behavioral of RS232_RX is

    --FSM definida en el guion
    TYPE estados IS (idle, Start_Bit, RcvData,Stop_Bit);
    --variables de estado 
    SIGNAL s_current_state: estados;
	SIGNAL s_next_state: estados;
	
	--------------
	--CONSTANTES--
	--------------
        -- contador del numero de clicks de reloj para comparar la llegada del dato
    constant Halfbitcounter: STD_LOGIC_vector(7 downto 0) := "01010111"; 
        -- contador  de final 
    constant Bitcounter: STD_LOGIC_vector(7 downto 0) := "10101110";
    
	
	-------------
	-- SALIDAS --
	-------------
	
       -- s_valid_out_aux : Indica que el bit recién muestreado es válido y debe ser almacenado en el registro de desplazamiento, activa a nivel alto.
	   -- s_code_out_aux : Dato de salida (la línea RS232 es directamente pasada a la salida)
	   -- s_store_out_aux : Indica que el byte recién recibido es válido y debe pasar del registro de desplazamiento a la memoria interna, activa a nivel alto. 
	 SIGNAL s_valid_out_aux, s_code_out_aux, s_store_out_aux : std_logic; 
   
   --------------- 
   -- VARIABLES --
   ---------------
        --contador de ancho del bit
    SIGNAL s_pulse_width: STD_LOGIC_vector(7 downto 0);
        -- s_code_sig : codigo que se envia a la salida
        -- s_valid_sig : validacion de la recepcion 
    SIGNAL  s_code_sig, s_valid_sig : std_logic; 
        -- inicializacion contador del numero de datos recogidos 
    SIGNAL s_dataCount: integer := 0 ;
     
begin

    --#############################################
    --#############################################
    --#############################################

    -- identificar el estado actual conforme a las entradas y salidas
    PROCESS (reset, clk, s_current_state, s_next_state, s_pulse_width, s_store_out_aux, s_code_out_aux, s_valid_out_aux)
    begin
        if(reset = '0') then
        
            --momento inicial de la recepcion de datos
            --se resetean las variables para tener los datos inicializados a 0
            s_current_state <= idle;
            s_pulse_width <= "00000000";
            Valid_out <= '0';
            Code_out <= '0';
            Store_out <= '0';
                      
        elsif clk'event AND clk='1' then 
            
             --se actualizan las salidas
            Valid_out <= s_valid_out_aux;
            Code_out <= s_code_out_aux;
            Store_out <= s_store_out_aux;
            
            -- si no se esta en idle 
            if  s_current_state /= idle then
            -- se compara con los 174 clicks de reloj para conocer si ha completado el momento de 1bit de dato
              if s_pulse_width = "10101110" then 
                            s_pulse_width <= "00000000";
              else
                            s_pulse_width <= s_pulse_width + 1;
              end if;
            end if; 
        end if;
    end process;
    
    --#############################################
    --#############################################
    --#############################################
    
    --genera los siguiente estados:
    
    PROCESS(s_current_state, s_pulse_width , s_next_state,  LineRD_in )
    begin
        s_next_state <= s_current_state;	
    
        CASE s_current_state IS
               
            WHEN idle => -- dado que la transmision de datos comienza con la bajada del bit de start a nivel logico 0 se busca ese valor. 
                    IF (LineRD_in = '0') THEN
                    -- en caso de llegada del nivel logico 0 del start se pasa de idle a start bit
                        s_next_state <= Start_Bit;
					else 
					   s_next_state <= Idle;
    				END IF;
    				
            -----------------------------------------------------       
        
            WHEN Start_Bit =>-- se busca los 174 click de reloj para muestrear el valor del dato recogido
                     If (s_pulse_width >=  Halfbitcounter) then 
                     -- de alcanzar 174 cliks de reloj se pasa al estado de recepcion del dato
                        s_next_state <= RcvData;
  				     else
					   s_next_state <= Start_Bit;
                     end if;
        
            -----------------------------------------------------  
        
            WHEN RcvData =>
                    -- si la señal de numero de datos vale 0 se resetea las salidas      
                    If s_datacount = 0 then
                        s_code_sig <=  '0';
                        s_valid_sig <= '0';
                    end if; 
                 
                    If (s_pulse_width =  Halfbitcounter) then 
                        s_valid_sig <= '1';
                    else
                        s_valid_sig <= '0';
                    end if;                 
                                 
                    IF (s_pulse_width >= Bitcounter) THEN
                        If (s_dataCount >= 8) then
                           s_next_state <= Stop_Bit;
                                                                       
                        else               
                         -- DataCount <= DataCount + 1;            
                          s_code_sig <=  LineRD_in;     
                          s_dataCount <= s_dataCount + 1;                
                          s_next_state <= RcvData;
                        end if;
                   end if;
            -----------------------------------------------------       
        
            WHEN Stop_Bit =>-- para el bi de parada la linea se debe de quedar a nivel logico alto
                    --se resetea el valor del numero de datos contados 
                    s_dataCount <= 0;
                    If (s_pulse_width >=  "00000001") then
                        s_next_state <= Idle;
                    end if;
        
        end CASE;
    end process;
end Behavioral;
