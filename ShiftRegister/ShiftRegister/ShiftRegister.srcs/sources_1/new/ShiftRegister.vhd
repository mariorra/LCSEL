----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2019 23:27:26
-- Design Name: 
-- Module Name: ShiftRegister - Behavioral
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
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftRegister is
    Port ( Reset : in STD_LOGIC;
               Clk : in STD_LOGIC;
               Enable : in STD_LOGIC;
               D : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR (7 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is

signal register_aux : STD_LOGIC_VECTOR (7 downto 0):= "00000000";
 
        --contador de ancho del bit
    signal s_pulse_width: STD_LOGIC_vector(7 downto 0) :="00000000" ;
            -- contador  de final 
    constant Bitcounter: STD_LOGIC_vector(7 downto 0) := "10101110";
    constant Halfbitcounter: STD_LOGIC_vector(7 downto 0) := "01010111"; 

begin

Reloj:    process(Reset, Clk, Enable)
    begin
        -- estado reset, inicio sistema
        if (Reset = '0') then 
            register_aux <= "00000000";
            s_pulse_width <= "00000000";
        -- Flanco de subida             
        elsif rising_edge(Clk) then

            if enable='0' then
             register_aux <= "00000000";
            end if;

            if s_pulse_width = Bitcounter or Enable ='0' then 
              s_pulse_width <= "00000000";
            else
             s_pulse_width <= s_pulse_width + 1;    
            end if;

            if enable ='1' then
               if  s_pulse_width =  HalfBitcounter THEN 
            -- copia los datos IN al registro interno desplazandolo 
            -- una unidad a la izquierda por medio del AND
            -- el bit 0 se pierde  dado que en ningun momento
            -- se propaga el valor del bit 0
            -- propagacion MSB to LSB (¿es mejor subiendo o bajando?)
                 register_aux<=D & register_aux(7 downto 1);
            end if;
                
            END IF;

        end if;
    end process Reloj;
Q<=register_aux;
end Behavioral;

