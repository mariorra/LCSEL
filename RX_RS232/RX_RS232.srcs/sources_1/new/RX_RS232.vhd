----------------------------------------------------------------------------------
-- Company: 
-- Engineer: tedsgrfv
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

---
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

entity RX_RS232 is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           LineRD_in : in STD_LOGIC;
           Valid_Out : out STD_LOGIC;
           Code_out : out STD_LOGIC;
           Store_out : out STD_LOGIC);
end RX_RS232;

architecture Behavioral of RX_RS232 is

    --FSM definida en el guion
    TYPE estados IS (idle, Start_Bit, RcvData,Stop_Bit);
    --variables de estado 
    signal s_RX_current_state: estados;
	signal s_RX_next_state: estados;
	
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
	 signal s_valid_out_aux, s_code_out_aux, s_store_out_aux : std_logic; 
   
   --------------- 
   -- VARIABLES --
   ---------------
        --contador de ancho del bit
    signal s_pulse_width: STD_LOGIC_vector(7 downto 0) :="00000000" ;
          -- inicializacion contador del numero de datos recogidos 
    signal s_RX_dataCount:  STD_LOGIC_vector(2 downto 0) := "000";
        
begin

        -- identificar el estado actual conforme a las entradas y salidas
    RELOJ:    PROCESS (Reset, Clk, s_RX_current_state, s_RX_next_state, s_pulse_width, s_store_out_aux, s_code_out_aux, s_valid_out_aux)
        begin
            if(Reset = '0') then
            
                --momento inicial de la recepcion de datos
                --se resetean las variables para tener los datos inicializados a 0
                s_RX_current_state <= idle;
                s_pulse_width <= "00000000";
                s_RX_dataCount <= "000";
                Valid_out <= '0';
                Code_out <= '0';
                Store_out <= '0';
                          
            elsif rising_edge(Clk) then
                
                 --se actualizan las salidas
                Valid_out <= s_valid_out_aux;
                Code_out <= s_code_out_aux;
                Store_out <= s_store_out_aux;
                
                s_RX_current_state <=  s_RX_next_state;
                
                -- si no se esta en idle 
                if  s_RX_next_state /= idle then
                -- se compara con los 174 clicks de reloj para conocer si ha completado el momento de 1bit de dato
                   if s_pulse_width >= "10101110" then 
                        s_pulse_width <= "00000000";
                    else
                        s_pulse_width <= s_pulse_width + 1;
                  end if;
                end if; 
                
                if s_RX_next_state = idle then
                    s_pulse_width<="00000000";
                    s_RX_dataCount <= "000" ;
                end if;
                
                if s_RX_current_state = RcvData AND s_valid_out_aux = '1' then
                        s_RX_dataCount<=s_RX_dataCount+1;
                end if;
            end if;

        end process RELOJ;
        
        --#############################################
        --#############################################
        --#############################################
        
        --genera los siguiente estados:
        
    FSM: PROCESS(Clk,s_RX_current_state, s_RX_next_state, s_pulse_width, LineRD_in, s_RX_dataCount, Reset)
        begin
                   
            CASE s_RX_current_state IS
            
                WHEN idle => 
                    -- dado que la transmision de datos comienza con la bajada del bit de start a nivel logico 0 se busca ese valor. 
                    if LineRD_in = '0' and Reset='1' THEN
                    -- en caso de llegada del nivel logico 0 del start se pasa de idle a start bit
                        s_RX_next_state <= Start_Bit;
        			else 
                        s_RX_next_state <= Idle;
        			end if;
        				
                -----------------------------------------------------       
            
                WHEN Start_Bit =>
                    if s_pulse_width =  Bitcounter and LineRD_in='0' then 
                        s_RX_next_state <= RcvData;
                    -- al desconectar la recepcion se apaga la FSM
                    --elsif LineRD_in = '1'  then
                    --   s_RX_next_state <= idle;
                    else 
          			   s_RX_next_state <= Start_Bit;
                    end if;

                WHEN RcvData =>
                    --se revisa el numero de datos recividos al llegar a  7 sobre 0 se apaga 
                    --se apaga al terminar el LSB . de ahi el bitcounter
                    if (s_RX_dataCount = "111" and s_pulse_width = Bitcounter) then
                        s_RX_next_state <= Stop_Bit;
                    else
                        s_RX_next_state <= RcvData;
                    end if;

                -----------------------------------------------------       
            
                WHEN Stop_Bit =>
                    -- se comprueba el bit de parada 
                    if s_pulse_width =  Bitcounter and LineRD_in='1'  then
                        s_RX_next_state <= Idle;
                    else
                        s_RX_next_state <= Stop_Bit; 
                    end if;
            end CASE;

        end process FSM;

        --#############################################
        --#############################################
        --#############################################

        -- genera el estado de las salidas

    OUTPUTS: process(Clk,s_RX_current_state,s_pulse_width,s_RX_dataCount,LineRD_in)
        begin
            CASE s_RX_current_state IS
                
                    WHEN idle =>
                    -- las salidas en este estado no se deben de mover de 0 
                        s_valid_out_aux<='0';
                        s_code_out_aux<='0';
                        s_store_out_aux<='0';

                    -----------------------------------------------------       
                    WHEN Start_Bit =>
                    -- las salidas en este estado no se deben de mover de 0 
                        s_valid_out_aux<='0';
                        s_code_out_aux<='0';
                        s_store_out_aux <='0';

                    -----------------------------------------------------  
                
                    WHEN RcvData =>
                        --transmite a la FIFO el valor de la entrada de RX     
                        if (s_pulse_width =  bitcounter ) THEN
                            s_valid_out_aux <= '1';
                            s_code_out_aux <= LineRD_in;
                            s_store_out_aux<='0';
                        else
                            s_valid_out_aux<='0';
                            s_code_out_aux<='0';
                            s_store_out_aux <='0';
                        end if;

                    -----------------------------------------------------       
                
                    WHEN Stop_Bit =>
                        If s_pulse_width =  Halfbitcounter and LineRD_in='1' then 
                            s_store_out_aux<='1';
                            s_valid_out_aux <= '0';
                            s_code_out_aux<='0';
                        else
                            s_store_out_aux<='0';
                            s_valid_out_aux <= '0';
                            s_code_out_aux<='0';
                        end if; 

                end CASE;
        end process OUTPUTS;

end Behavioral;