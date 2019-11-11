-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Nov  9 13:46:08 2019
-- Host        : Engineer running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Engenieer/Documents/LCSEL_git/LCSEL/RS232_COMPLETE/RS232_COMPLETE.srcs/sources_1/ip/Clk_gen/Clk_gen_stub.vhdl
-- Design      : Clk_gen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clk_gen is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Clk_gen;

architecture stub of Clk_gen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,clk_in1";
begin
end;
