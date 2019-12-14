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


entity TX_RS232 is
    Port ( Clk : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Start : in STD_LOGIC;
               Data : in STD_LOGIC_VECTOR (7 downto 0);
               EOT : out STD_LOGIC;
               TX : out STD_LOGIC);
end TX_RS232;

architecture Behavioral of TX_RS232 is
    --FSM definida en el guion
    TYPE estados IS (Idle, Start_Bit, Send_Data,Stop_Bit);
    --variables de estado 
	SIGNAL s_TX_current_state, s_TX_next_state: estados;
  signal s_TX_data_aux : STD_LOGIC_VECTOR (7 downto 0);

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
    SIGNAL s_TX_aux, s_EOT_aux: std_logic:='1';
    --contador de ancho del bit
    SIGNAL s_pulse_width: STD_LOGIC_vector(7 downto 0) :="00000000" ;
    --contador de datos se envian
    --SIGNAL s_TX_dataCount: integer := 0 ;
    signal s_TX_dataCount:  integer := 0;
    --signal s_TX_dataCount:  STD_LOGIC_vector(2 downto 0) := "000";
    --signal s_Data_aux: STD_LOGIC_VECTOR (7 downto 0):="10101010";
    signal datacount_number : integer := 0 ;
  --#############################################
  --#############################################
  --#############################################
          
           
  begin
  -- identificar el estado actual conforme a las entradas y salidas
  RELOJ: PROCESS (Reset, Clk, s_TX_current_state, s_pulse_width,s_TX_aux,s_EOT_aux)
    begin
      if(Reset = '0') then
        --se resetean las variables para tener los datos inicializados a 0
        s_TX_current_state <= Idle;
        s_pulse_width <= "00000000";
        s_TX_dataCount <= 0;
      elsif rising_edge(Clk) then 

        s_TX_current_state <=  s_TX_next_state;                        
        -- si no se esta en Idle se compara con los 174 clicks de reloj para conocer si ha completado el momento de 1bit de dato
        if s_TX_next_state /= Idle then
          if s_pulse_width = "10101110" then 
            s_pulse_width <= "00000000";
          else
            s_pulse_width <= s_pulse_width + 1;
          end if;
        end if;

        if s_TX_next_state = Idle then
          s_pulse_width<="00000000";
          s_TX_dataCount <= 0;
        end if;

        if s_TX_current_state = Send_Data  and s_pulse_width =  bitcounter THEN 
            if s_TX_dataCount >= 0 then
            s_TX_dataCount<=s_TX_dataCount+1;
            else 
            s_TX_dataCount <= 0;
            end if;
          
          end if;
        end if;
    END PROCESS  RELOJ;
      
      --#############################################
      --#############################################
      --#############################################
      

     --genera los siguiente estados:
    
   
  FSM: PROCESS(Clk,s_TX_current_state, s_pulse_width , s_TX_next_state, s_TX_data_aux )
    begin
      s_TX_data_aux<=DATA;
      CASE s_TX_current_state IS
               
        WHEN Idle => -- dado que la transmision de datos comienza con el bit de start a nivel logico 1 se busca ese valor. 
          if START = '1' and Reset='1' AND s_TX_data_aux/= "ZZZZZZZZ" THEN
            s_TX_next_state <= Start_Bit;
          else 
            s_TX_next_state <= Idle;
          end if;
              -----------------------------------------------------  

        WHEN Start_Bit =>-- se busca los 87 click de reloj para muestrear el valor del dato que se debe enviar 
          if s_pulse_width =  Bitcounter then
           s_TX_next_state <= Send_Data;
          else 
            s_TX_next_state <= Start_Bit;
          end if;
              -----------------------------------------------------      

        WHEN Send_Data=>
          if s_TX_dataCount = 7 and s_pulse_width =  bitcounter then   
            s_TX_next_state <= Stop_Bit;
          else
            s_TX_next_state <= Send_Data;
          end if;
               -----------------------------------------------------      

        WHEN Stop_Bit=>
          if s_pulse_width =  Bitcounter then  --AND START = '0' then
            s_TX_next_state <= Idle;
          else 
           s_TX_next_state <= Stop_Bit;
          end if;
         -- if START = '0'then
          --  s_TX_next_state <= Idle;
         -- end if;
    
      END CASE;
  END PROCESS FSM;
  

     EOT <= s_EOT_aux;
     TX <= s_TX_aux;          
  OUTPUTS: process(Clk,s_TX_current_state,s_TX_dataCount,s_TX_data_aux,datacount_number)
    begin
      CASE s_TX_current_state IS
               
        WHEN Idle =>
 
        s_TX_aux<='1';
        s_EOT_aux<='1';
        
                    -----------------------------------------------------       
        
        WHEN Start_Bit =>
          s_EOT_aux<='0';  
          s_TX_aux<='0';

                    -----------------------------------------------------  
                
        WHEN Send_Data =>
          s_EOT_aux<='0';
          s_TX_aux<= s_TX_data_aux(s_TX_dataCount);

                    -----------------------------------------------------       
                
        WHEN Stop_Bit =>
        s_TX_aux<='1';
        s_EOT_aux<='0';
  
      end CASE;
  end process OUTPUTS;

end Behavioral;