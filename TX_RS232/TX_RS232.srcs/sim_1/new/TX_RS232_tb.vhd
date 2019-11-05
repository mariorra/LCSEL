----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.10.2019 23:07:21
-- Design Name: 
-- Module Name: TX_RS232_tb - Behavioral
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
entity TX_RS232_tb is
end;

architecture bench of TX_RS232_tb is

  component TX_RS232
      Port ( Clk : in STD_LOGIC;
                 Reset : in STD_LOGIC;
                 Start : in STD_LOGIC;
                 Data : in STD_LOGIC_VECTOR (7 downto 0);
                 EOT : out STD_LOGIC;
                 TX : out STD_LOGIC);
  end component;

  signal Clk : std_logic := '0';
  constant clk_period : time := 5ns;
  
  signal Reset: STD_LOGIC:='0';
  signal Start: STD_LOGIC:='0';
  signal Data: STD_LOGIC_VECTOR (7 downto 0):="00000000";
  signal EOT: STD_LOGIC;
  signal TX: STD_LOGIC;


begin

  uut: TX_RS232 port map ( Clk       => Clk,
                           Reset     => Reset,
                           Start => Start,
                           Data => Data,
                           EOT  => EOT,
                           TX => TX
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
    Reset <= '1';
    Start <= '1'; 
    wait for clk_period*187;
    DATA <="01100011";
    wait for clk_period*187*8;
    Start <= '0'; 
    Reset <= '0';
    wait for 30us;
    Start <= '1'; 
    Reset <= '1';
    DATA <="11001001";
    wait for clk_period*187*9;
    START <='0';
    --Start <= '1'; 
    --Reset <= '1';
    --wait for clk_period*187*8;
    --Start <= '0'; 
    wait for 30us;
  end process;
  
--


end;