----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.10.2019 23:07:21
-- Design Name: 
-- Module Name: RX_RS232_tb - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
--interfaz
entity RX_RS232_tb is
end;

architecture bench of RX_RS232_tb is

  component RX_RS232
      Port ( Clk : in STD_LOGIC;
             Reset : in STD_LOGIC;
             LineRD_in : in STD_LOGIC;
             Valid_Out : out STD_LOGIC;
             Code_out : out STD_LOGIC;
             Store_out : out STD_LOGIC);         
  end component;
  
  signal Clk : std_logic := '0';
  constant clk_period : time := 5ns;
  
  
 --TYPE estados IS (idle, Start_Bit, RcvData,Stop_Bit);
  --signal s_current_state :estados;
  --signal s_next_state :estados;
  
 --- signal Clk: STD_LOGIC;
  signal Reset: STD_LOGIC:='0';
  signal LineRD_in: STD_LOGIC:='1';
  signal Valid_Out: STD_LOGIC;
  signal Code_out: STD_LOGIC;
  signal Store_out: STD_LOGIC;

begin

  uut: RX_RS232 port map ( Clk       => Clk,
                           Reset     => Reset,
                           LineRD_in => LineRD_in,
                           Valid_Out => Valid_Out,
                           Code_out  => Code_out,
                           Store_out => Store_out
                            );
process begin
 Clk <= '1'; wait for clk_period/2;
 Clk <= '0'; wait for clk_period/2;
end process;

--state: process begin

--s_current_state <= s_current_state;
--s_next_state <= s_next_state;
--end process;

  stimulus: process
  begin
        --- inicio
          wait for clk_period;
          Reset <=  '1';
          LineRD_in <= '0';
          wait for 100 ns;
          LineRD_in <= '1'; 
          wait for 500 ns; 
         --605 ns 
        LineRD_in <= '0';     -- StartBit
        wait for clk_period*187;  LineRD_in <= '1';   -- LSb
        wait for clk_period*187;  LineRD_in <= '1';  
        wait for clk_period*187;  LineRD_in <= '1';
            wait for clk_period*187;  Reset <=  '0';
            wait for clk_period*187;  Reset <=  '1';
        wait for clk_period*187;  LineRD_in <= '0';     -- LSb
        wait for clk_period*187;  LineRD_in <= '0';
        wait for clk_period*187;  LineRD_in <= '0';
        wait for clk_period*187;  LineRD_in <= '1';
        wait for clk_period*187;  LineRD_in <= '1';   -- MSb
        wait for clk_period*187;  LineRD_in <= '1';   -- Stopbit
        wait for clk_period*187;  LineRD_in <= '0';
        wait for clk_period*187;  LineRD_in <= '1';
        wait for clk_period*187;  LineRD_in <= '1';
        
        wait for 20us;
  end process;
  
--


end;
