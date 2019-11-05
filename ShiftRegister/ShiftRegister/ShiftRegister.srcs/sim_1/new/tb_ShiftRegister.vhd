---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2019 23:30:17
-- Design Name: 
-- Module Name: tb_ShiftRegister - tb
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ShiftRegister is
--  Port ( );
end tb_ShiftRegister;

architecture tb of tb_ShiftRegister is

    component ShiftRegister
        port (Reset  : in std_logic;
              Clk    : in std_logic;
              Enable : in std_logic;
              D      : in std_logic;
              Q      : out std_logic_vector (7 downto 0));
    end component;

    signal Reset: STD_LOGIC:='1';
    signal Clk : std_logic := '0';
    constant clk_period : time := 5ns;
    signal Enable : std_logic;
    signal D      : std_logic;
    signal Q      : std_logic_vector (7 downto 0);

begin

s0: ShiftRegister port map( Reset=>Reset,
                            Clk=>Clk,
                            Enable=>Enable,
                            D=>D,
                            Q=>Q);

signal_reset : PROCESS 

    BEGIN
    Reset <= '0';
    wait for 100 ns;
    Reset <= '1';
    wait for 200 ns;
    END PROCESS;
    
 signal_clk : PROCESS 

    BEGIN 
    Clk <= '1'; wait for clk_period/2;
    Clk <= '0'; wait for clk_period/2;
    END PROCESS;
    
    
    signal_enable : PROCESS 
    
    BEGIN
    Enable <= '0';
    wait for 20 ns;
    Enable <= '1';
    wait for 200 ns; 
    
    END PROCESS;
    
    
    signal_d : PROCESS 
    
    BEGIN 
    D <= '1';
    wait for clk_period;
    D <= '0';
    wait for clk_period;
    D <= '1';
    wait for clk_period;
    D <= '0';
    wait for clk_period;
    D <= '1';
    wait for clk_period;
    D <= '0';
    wait for clk_period;
    D <= '1';
    wait for clk_period;
    D <= '0';
    wait for clk_period*10;
    
    END PROCESS;



end tb;
