
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.PIC_pkg.all;

ENTITY ram IS
PORT (
   Clk      : in    std_logic;
   Reset    : in    std_logic;
   write_en : in    std_logic;
   oe       : in    std_logic;
   address  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0);
   switches :  out std_logic_vector(7 downto 0);
   temp_L : out std_logic_vector(6 downto 0);
   temp_H : out std_logic_vector(6 downto 0)  );
END ram;

ARCHITECTURE behavior OF ram IS

  SIGNAL contents_ram : array8_ram(255 downto 0):= (others=> "00000000");
  signal databus_in : std_logic_vector (7 downto 0):="ZZZZZZZZ";
  signal databus_out : std_logic_vector (7 downto 0):="ZZZZZZZZ";
  
BEGIN
databus_in<=databus;
databus<=databus_out;
-------------------------------------------------------------------------
-- Memoria de propósito general
-------------------------------------------------------------------------
p_ram : process (clk,Reset)  -- no reset
begin
  if(Reset = '0') then
    loop_reset: for aux in 0 to 63 loop -- 0 a 3F en HEX
               if aux =49 then --valor del termostato
                   contents_ram(aux) <= "00001010";
               elsif aux = 4 then
                    contents_ram(aux) <= "00111100";
               elsif aux= 5 then
                    contents_ram(aux) <= "11000011";    
               else
                    contents_ram(aux) <= "00000000";
               end if;
    end loop loop_reset;
    
  elsif rising_edge(Clk) and write_en = '1' then
      contents_ram(to_Integer(unsigned(address))) <= databus_in;
  end if;

end process p_ram;

p_data : process(oe, address,contents_ram)

    begin
    switches<= "00000000";
    --valores de memoria 0x10 a 0x17 --> SWITCH
    if (to_integer(unsigned(address))>=16 and to_integer(unsigned(address))<=23) then
    --asignacion del valor recibido al display de 7 segmentos, (0)encendido (1)apagado
        switches (to_integer(unsigned(address))-16) <= contents_ram (to_integer(unsigned(address)))(0);
        databus_out <=  (others => 'Z');
    -- cuando se desactiva la salida de habilitacion de lectura se deja el valor por si lo pide la DMA en el bus de datos         
    elsif  oe ='0' then 
        databus_out <= contents_ram(to_integer(unsigned(address))); 
    else
        databus_out <=  (others => 'Z');
    end if;
    
end process p_data;


--databus <= contents_ram(conv_integer(address)) when oe = '0' else (others => 'Z');
-------------------------------------------------------------------------

-------------------------------------------------------------------------
-- Decodificador de BCD a 7 segmentos
-------------------------------------------------------------------------
with contents_ram(49)(7 downto 4) select
Temp_H <=
    "0000110" when "0001",  -- 1
    "1011011" when "0010",  -- 2
--    "1001111" when "0011",  -- 3
--    "1100110" when "0100",  -- 4
--    "1101101" when "0101",  -- 5
--    "1111101" when "0110",  -- 6
--    "0000111" when "0111",  -- 7
--    "1111111" when "1000",  -- 8
--    "1101111" when "1001",  -- 9
--    "1110111" when "1010",  -- A
--    "1111100" when "1011",  -- B
--    "0111001" when "1100",  -- C
--    "1011110" when "1101",  -- D
--    "1111001" when "1110",  -- E
--    "1110001" when "1111",  -- F
    "0111111" when others;  -- 0

with contents_ram(49)(3 downto 0) select
Temp_L <=
         "0000110" when "0001",  -- 1
         "1011011" when "0010",  -- 2
         "1001111" when "0011",  -- 3
         "1100110" when "0100",  -- 4
         "1101101" when "0101",  -- 5
         "1111101" when "0110",  -- 6
         "0000111" when "0111",  -- 7
         "1111111" when "1000",  -- 8
         "1101111" when "1001",  -- 9
         "0111111" when "0000",  -- 0
         "1111111" when others;
 --        "1110111" when "1010",  -- A
 --        "1111100" when "1011",  -- B
 --        "0111001" when "1100",  -- C
 --        "1011110" when "1101",  -- D
 --        "1111001" when "1110",  -- E
 --        "1110001" when "1111",  -- F
-------------------------------------------------------------------------

END behavior;

