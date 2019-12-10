-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Dec  6 22:30:25 2019
-- Host        : Engineer running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Engenieer/Documents/LCSEL_git/LCSEL/RS232_DMA_RAM/RS232_DMA_RAM.sim/sim_1/impl/func/xsim/PICtop_tb_func_impl.vhd
-- Design      : PICtop
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clk_PIC_TOP_Clk_PIC_TOP_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Clk_PIC_TOP_Clk_PIC_TOP_clk_wiz : entity is "Clk_PIC_TOP_clk_wiz";
end Clk_PIC_TOP_Clk_PIC_TOP_clk_wiz;

architecture STRUCTURE of Clk_PIC_TOP_Clk_PIC_TOP_clk_wiz is
  signal clk_in1_Clk_PIC_TOP : STD_LOGIC;
  signal clk_out1_Clk_PIC_TOP : STD_LOGIC;
  signal clkfbout_Clk_PIC_TOP : STD_LOGIC;
  signal clkfbout_buf_Clk_PIC_TOP : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "RETARGET";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_Clk_PIC_TOP,
      O => clkfbout_buf_Clk_PIC_TOP
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_Clk_PIC_TOP
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_Clk_PIC_TOP,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 8.500000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 42.500000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '1',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_Clk_PIC_TOP,
      CLKFBOUT => clkfbout_Clk_PIC_TOP,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_Clk_PIC_TOP,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_Clk_PIC_TOP,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => lopt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clk_gen_Clk_gen_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Clk_gen_Clk_gen_clk_wiz : entity is "Clk_gen_clk_wiz";
end Clk_gen_Clk_gen_clk_wiz;

architecture STRUCTURE of Clk_gen_Clk_gen_clk_wiz is
  signal clk_out1_Clk_gen : STD_LOGIC;
  signal clkfbout_Clk_gen : STD_LOGIC;
  signal clkfbout_buf_Clk_gen : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "MLO RETARGET";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_Clk_gen,
      O => clkfbout_buf_Clk_gen
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_Clk_gen,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 42.500000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 50.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 42.500000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '1',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_Clk_gen,
      CLKFBOUT => clkfbout_Clk_gen,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_Clk_gen,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => lopt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DMA is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    RAM_ADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_DMA_ACK_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_27 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_28 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_29 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_30 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_31 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_32 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_33 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_34 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_35 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_36 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_37 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_38 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_39 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_40 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_41 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_42 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_43 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_44 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_45 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_46 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_47 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_48 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_49 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_50 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_51 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_52 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_53 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_54 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_55 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_56 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_57 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_58 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_59 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_60 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_61 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_62 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_READY : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    m_DMA_ACK_reg_63 : out STD_LOGIC;
    \^reset\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_27 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_28 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_29 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_30 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_31 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_32 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_33 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_34 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_35 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_36 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_37 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_38 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_39 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_40 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_41 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_42 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_43 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_44 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_45 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_46 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_47 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_48 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_49 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_50 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_51 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_52 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_53 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_54 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_55 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_56 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_57 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_58 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_59 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_60 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_61 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_62 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_63 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_64 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_65 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_66 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_67 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_68 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_69 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_70 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_71 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_72 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_73 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_74 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_75 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_76 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_77 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_78 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_79 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_80 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_81 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_82 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_83 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_84 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_85 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_86 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_87 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_88 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_89 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_90 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_91 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_92 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_93 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_94 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_95 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_96 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_97 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_98 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_99 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_100 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_101 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_102 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_103 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_104 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_105 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_106 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_107 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_108 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_109 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_110 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_111 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_112 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_113 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_114 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_115 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_116 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_117 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_118 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_119 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_120 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_121 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_122 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_123 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_124 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_125 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_126 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_127 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_128 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_129 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_130 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_131 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_132 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_133 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_ACK_reg_64 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_DMA_RQ : out STD_LOGIC;
    Reset_134 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_135 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_136 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_137 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_138 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_139 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_140 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_141 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_142 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_143 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_144 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_145 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_146 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_147 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_148 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_149 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_150 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_151 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_152 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_153 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_154 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_155 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_156 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_157 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_158 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_159 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_160 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_161 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_162 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_163 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_164 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_165 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_166 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_167 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_168 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_169 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_170 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_171 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_172 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_173 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_174 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_175 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_176 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_177 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_178 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_179 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_180 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_181 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_182 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_183 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_184 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_185 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_186 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_187 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_188 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_189 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_190 : out STD_LOGIC_VECTOR ( 0 to 0 );
    switches_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_s_DMA_current_state_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_RDY_FROM_RS : in STD_LOGIC;
    ACK_FROM_RS : in STD_LOGIC;
    Send_comm : in STD_LOGIC;
    empty : in STD_LOGIC;
    DMA_ACK : in STD_LOGIC;
    s_DMA_next_state110_out : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \switches[0]\ : in STD_LOGIC;
    \switches[0]_0\ : in STD_LOGIC;
    \contents_ram_reg[49][0]\ : in STD_LOGIC;
    \contents_ram_reg[49][0]_0\ : in STD_LOGIC;
    \contents_ram_reg[49][1]\ : in STD_LOGIC;
    \contents_ram_reg[49][2]\ : in STD_LOGIC;
    \contents_ram_reg[49][3]\ : in STD_LOGIC;
    \contents_ram_reg[49][4]\ : in STD_LOGIC;
    \contents_ram_reg[49][5]\ : in STD_LOGIC;
    \contents_ram_reg[49][6]\ : in STD_LOGIC;
    \contents_ram_reg[49][7]\ : in STD_LOGIC;
    clk_out1 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end DMA;

architecture STRUCTURE of DMA is
  signal Address_aux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Databus_OUT_from_DMA_aux_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[0]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[1]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[2]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[3]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[4]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[5]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[6]\ : STD_LOGIC;
  signal \Databus_OUT_from_DMA_aux_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_DMA_next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal OE_RAM : STD_LOGIC;
  signal OE_aux : STD_LOGIC;
  signal OE_aux0 : STD_LOGIC;
  signal \^ram_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \TX_Data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal U_READY_i_2_n_0 : STD_LOGIC;
  signal Write_en_RAM : STD_LOGIC;
  signal Write_en_aux0 : STD_LOGIC;
  signal ZERO_1 : STD_LOGIC;
  signal contador : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal contador_aux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \contador_aux__0\ : STD_LOGIC;
  signal \contador_aux_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \contador_aux_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \contador_aux_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \contador_aux_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \contador_aux_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \contador_aux_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \^m_dma_ack_reg_64\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_DMA_current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_DMA_next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_DMA_next_state11_out : STD_LOGIC;
  signal s_DMA_next_state13_out : STD_LOGIC;
  signal s_DMA_next_state17_out : STD_LOGIC;
  signal \s_DMA_next_state1__0\ : STD_LOGIC;
  signal \s_DMA_next_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \switches_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Databus_OUT_from_DMA_aux_reg[7]\ : label is "LD";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \Databus_OUT_from_DMA_aux_reg[7]_i_2\ : label is 1695;
  attribute \PinAttr:I3:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I3:HOLD_DETOUR\ of \Databus_OUT_from_DMA_aux_reg[7]_i_2\ : label is 1671;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_DMA_current_state_reg[0]\ : label is "rx_parametro1:0011,rx_parametro2:0100,rx_comando:0010,control_rx:0001,idle:0000,transmision_byte1:0111,transmision_byte2:1001,control_tx:0110,transmision_status:1000,rx_fin:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_DMA_current_state_reg[1]\ : label is "rx_parametro1:0011,rx_parametro2:0100,rx_comando:0010,control_rx:0001,idle:0000,transmision_byte1:0111,transmision_byte2:1001,control_tx:0110,transmision_status:1000,rx_fin:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_DMA_current_state_reg[2]\ : label is "rx_parametro1:0011,rx_parametro2:0100,rx_comando:0010,control_rx:0001,idle:0000,transmision_byte1:0111,transmision_byte2:1001,control_tx:0110,transmision_status:1000,rx_fin:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_DMA_current_state_reg[3]\ : label is "rx_parametro1:0011,rx_parametro2:0100,rx_comando:0010,control_rx:0001,idle:0000,transmision_byte1:0111,transmision_byte2:1001,control_tx:0110,transmision_status:1000,rx_fin:0101";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_s_DMA_next_state_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_s_DMA_next_state_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_s_DMA_next_state_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_s_DMA_next_state_reg[3]\ : label is "LD";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of GND_3 : label is "PROPCONST";
  attribute OPT_MODIFIED of GND_4 : label is "PROPCONST";
  attribute \PinAttr:I3:HOLD_DETOUR\ of Internal_memory_i_1 : label is 1695;
  attribute \PinAttr:I4:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I4:HOLD_DETOUR\ of Internal_memory_i_1 : label is 1671;
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[0]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[0]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[0]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[1]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[1]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[1]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[2]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[2]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[2]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[3]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[3]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[3]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[4]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[4]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[4]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[5]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[5]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[5]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[6]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[6]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[6]_i_3\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[7]\ : label is "LD";
  attribute OPT_MODIFIED of \TX_Data_reg[7]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[7]_i_4\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM of \contador_aux_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \contador_aux_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \contador_aux_reg[2]\ : label is "LD";
  attribute OPT_MODIFIED of \contents_ram[0][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[1][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[2][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[3][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[4][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[5][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[6][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \contents_ram[7][7]_i_1\ : label is "PROPCONST";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  RAM_ADDR(7) <= \^ram_addr\(3);
  RAM_ADDR(6) <= \^ram_addr\(3);
  RAM_ADDR(3 downto 0) <= \^ram_addr\(3 downto 0);
  m_DMA_ACK_reg_13(0) <= ZERO_1;
  m_DMA_ACK_reg_64(0) <= \^m_dma_ack_reg_64\(0);
  switches_OBUF(7) <= ZERO_1;
  switches_OBUF(6) <= ZERO_1;
  switches_OBUF(5) <= ZERO_1;
  switches_OBUF(4) <= ZERO_1;
  switches_OBUF(3) <= ZERO_1;
  switches_OBUF(2) <= ZERO_1;
  switches_OBUF(1) <= ZERO_1;
  switches_OBUF(0) <= ZERO_1;
  RAM_ADDR(4) <= 'Z';
  RAM_ADDR(5) <= 'Z';
  \^reset\(0) <= 'Z';
  Reset_0(0) <= 'Z';
  Reset_1(0) <= 'Z';
  Reset_10(0) <= 'Z';
  Reset_100(0) <= 'Z';
  Reset_101(0) <= 'Z';
  Reset_102(0) <= 'Z';
  Reset_103(0) <= 'Z';
  Reset_104(0) <= 'Z';
  Reset_105(0) <= 'Z';
  Reset_106(0) <= 'Z';
  Reset_107(0) <= 'Z';
  Reset_108(0) <= 'Z';
  Reset_109(0) <= 'Z';
  Reset_11(0) <= 'Z';
  Reset_110(0) <= 'Z';
  Reset_111(0) <= 'Z';
  Reset_112(0) <= 'Z';
  Reset_113(0) <= 'Z';
  Reset_114(0) <= 'Z';
  Reset_115(0) <= 'Z';
  Reset_116(0) <= 'Z';
  Reset_117(0) <= 'Z';
  Reset_118(0) <= 'Z';
  Reset_119(0) <= 'Z';
  Reset_12(0) <= 'Z';
  Reset_120(0) <= 'Z';
  Reset_121(0) <= 'Z';
  Reset_122(0) <= 'Z';
  Reset_123(0) <= 'Z';
  Reset_124(0) <= 'Z';
  Reset_125(0) <= 'Z';
  Reset_126(0) <= 'Z';
  Reset_127(0) <= 'Z';
  Reset_128(0) <= 'Z';
  Reset_129(0) <= 'Z';
  Reset_13(0) <= 'Z';
  Reset_130(0) <= 'Z';
  Reset_131(0) <= 'Z';
  Reset_132(0) <= 'Z';
  Reset_133(0) <= 'Z';
  Reset_134(0) <= 'Z';
  Reset_135(0) <= 'Z';
  Reset_136(0) <= 'Z';
  Reset_137(0) <= 'Z';
  Reset_138(0) <= 'Z';
  Reset_139(0) <= 'Z';
  Reset_14(0) <= 'Z';
  Reset_140(0) <= 'Z';
  Reset_141(0) <= 'Z';
  Reset_142(0) <= 'Z';
  Reset_143(0) <= 'Z';
  Reset_144(0) <= 'Z';
  Reset_145(0) <= 'Z';
  Reset_146(0) <= 'Z';
  Reset_147(0) <= 'Z';
  Reset_148(0) <= 'Z';
  Reset_149(0) <= 'Z';
  Reset_15(0) <= 'Z';
  Reset_150(0) <= 'Z';
  Reset_151(0) <= 'Z';
  Reset_152(0) <= 'Z';
  Reset_153(0) <= 'Z';
  Reset_154(0) <= 'Z';
  Reset_155(0) <= 'Z';
  Reset_156(0) <= 'Z';
  Reset_157(0) <= 'Z';
  Reset_158(0) <= 'Z';
  Reset_159(0) <= 'Z';
  Reset_16(0) <= 'Z';
  Reset_160(0) <= 'Z';
  Reset_161(0) <= 'Z';
  Reset_162(0) <= 'Z';
  Reset_163(0) <= 'Z';
  Reset_164(0) <= 'Z';
  Reset_165(0) <= 'Z';
  Reset_166(0) <= 'Z';
  Reset_167(0) <= 'Z';
  Reset_168(0) <= 'Z';
  Reset_169(0) <= 'Z';
  Reset_17(0) <= 'Z';
  Reset_170(0) <= 'Z';
  Reset_171(0) <= 'Z';
  Reset_172(0) <= 'Z';
  Reset_173(0) <= 'Z';
  Reset_174(0) <= 'Z';
  Reset_175(0) <= 'Z';
  Reset_176(0) <= 'Z';
  Reset_177(0) <= 'Z';
  Reset_178(0) <= 'Z';
  Reset_179(0) <= 'Z';
  Reset_18(0) <= 'Z';
  Reset_180(0) <= 'Z';
  Reset_181(0) <= 'Z';
  Reset_182(0) <= 'Z';
  Reset_183(0) <= 'Z';
  Reset_184(0) <= 'Z';
  Reset_185(0) <= 'Z';
  Reset_186(0) <= 'Z';
  Reset_187(0) <= 'Z';
  Reset_188(0) <= 'Z';
  Reset_189(0) <= 'Z';
  Reset_19(0) <= 'Z';
  Reset_190(0) <= 'Z';
  Reset_2(0) <= 'Z';
  Reset_20(0) <= 'Z';
  Reset_21(0) <= 'Z';
  Reset_22(0) <= 'Z';
  Reset_23(0) <= 'Z';
  Reset_24(0) <= 'Z';
  Reset_25(0) <= 'Z';
  Reset_26(0) <= 'Z';
  Reset_27(0) <= 'Z';
  Reset_28(0) <= 'Z';
  Reset_29(0) <= 'Z';
  Reset_3(0) <= 'Z';
  Reset_30(0) <= 'Z';
  Reset_31(0) <= 'Z';
  Reset_32(0) <= 'Z';
  Reset_33(0) <= 'Z';
  Reset_34(0) <= 'Z';
  Reset_35(0) <= 'Z';
  Reset_36(0) <= 'Z';
  Reset_37(0) <= 'Z';
  Reset_38(0) <= 'Z';
  Reset_39(0) <= 'Z';
  Reset_4(0) <= 'Z';
  Reset_40(0) <= 'Z';
  Reset_41(0) <= 'Z';
  Reset_42(0) <= 'Z';
  Reset_43(0) <= 'Z';
  Reset_44(0) <= 'Z';
  Reset_45(0) <= 'Z';
  Reset_46(0) <= 'Z';
  Reset_47(0) <= 'Z';
  Reset_48(0) <= 'Z';
  Reset_49(0) <= 'Z';
  Reset_5(0) <= 'Z';
  Reset_50(0) <= 'Z';
  Reset_51(0) <= 'Z';
  Reset_52(0) <= 'Z';
  Reset_53(0) <= 'Z';
  Reset_54(0) <= 'Z';
  Reset_55(0) <= 'Z';
  Reset_56(0) <= 'Z';
  Reset_57(0) <= 'Z';
  Reset_58(0) <= 'Z';
  Reset_59(0) <= 'Z';
  Reset_6(0) <= 'Z';
  Reset_60(0) <= 'Z';
  Reset_61(0) <= 'Z';
  Reset_62(0) <= 'Z';
  Reset_63(0) <= 'Z';
  Reset_64(0) <= 'Z';
  Reset_65(0) <= 'Z';
  Reset_66(0) <= 'Z';
  Reset_67(0) <= 'Z';
  Reset_68(0) <= 'Z';
  Reset_69(0) <= 'Z';
  Reset_7(0) <= 'Z';
  Reset_70(0) <= 'Z';
  Reset_71(0) <= 'Z';
  Reset_72(0) <= 'Z';
  Reset_73(0) <= 'Z';
  Reset_74(0) <= 'Z';
  Reset_75(0) <= 'Z';
  Reset_76(0) <= 'Z';
  Reset_77(0) <= 'Z';
  Reset_78(0) <= 'Z';
  Reset_79(0) <= 'Z';
  Reset_8(0) <= 'Z';
  Reset_80(0) <= 'Z';
  Reset_81(0) <= 'Z';
  Reset_82(0) <= 'Z';
  Reset_83(0) <= 'Z';
  Reset_84(0) <= 'Z';
  Reset_85(0) <= 'Z';
  Reset_86(0) <= 'Z';
  Reset_87(0) <= 'Z';
  Reset_88(0) <= 'Z';
  Reset_89(0) <= 'Z';
  Reset_9(0) <= 'Z';
  Reset_90(0) <= 'Z';
  Reset_91(0) <= 'Z';
  Reset_92(0) <= 'Z';
  Reset_93(0) <= 'Z';
  Reset_94(0) <= 'Z';
  Reset_95(0) <= 'Z';
  Reset_96(0) <= 'Z';
  Reset_97(0) <= 'Z';
  Reset_98(0) <= 'Z';
  Reset_99(0) <= 'Z';
  m_DMA_ACK_reg(0) <= 'Z';
  m_DMA_ACK_reg_0(0) <= 'Z';
  m_DMA_ACK_reg_1(0) <= 'Z';
  m_DMA_ACK_reg_10(0) <= 'Z';
  m_DMA_ACK_reg_11(0) <= 'Z';
  m_DMA_ACK_reg_12(0) <= 'Z';
  m_DMA_ACK_reg_14(0) <= 'Z';
  m_DMA_ACK_reg_15(0) <= 'Z';
  m_DMA_ACK_reg_16(0) <= 'Z';
  m_DMA_ACK_reg_17(0) <= 'Z';
  m_DMA_ACK_reg_18(0) <= 'Z';
  m_DMA_ACK_reg_19(0) <= 'Z';
  m_DMA_ACK_reg_2(0) <= 'Z';
  m_DMA_ACK_reg_20(0) <= 'Z';
  m_DMA_ACK_reg_21(0) <= 'Z';
  m_DMA_ACK_reg_22(0) <= 'Z';
  m_DMA_ACK_reg_23(0) <= 'Z';
  m_DMA_ACK_reg_24(0) <= 'Z';
  m_DMA_ACK_reg_25(0) <= 'Z';
  m_DMA_ACK_reg_26(0) <= 'Z';
  m_DMA_ACK_reg_27(0) <= 'Z';
  m_DMA_ACK_reg_28(0) <= 'Z';
  m_DMA_ACK_reg_29(0) <= 'Z';
  m_DMA_ACK_reg_3(0) <= 'Z';
  m_DMA_ACK_reg_30(0) <= 'Z';
  m_DMA_ACK_reg_31(0) <= 'Z';
  m_DMA_ACK_reg_32(0) <= 'Z';
  m_DMA_ACK_reg_33(0) <= 'Z';
  m_DMA_ACK_reg_34(0) <= 'Z';
  m_DMA_ACK_reg_35(0) <= 'Z';
  m_DMA_ACK_reg_36(0) <= 'Z';
  m_DMA_ACK_reg_37(0) <= 'Z';
  m_DMA_ACK_reg_38(0) <= 'Z';
  m_DMA_ACK_reg_39(0) <= 'Z';
  m_DMA_ACK_reg_4(0) <= 'Z';
  m_DMA_ACK_reg_40(0) <= 'Z';
  m_DMA_ACK_reg_41(0) <= 'Z';
  m_DMA_ACK_reg_42(0) <= 'Z';
  m_DMA_ACK_reg_43(0) <= 'Z';
  m_DMA_ACK_reg_44(0) <= 'Z';
  m_DMA_ACK_reg_45(0) <= 'Z';
  m_DMA_ACK_reg_46(0) <= 'Z';
  m_DMA_ACK_reg_47(0) <= 'Z';
  m_DMA_ACK_reg_48(0) <= 'Z';
  m_DMA_ACK_reg_49(0) <= 'Z';
  m_DMA_ACK_reg_5(0) <= 'Z';
  m_DMA_ACK_reg_50(0) <= 'Z';
  m_DMA_ACK_reg_51(0) <= 'Z';
  m_DMA_ACK_reg_52(0) <= 'Z';
  m_DMA_ACK_reg_53(0) <= 'Z';
  m_DMA_ACK_reg_54(0) <= 'Z';
  m_DMA_ACK_reg_6(0) <= 'Z';
  m_DMA_ACK_reg_7(0) <= 'Z';
  m_DMA_ACK_reg_8(0) <= 'Z';
  m_DMA_ACK_reg_9(0) <= 'Z';
Ack_in_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F1F5F5F5F5F7F7F"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(1),
      I2 => TX_RDY_FROM_RS,
      I3 => s_DMA_current_state(0),
      I4 => ACK_FROM_RS,
      I5 => s_DMA_current_state(2),
      O => \FSM_sequential_s_DMA_current_state_reg[3]_0\
    );
\Data_FF[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0E0A0A0A0A08080"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(1),
      I2 => TX_RDY_FROM_RS,
      I3 => s_DMA_current_state(0),
      I4 => ACK_FROM_RS,
      I5 => s_DMA_current_state(2),
      O => E(0)
    );
\Databus_OUT_from_DMA_aux_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[0]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[0]\
    );
\Databus_OUT_from_DMA_aux_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(0),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[0]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[1]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[1]\
    );
\Databus_OUT_from_DMA_aux_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(1),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[1]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[2]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[2]\
    );
\Databus_OUT_from_DMA_aux_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(2),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[2]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[3]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[3]\
    );
\Databus_OUT_from_DMA_aux_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(3),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[3]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[4]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[4]\
    );
\Databus_OUT_from_DMA_aux_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(4),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[4]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[5]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[5]\
    );
\Databus_OUT_from_DMA_aux_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(5),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[5]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[6]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[6]\
    );
\Databus_OUT_from_DMA_aux_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(6),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[6]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Databus_OUT_from_DMA_aux_reg[7]_i_1_n_0\,
      G => \^m_dma_ack_reg_64\(0),
      GE => '1',
      Q => \Databus_OUT_from_DMA_aux_reg_n_0_[7]\
    );
\Databus_OUT_from_DMA_aux_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DC8C"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => dout(7),
      I2 => s_DMA_current_state(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(3),
      O => \Databus_OUT_from_DMA_aux_reg[7]_i_1_n_0\
    );
\Databus_OUT_from_DMA_aux_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0022220C"
    )
        port map (
      I0 => DMA_ACK,
      I1 => s_DMA_current_state(3),
      I2 => s_DMA_current_state(0),
      I3 => s_DMA_current_state(2),
      I4 => s_DMA_current_state(1),
      O => \^m_dma_ack_reg_64\(0)
    );
\FSM_sequential_s_DMA_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_DMA_next_state(0),
      Q => s_DMA_current_state(0)
    );
\FSM_sequential_s_DMA_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_DMA_next_state(1),
      Q => s_DMA_current_state(1)
    );
\FSM_sequential_s_DMA_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_DMA_next_state(2),
      Q => s_DMA_current_state(2)
    );
\FSM_sequential_s_DMA_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_DMA_next_state(3),
      Q => s_DMA_current_state(3)
    );
\FSM_sequential_s_DMA_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_DMA_next_state__0\(0),
      G => \FSM_sequential_s_DMA_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => s_DMA_next_state(0)
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B874BB77B8748844"
    )
        port map (
      I0 => ACK_FROM_RS,
      I1 => s_DMA_current_state(3),
      I2 => \FSM_sequential_s_DMA_next_state_reg[0]_i_2_n_0\,
      I3 => s_DMA_current_state(0),
      I4 => s_DMA_current_state(2),
      I5 => \FSM_sequential_s_DMA_next_state_reg[0]_i_3_n_0\,
      O => \s_DMA_next_state__0\(0)
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B778B44"
    )
        port map (
      I0 => ACK_FROM_RS,
      I1 => s_DMA_current_state(1),
      I2 => \s_DMA_next_state1__0\,
      I3 => s_DMA_current_state(0),
      I4 => s_DMA_next_state11_out,
      O => \FSM_sequential_s_DMA_next_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_s_DMA_next_state_reg[0]_i_5_n_0\,
      I1 => \FSM_sequential_s_DMA_next_state_reg[0]_i_6_n_0\,
      O => \FSM_sequential_s_DMA_next_state_reg[0]_i_3_n_0\,
      S => s_DMA_current_state(1)
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => DMA_ACK,
      I1 => contador(1),
      I2 => contador(2),
      I3 => contador(0),
      O => s_DMA_next_state11_out
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFEFF0000"
    )
        port map (
      I0 => contador(2),
      I1 => contador(1),
      I2 => contador(0),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(0),
      I5 => s_DMA_next_state110_out,
      O => \FSM_sequential_s_DMA_next_state_reg[0]_i_5_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAA2A"
    )
        port map (
      I0 => s_DMA_current_state(0),
      I1 => DMA_ACK,
      I2 => contador(1),
      I3 => contador(2),
      I4 => contador(0),
      O => \FSM_sequential_s_DMA_next_state_reg[0]_i_6_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_s_DMA_next_state_reg[1]_i_1_n_0\,
      G => \FSM_sequential_s_DMA_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => s_DMA_next_state(1)
    );
\FSM_sequential_s_DMA_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EE2E2222"
    )
        port map (
      I0 => \FSM_sequential_s_DMA_next_state_reg[1]_i_2_n_0\,
      I1 => s_DMA_current_state(2),
      I2 => s_DMA_current_state(0),
      I3 => ACK_FROM_RS,
      I4 => s_DMA_current_state(1),
      I5 => s_DMA_current_state(3),
      O => \FSM_sequential_s_DMA_next_state_reg[1]_i_1_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF74CC"
    )
        port map (
      I0 => s_DMA_next_state13_out,
      I1 => s_DMA_current_state(1),
      I2 => s_DMA_next_state17_out,
      I3 => s_DMA_current_state(0),
      I4 => Send_comm,
      I5 => empty,
      O => \FSM_sequential_s_DMA_next_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => DMA_ACK,
      I1 => contador(0),
      I2 => contador(1),
      I3 => contador(2),
      O => s_DMA_next_state17_out
    );
\FSM_sequential_s_DMA_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_s_DMA_next_state_reg[2]_i_1_n_0\,
      G => \FSM_sequential_s_DMA_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => s_DMA_next_state(2)
    );
\FSM_sequential_s_DMA_next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_sequential_s_DMA_next_state_reg[2]_i_2_n_0\,
      I1 => s_DMA_current_state(2),
      I2 => \FSM_sequential_s_DMA_next_state_reg[2]_i_3_n_0\,
      I3 => s_DMA_current_state(3),
      O => \FSM_sequential_s_DMA_next_state_reg[2]_i_1_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83838380"
    )
        port map (
      I0 => s_DMA_next_state13_out,
      I1 => s_DMA_current_state(1),
      I2 => s_DMA_current_state(0),
      I3 => Send_comm,
      I4 => empty,
      O => \FSM_sequential_s_DMA_next_state_reg[2]_i_2_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FBF"
    )
        port map (
      I0 => ACK_FROM_RS,
      I1 => s_DMA_current_state(1),
      I2 => s_DMA_current_state(0),
      I3 => \s_DMA_next_state1__0\,
      O => \FSM_sequential_s_DMA_next_state_reg[2]_i_3_n_0\
    );
\FSM_sequential_s_DMA_next_state_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => DMA_ACK,
      I1 => contador(0),
      I2 => contador(1),
      I3 => contador(2),
      O => s_DMA_next_state13_out
    );
\FSM_sequential_s_DMA_next_state_reg[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => DMA_ACK,
      I1 => contador(0),
      I2 => contador(2),
      I3 => contador(1),
      O => \s_DMA_next_state1__0\
    );
\FSM_sequential_s_DMA_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_DMA_next_state__0\(3),
      G => \FSM_sequential_s_DMA_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => s_DMA_next_state(3)
    );
\FSM_sequential_s_DMA_next_state_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A4AAA0AA"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(2),
      I2 => ACK_FROM_RS,
      I3 => s_DMA_current_state(0),
      I4 => s_DMA_current_state(1),
      O => \s_DMA_next_state__0\(3)
    );
\FSM_sequential_s_DMA_next_state_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555FFFFFFFB"
    )
        port map (
      I0 => s_DMA_current_state(2),
      I1 => empty,
      I2 => Send_comm,
      I3 => s_DMA_current_state(0),
      I4 => s_DMA_current_state(1),
      I5 => s_DMA_current_state(3),
      O => \FSM_sequential_s_DMA_next_state_reg[3]_i_2_n_0\
    );
GND_3: unisim.vcomponents.GND
     port map (
      G => \^ram_addr\(3)
    );
GND_4: unisim.vcomponents.GND
     port map (
      G => ZERO_1
    );
Internal_memory_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02022220"
    )
        port map (
      I0 => DMA_ACK,
      I1 => s_DMA_current_state(3),
      I2 => s_DMA_current_state(1),
      I3 => s_DMA_current_state(0),
      I4 => s_DMA_current_state(2),
      O => rd_en
    );
\TX_Data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(0),
      G => OE_aux0,
      GE => '1',
      Q => Q(0)
    );
\TX_Data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[0]_i_2_n_0\,
      I1 => \TX_Data_reg[0]_i_3_n_0\,
      O => \^d\(0)
    );
\TX_Data_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][0]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[0]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[0]_i_2_n_0\
    );
\TX_Data_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[0]_i_3_n_0\
    );
\TX_Data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(1),
      G => OE_aux0,
      GE => '1',
      Q => Q(1)
    );
\TX_Data_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[1]_i_2_n_0\,
      I1 => \TX_Data_reg[1]_i_3_n_0\,
      O => \^d\(1)
    );
\TX_Data_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][1]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[1]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[1]_i_2_n_0\
    );
\TX_Data_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[1]_i_3_n_0\
    );
\TX_Data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(2),
      G => OE_aux0,
      GE => '1',
      Q => Q(2)
    );
\TX_Data_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[2]_i_2_n_0\,
      I1 => \TX_Data_reg[2]_i_3_n_0\,
      O => \^d\(2)
    );
\TX_Data_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][2]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[2]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[2]_i_2_n_0\
    );
\TX_Data_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[2]_i_3_n_0\
    );
\TX_Data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(3),
      G => OE_aux0,
      GE => '1',
      Q => Q(3)
    );
\TX_Data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[3]_i_2_n_0\,
      I1 => \TX_Data_reg[3]_i_3_n_0\,
      O => \^d\(3)
    );
\TX_Data_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][3]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[3]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[3]_i_2_n_0\
    );
\TX_Data_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[3]_i_3_n_0\
    );
\TX_Data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(4),
      G => OE_aux0,
      GE => '1',
      Q => Q(4)
    );
\TX_Data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[4]_i_2_n_0\,
      I1 => \TX_Data_reg[4]_i_3_n_0\,
      O => \^d\(4)
    );
\TX_Data_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][4]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[4]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[4]_i_2_n_0\
    );
\TX_Data_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[4]_i_3_n_0\
    );
\TX_Data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(5),
      G => OE_aux0,
      GE => '1',
      Q => Q(5)
    );
\TX_Data_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[5]_i_2_n_0\,
      I1 => \TX_Data_reg[5]_i_3_n_0\,
      O => \^d\(5)
    );
\TX_Data_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][5]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[5]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[5]_i_2_n_0\
    );
\TX_Data_reg[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[5]_i_3_n_0\
    );
\TX_Data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(6),
      G => OE_aux0,
      GE => '1',
      Q => Q(6)
    );
\TX_Data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[6]_i_2_n_0\,
      I1 => \TX_Data_reg[6]_i_3_n_0\,
      O => \^d\(6)
    );
\TX_Data_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][6]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[6]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[6]_i_2_n_0\
    );
\TX_Data_reg[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[6]_i_3_n_0\
    );
\TX_Data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(7),
      G => OE_aux0,
      GE => '1',
      Q => Q(7)
    );
\TX_Data_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \TX_Data_reg[7]_i_3_n_0\,
      I1 => \TX_Data_reg[7]_i_4_n_0\,
      O => \^d\(7)
    );
\TX_Data_reg[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => OE_aux,
      I1 => OE_aux0,
      O => OE_RAM
    );
\TX_Data_reg[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DMA_ACK,
      I1 => s_DMA_current_state(3),
      O => m_DMA_ACK_reg_63
    );
\TX_Data_reg[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => s_DMA_current_state(0),
      I1 => s_DMA_current_state(2),
      I2 => ACK_FROM_RS,
      I3 => s_DMA_current_state(1),
      O => OE_aux
    );
\TX_Data_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F00D00"
    )
        port map (
      I0 => ACK_FROM_RS,
      I1 => s_DMA_current_state(0),
      I2 => s_DMA_current_state(2),
      I3 => s_DMA_current_state(3),
      I4 => s_DMA_current_state(1),
      O => OE_aux0
    );
\TX_Data_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \contents_ram_reg[49][7]\,
      I1 => OE_RAM,
      I2 => \Databus_OUT_from_DMA_aux_reg_n_0_[7]\,
      I3 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[7]_i_3_n_0\
    );
\TX_Data_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => OE_RAM,
      I1 => \contents_ram_reg[49][0]_0\,
      O => \TX_Data_reg[7]_i_4_n_0\
    );
U_DMA_RQ_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111198999888"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => s_DMA_current_state(2),
      I2 => DMA_ACK,
      I3 => s_DMA_current_state(0),
      I4 => Send_comm,
      I5 => s_DMA_current_state(3),
      O => m_DMA_RQ
    );
U_READY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => s_DMA_current_state(2),
      I1 => s_DMA_current_state(3),
      I2 => DMA_ACK,
      I3 => s_DMA_current_state(1),
      I4 => U_READY_i_2_n_0,
      O => m_READY
    );
U_READY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303470003034733"
    )
        port map (
      I0 => ACK_FROM_RS,
      I1 => s_DMA_current_state(3),
      I2 => DMA_ACK,
      I3 => s_DMA_current_state(0),
      I4 => s_DMA_current_state(2),
      I5 => Send_comm,
      O => U_READY_i_2_n_0
    );
\contador_aux_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \contador_aux_reg[0]_i_1_n_0\,
      G => \contador_aux__0\,
      GE => '1',
      Q => contador_aux(0)
    );
\contador_aux_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(0),
      I2 => s_DMA_current_state(2),
      O => \contador_aux_reg[0]_i_1_n_0\
    );
\contador_aux_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \contador_aux_reg[1]_i_1_n_0\,
      G => \contador_aux__0\,
      GE => '1',
      Q => contador_aux(1)
    );
\contador_aux_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => s_DMA_current_state(3),
      O => \contador_aux_reg[1]_i_1_n_0\
    );
\contador_aux_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \contador_aux_reg[2]_i_1_n_0\,
      G => \contador_aux__0\,
      GE => '1',
      Q => contador_aux(2)
    );
\contador_aux_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_DMA_current_state(0),
      I1 => s_DMA_current_state(2),
      I2 => s_DMA_current_state(3),
      O => \contador_aux_reg[2]_i_1_n_0\
    );
\contador_aux_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \contador_aux_reg[2]_i_3_n_0\,
      I1 => s_DMA_current_state(3),
      I2 => s_DMA_current_state(0),
      I3 => \contador_aux_reg[2]_i_4_n_0\,
      I4 => s_DMA_current_state(1),
      I5 => \contador_aux_reg[2]_i_5_n_0\,
      O => \contador_aux__0\
    );
\contador_aux_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000200010"
    )
        port map (
      I0 => s_DMA_current_state(1),
      I1 => s_DMA_current_state(2),
      I2 => DMA_ACK,
      I3 => contador(0),
      I4 => contador(1),
      I5 => contador(2),
      O => \contador_aux_reg[2]_i_3_n_0\
    );
\contador_aux_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => contador(0),
      I1 => contador(2),
      I2 => contador(1),
      I3 => DMA_ACK,
      I4 => s_DMA_current_state(2),
      I5 => s_DMA_current_state(3),
      O => \contador_aux_reg[2]_i_4_n_0\
    );
\contador_aux_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(2),
      I2 => DMA_ACK,
      I3 => contador(1),
      I4 => contador(2),
      I5 => contador(0),
      O => \contador_aux_reg[2]_i_5_n_0\
    );
\contador_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => contador_aux(0),
      Q => contador(0)
    );
\contador_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => contador_aux(1),
      Q => contador(1)
    );
\contador_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => contador_aux(2),
      Q => contador(2)
    );
\contents_ram[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(2),
      I2 => \^ram_addr\(0),
      I3 => \^ram_addr\(1),
      O => m_DMA_ACK_reg_62(0)
    );
\contents_ram[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(2),
      I2 => \^ram_addr\(0),
      I3 => \^ram_addr\(1),
      O => m_DMA_ACK_reg_61(0)
    );
\contents_ram[254][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Address_aux(0),
      I1 => \switches_OBUF[7]_inst_i_10_n_0\,
      O => \^ram_addr\(0)
    );
\contents_ram[254][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1171"
    )
        port map (
      I0 => s_DMA_current_state(2),
      I1 => s_DMA_current_state(1),
      I2 => s_DMA_current_state(0),
      I3 => s_DMA_current_state(3),
      O => Address_aux(0)
    );
\contents_ram[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(2),
      I2 => \^ram_addr\(1),
      I3 => \^ram_addr\(0),
      O => m_DMA_ACK_reg_60(0)
    );
\contents_ram[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(2),
      I2 => \^ram_addr\(0),
      I3 => \^ram_addr\(1),
      O => m_DMA_ACK_reg_59(0)
    );
\contents_ram[49][7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(1),
      I2 => s_DMA_current_state(2),
      O => Address_aux(2)
    );
\contents_ram[49][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DMA_ACK,
      I1 => Write_en_aux0,
      O => Write_en_RAM
    );
\contents_ram[49][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Address_aux(1),
      I1 => \switches_OBUF[7]_inst_i_10_n_0\,
      O => \^ram_addr\(1)
    );
\contents_ram[49][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Address_aux(2),
      I1 => \switches_OBUF[7]_inst_i_10_n_0\,
      O => \^ram_addr\(2)
    );
\contents_ram[49][7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(1),
      I2 => s_DMA_current_state(2),
      I3 => DMA_ACK,
      O => Write_en_aux0
    );
\contents_ram[49][7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_DMA_current_state(3),
      I1 => s_DMA_current_state(1),
      O => Address_aux(1)
    );
\contents_ram[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(0),
      I2 => \^ram_addr\(2),
      I3 => \^ram_addr\(1),
      O => m_DMA_ACK_reg_58(0)
    );
\contents_ram[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(1),
      I2 => \^ram_addr\(0),
      I3 => \^ram_addr\(2),
      O => m_DMA_ACK_reg_57(0)
    );
\contents_ram[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(0),
      I2 => \^ram_addr\(1),
      I3 => \^ram_addr\(2),
      O => m_DMA_ACK_reg_56(0)
    );
\contents_ram[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Write_en_RAM,
      I1 => \^ram_addr\(2),
      I2 => \^ram_addr\(0),
      I3 => \^ram_addr\(1),
      O => m_DMA_ACK_reg_55(0)
    );
\switches_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3322332222C022CC"
    )
        port map (
      I0 => DMA_ACK,
      I1 => s_DMA_current_state(3),
      I2 => s_DMA_current_state(0),
      I3 => s_DMA_current_state(1),
      I4 => ACK_FROM_RS,
      I5 => s_DMA_current_state(2),
      O => \switches_OBUF[7]_inst_i_10_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RX_RS232 is
  port (
    wr_en : out STD_LOGIC;
    Code_out : out STD_LOGIC;
    Valid_Out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC;
    LineRD_in : in STD_LOGIC
  );
end RX_RS232;

architecture STRUCTURE of RX_RS232 is
  signal \FSM_sequential_s_RX_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_RX_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal eqOp1_in : STD_LOGIC;
  signal eqOp2_in : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal s_RX_current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_RX_dataCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_RX_dataCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_RX_dataCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_RX_dataCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_RX_dataCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_RX_dataCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_RX_next_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_code_out_aux : STD_LOGIC;
  signal \s_code_out_aux__0\ : STD_LOGIC;
  signal s_code_out_aux_reg_i_2_n_0 : STD_LOGIC;
  signal s_pulse_width : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_pulse_width[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_pulse_width[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_pulse_width[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_pulse_width[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_pulse_width[7]_i_5_n_0\ : STD_LOGIC;
  signal s_store_out_aux : STD_LOGIC;
  signal \s_store_out_aux__0\ : STD_LOGIC;
  signal s_store_out_aux_reg_i_2_n_0 : STD_LOGIC;
  signal s_store_out_aux_reg_i_3_n_0 : STD_LOGIC;
  signal s_valid_out_aux : STD_LOGIC;
  signal \s_valid_out_aux1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_RX_current_state_reg[0]\ : label is "start_bit:01,rcvdata:10,stop_bit:11,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_RX_current_state_reg[1]\ : label is "start_bit:01,rcvdata:10,stop_bit:11,idle:00";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of s_code_out_aux_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_pulse_width[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_pulse_width[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_pulse_width[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_pulse_width[5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_pulse_width[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_pulse_width[7]_i_1__0\ : label is "soft_lutpair76";
  attribute XILINX_LEGACY_PRIM of s_store_out_aux_reg : label is "LD";
begin
Code_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => s_code_out_aux,
      Q => Code_out
    );
\FSM_sequential_s_RX_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AAA4AAAEA5FEA0A"
    )
        port map (
      I0 => s_RX_current_state(0),
      I1 => eqOp2_in,
      I2 => eqOp1_in,
      I3 => s_RX_current_state(1),
      I4 => Reset_IBUF,
      I5 => LineRD_in,
      O => \s_RX_next_state__0\(0)
    );
\FSM_sequential_s_RX_current_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \s_RX_dataCount_reg_n_0_[1]\,
      I1 => \s_RX_dataCount_reg_n_0_[2]\,
      I2 => \s_RX_dataCount_reg_n_0_[0]\,
      O => eqOp2_in
    );
\FSM_sequential_s_RX_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EAA"
    )
        port map (
      I0 => s_RX_current_state(1),
      I1 => s_RX_current_state(0),
      I2 => LineRD_in,
      I3 => eqOp1_in,
      O => \FSM_sequential_s_RX_current_state[1]_i_1_n_0\
    );
\FSM_sequential_s_RX_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => s_pulse_width(0),
      I1 => s_pulse_width(7),
      I2 => s_pulse_width(4),
      I3 => s_pulse_width(6),
      I4 => \FSM_sequential_s_RX_current_state[1]_i_3_n_0\,
      O => eqOp1_in
    );
\FSM_sequential_s_RX_current_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_pulse_width(2),
      I1 => s_pulse_width(1),
      I2 => s_pulse_width(5),
      I3 => s_pulse_width(3),
      O => \FSM_sequential_s_RX_current_state[1]_i_3_n_0\
    );
\FSM_sequential_s_RX_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_RX_next_state__0\(0),
      Q => s_RX_current_state(0)
    );
\FSM_sequential_s_RX_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_s_RX_current_state[1]_i_1_n_0\,
      Q => s_RX_current_state(1)
    );
Store_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => s_store_out_aux,
      Q => wr_en
    );
Valid_Out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15550000"
    )
        port map (
      I0 => s_RX_current_state(0),
      I1 => \s_RX_dataCount_reg_n_0_[0]\,
      I2 => \s_RX_dataCount_reg_n_0_[2]\,
      I3 => \s_RX_dataCount_reg_n_0_[1]\,
      I4 => s_RX_current_state(1),
      O => s_valid_out_aux
    );
Valid_Out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => s_valid_out_aux,
      Q => Valid_Out
    );
\s_RX_dataCount[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AAFF00D5AA"
    )
        port map (
      I0 => s_RX_current_state(1),
      I1 => \s_RX_dataCount_reg_n_0_[1]\,
      I2 => \s_RX_dataCount_reg_n_0_[2]\,
      I3 => \s_RX_dataCount_reg_n_0_[0]\,
      I4 => s_RX_current_state(0),
      I5 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_RX_dataCount[0]_i_1_n_0\
    );
\s_RX_dataCount[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002288CCCCE6CC"
    )
        port map (
      I0 => s_RX_current_state(1),
      I1 => \s_RX_dataCount_reg_n_0_[1]\,
      I2 => \s_RX_dataCount_reg_n_0_[2]\,
      I3 => \s_RX_dataCount_reg_n_0_[0]\,
      I4 => s_RX_current_state(0),
      I5 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_RX_dataCount[1]_i_1_n_0\
    );
\s_RX_dataCount[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000028A0F0F0F8F0"
    )
        port map (
      I0 => s_RX_current_state(1),
      I1 => \s_RX_dataCount_reg_n_0_[1]\,
      I2 => \s_RX_dataCount_reg_n_0_[2]\,
      I3 => \s_RX_dataCount_reg_n_0_[0]\,
      I4 => s_RX_current_state(0),
      I5 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_RX_dataCount[2]_i_1_n_0\
    );
\s_RX_dataCount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_RX_dataCount[0]_i_1_n_0\,
      Q => \s_RX_dataCount_reg_n_0_[0]\
    );
\s_RX_dataCount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_RX_dataCount[1]_i_1_n_0\,
      Q => \s_RX_dataCount_reg_n_0_[1]\
    );
\s_RX_dataCount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_RX_dataCount[2]_i_1_n_0\,
      Q => \s_RX_dataCount_reg_n_0_[2]\
    );
s_code_out_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_code_out_aux__0\,
      G => s_code_out_aux_reg_i_2_n_0,
      GE => '1',
      Q => s_code_out_aux
    );
s_code_out_aux_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_RX_current_state(0),
      I1 => \s_valid_out_aux1__2\,
      I2 => LineRD_in,
      I3 => s_RX_current_state(1),
      O => \s_code_out_aux__0\
    );
s_code_out_aux_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFDFDFDFDFDFD"
    )
        port map (
      I0 => s_RX_current_state(1),
      I1 => s_RX_current_state(0),
      I2 => eqOp1_in,
      I3 => \s_RX_dataCount_reg_n_0_[0]\,
      I4 => \s_RX_dataCount_reg_n_0_[2]\,
      I5 => \s_RX_dataCount_reg_n_0_[1]\,
      O => s_code_out_aux_reg_i_2_n_0
    );
s_code_out_aux_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => eqOp1_in,
      I1 => \s_RX_dataCount_reg_n_0_[0]\,
      I2 => \s_RX_dataCount_reg_n_0_[1]\,
      I3 => \s_RX_dataCount_reg_n_0_[2]\,
      O => \s_valid_out_aux1__2\
    );
\s_pulse_width[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => geqOp,
      I1 => s_pulse_width(0),
      I2 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[0]_i_1_n_0\
    );
\s_pulse_width[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => geqOp,
      I1 => s_pulse_width(0),
      I2 => s_pulse_width(1),
      I3 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[1]_i_1_n_0\
    );
\s_pulse_width[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001540"
    )
        port map (
      I0 => geqOp,
      I1 => s_pulse_width(0),
      I2 => s_pulse_width(1),
      I3 => s_pulse_width(2),
      I4 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[2]_i_1_n_0\
    );
\s_pulse_width[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => geqOp,
      I1 => s_pulse_width(1),
      I2 => s_pulse_width(0),
      I3 => s_pulse_width(2),
      I4 => s_pulse_width(3),
      I5 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[3]_i_1_n_0\
    );
\s_pulse_width[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051550400"
    )
        port map (
      I0 => geqOp,
      I1 => s_pulse_width(2),
      I2 => \s_pulse_width[4]_i_2_n_0\,
      I3 => s_pulse_width(3),
      I4 => s_pulse_width(4),
      I5 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[4]_i_1_n_0\
    );
\s_pulse_width[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_pulse_width(1),
      I1 => s_pulse_width(0),
      O => \s_pulse_width[4]_i_2_n_0\
    );
\s_pulse_width[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => geqOp,
      I1 => \s_pulse_width[5]_i_2_n_0\,
      I2 => s_pulse_width(5),
      I3 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[5]_i_1_n_0\
    );
\s_pulse_width[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_pulse_width(4),
      I1 => s_pulse_width(2),
      I2 => s_pulse_width(0),
      I3 => s_pulse_width(1),
      I4 => s_pulse_width(3),
      O => \s_pulse_width[5]_i_2_n_0\
    );
\s_pulse_width[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => geqOp,
      I1 => \s_pulse_width[7]_i_3_n_0\,
      I2 => s_pulse_width(6),
      I3 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[6]_i_1_n_0\
    );
\s_pulse_width[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001540"
    )
        port map (
      I0 => geqOp,
      I1 => \s_pulse_width[7]_i_3_n_0\,
      I2 => s_pulse_width(6),
      I3 => s_pulse_width(7),
      I4 => \s_pulse_width[7]_i_4_n_0\,
      O => \s_pulse_width[7]_i_1__0_n_0\
    );
\s_pulse_width[7]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_pulse_width(7),
      I1 => \s_pulse_width[7]_i_5_n_0\,
      O => geqOp
    );
\s_pulse_width[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_pulse_width(5),
      I1 => s_pulse_width(3),
      I2 => s_pulse_width(1),
      I3 => s_pulse_width(0),
      I4 => s_pulse_width(2),
      I5 => s_pulse_width(4),
      O => \s_pulse_width[7]_i_3_n_0\
    );
\s_pulse_width[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C00000F5"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => eqOp1_in,
      I2 => LineRD_in,
      I3 => s_RX_current_state(0),
      I4 => s_RX_current_state(1),
      O => \s_pulse_width[7]_i_4_n_0\
    );
\s_pulse_width[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => s_pulse_width(6),
      I1 => s_pulse_width(4),
      I2 => s_pulse_width(2),
      I3 => s_pulse_width(3),
      I4 => s_pulse_width(1),
      I5 => s_pulse_width(5),
      O => \s_pulse_width[7]_i_5_n_0\
    );
\s_pulse_width_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[0]_i_1_n_0\,
      Q => s_pulse_width(0)
    );
\s_pulse_width_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[1]_i_1_n_0\,
      Q => s_pulse_width(1)
    );
\s_pulse_width_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[2]_i_1_n_0\,
      Q => s_pulse_width(2)
    );
\s_pulse_width_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[3]_i_1_n_0\,
      Q => s_pulse_width(3)
    );
\s_pulse_width_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[4]_i_1_n_0\,
      Q => s_pulse_width(4)
    );
\s_pulse_width_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[5]_i_1_n_0\,
      Q => s_pulse_width(5)
    );
\s_pulse_width_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[6]_i_1_n_0\,
      Q => s_pulse_width(6)
    );
\s_pulse_width_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[7]_i_1__0_n_0\,
      Q => s_pulse_width(7)
    );
s_store_out_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_store_out_aux__0\,
      G => s_code_out_aux_reg_i_2_n_0,
      GE => '1',
      Q => s_store_out_aux
    );
s_store_out_aux_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => s_RX_current_state(1),
      I1 => s_RX_current_state(0),
      I2 => s_store_out_aux_reg_i_2_n_0,
      I3 => s_store_out_aux_reg_i_3_n_0,
      I4 => LineRD_in,
      O => \s_store_out_aux__0\
    );
s_store_out_aux_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_pulse_width(2),
      I1 => s_pulse_width(4),
      I2 => s_pulse_width(0),
      I3 => s_pulse_width(1),
      O => s_store_out_aux_reg_i_2_n_0
    );
s_store_out_aux_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_pulse_width(7),
      I1 => s_pulse_width(3),
      I2 => s_pulse_width(6),
      I3 => s_pulse_width(5),
      O => s_store_out_aux_reg_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ShiftRegister is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Valid_Out : in STD_LOGIC;
    Code_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end ShiftRegister;

architecture STRUCTURE of ShiftRegister is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \register_aux[0]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[1]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[2]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[3]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[4]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[5]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[6]_i_1_n_0\ : STD_LOGIC;
  signal \register_aux[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \register_aux[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \register_aux[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \register_aux[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \register_aux[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \register_aux[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \register_aux[5]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \register_aux[6]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \register_aux[7]_i_1\ : label is "soft_lutpair85";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\register_aux[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(1),
      O => \register_aux[0]_i_1_n_0\
    );
\register_aux[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(2),
      O => \register_aux[1]_i_1_n_0\
    );
\register_aux[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(3),
      O => \register_aux[2]_i_1_n_0\
    );
\register_aux[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(4),
      O => \register_aux[3]_i_1_n_0\
    );
\register_aux[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(5),
      O => \register_aux[4]_i_1_n_0\
    );
\register_aux[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(6),
      O => \register_aux[5]_i_1_n_0\
    );
\register_aux[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => \^q\(7),
      O => \register_aux[6]_i_1_n_0\
    );
\register_aux[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Valid_Out,
      I1 => Code_out,
      O => \register_aux[7]_i_1_n_0\
    );
\register_aux_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\register_aux_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\register_aux_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\register_aux_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\register_aux_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\register_aux_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\register_aux_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[6]_i_1_n_0\,
      Q => \^q\(6)
    );
\register_aux_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \register_aux[7]_i_1_n_0\,
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_RS232 is
  port (
    TX_RDY_FROM_RS : out STD_LOGIC;
    RS232_TX_OBUF : out STD_LOGIC;
    Start : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_out1 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end TX_RS232;

architecture STRUCTURE of TX_RS232 is
  signal \FSM_sequential_s_TX_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_TX_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_TX_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_TX_current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_TX_current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_TX_current_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_TX_current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal RS232_TX_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal RS232_TX_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal \eqOp__6\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal s_TX_current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_TX_dataCount : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_TX_dataCount0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal s_TX_dataCount1 : STD_LOGIC;
  signal \s_TX_dataCount1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount[9]_i_1_n_0\ : STD_LOGIC;
  signal s_TX_dataCount_0 : STD_LOGIC;
  signal \s_TX_dataCount_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_dataCount_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_TX_next_state2__25\ : STD_LOGIC;
  signal \s_TX_next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_pulse_width[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_pulse_width[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_pulse_width[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_width[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_pulse_width_reg_n_0_[7]\ : STD_LOGIC;
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_TX_dataCount_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_TX_dataCount_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_TX_dataCount_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_TX_dataCount_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_TX_current_state_reg[0]\ : label is "start_bit:01,send_data:10,stop_bit:11,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_TX_current_state_reg[1]\ : label is "start_bit:01,send_data:10,stop_bit:11,idle:00";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \s_TX_dataCount1_inferred__0/i__carry\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount1_inferred__0/i__carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount1_inferred__0/i__carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount1_inferred__0/i__carry__2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[12]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[16]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[20]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[24]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[28]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[31]_i_3\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[4]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_TX_dataCount_reg[8]_i_2\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_pulse_width[0]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_pulse_width[1]_i_1__0\ : label is "soft_lutpair88";
begin
\Data_FF[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      O => TX_RDY_FROM_RS
    );
\FSM_sequential_s_TX_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A5F4A0A4A0A4A0A"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => \s_TX_next_state2__25\,
      I2 => \eqOp__6\,
      I3 => s_TX_current_state(1),
      I4 => Start,
      I5 => Reset_IBUF,
      O => \s_TX_next_state__0\(0)
    );
\FSM_sequential_s_TX_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_sequential_s_TX_current_state[0]_i_3_n_0\,
      I1 => \FSM_sequential_s_TX_current_state[0]_i_4_n_0\,
      I2 => \FSM_sequential_s_TX_current_state[0]_i_5_n_0\,
      I3 => \FSM_sequential_s_TX_current_state[0]_i_6_n_0\,
      I4 => \FSM_sequential_s_TX_current_state[0]_i_7_n_0\,
      I5 => \FSM_sequential_s_TX_current_state[0]_i_8_n_0\,
      O => \s_TX_next_state2__25\
    );
\FSM_sequential_s_TX_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_TX_dataCount(24),
      I1 => s_TX_dataCount(25),
      I2 => s_TX_dataCount(26),
      I3 => s_TX_dataCount(27),
      I4 => s_TX_dataCount(28),
      I5 => s_TX_dataCount(29),
      O => \FSM_sequential_s_TX_current_state[0]_i_3_n_0\
    );
\FSM_sequential_s_TX_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_TX_dataCount(6),
      I1 => s_TX_dataCount(7),
      I2 => s_TX_dataCount(8),
      I3 => s_TX_dataCount(9),
      I4 => s_TX_dataCount(10),
      I5 => s_TX_dataCount(11),
      O => \FSM_sequential_s_TX_current_state[0]_i_4_n_0\
    );
\FSM_sequential_s_TX_current_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_TX_dataCount(18),
      I1 => s_TX_dataCount(19),
      I2 => s_TX_dataCount(20),
      I3 => s_TX_dataCount(21),
      I4 => s_TX_dataCount(22),
      I5 => s_TX_dataCount(23),
      O => \FSM_sequential_s_TX_current_state[0]_i_5_n_0\
    );
\FSM_sequential_s_TX_current_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_TX_dataCount(12),
      I1 => s_TX_dataCount(13),
      I2 => s_TX_dataCount(14),
      I3 => s_TX_dataCount(15),
      I4 => s_TX_dataCount(16),
      I5 => s_TX_dataCount(17),
      O => \FSM_sequential_s_TX_current_state[0]_i_6_n_0\
    );
\FSM_sequential_s_TX_current_state[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(30),
      I1 => s_TX_dataCount(31),
      O => \FSM_sequential_s_TX_current_state[0]_i_7_n_0\
    );
\FSM_sequential_s_TX_current_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => s_TX_dataCount(1),
      I1 => s_TX_dataCount(2),
      I2 => s_TX_dataCount(0),
      I3 => s_TX_dataCount(3),
      I4 => s_TX_dataCount(4),
      I5 => s_TX_dataCount(5),
      O => \FSM_sequential_s_TX_current_state[0]_i_8_n_0\
    );
\FSM_sequential_s_TX_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s_TX_current_state(1),
      I1 => \eqOp__6\,
      I2 => s_TX_current_state(0),
      O => \s_TX_next_state__0\(1)
    );
\FSM_sequential_s_TX_current_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[0]\,
      I1 => \s_pulse_width_reg_n_0_[7]\,
      I2 => \s_pulse_width_reg_n_0_[4]\,
      I3 => \s_pulse_width_reg_n_0_[6]\,
      I4 => \FSM_sequential_s_TX_current_state[1]_i_4_n_0\,
      O => \eqOp__6\
    );
\FSM_sequential_s_TX_current_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[2]\,
      I1 => \s_pulse_width_reg_n_0_[1]\,
      I2 => \s_pulse_width_reg_n_0_[5]\,
      I3 => \s_pulse_width_reg_n_0_[3]\,
      O => \FSM_sequential_s_TX_current_state[1]_i_4_n_0\
    );
\FSM_sequential_s_TX_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_TX_next_state__0\(0),
      Q => s_TX_current_state(0)
    );
\FSM_sequential_s_TX_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_TX_next_state__0\(1),
      Q => s_TX_current_state(1)
    );
RS232_TX_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8FF"
    )
        port map (
      I0 => RS232_TX_OBUF_inst_i_2_n_0,
      I1 => s_TX_dataCount(2),
      I2 => RS232_TX_OBUF_inst_i_3_n_0,
      I3 => s_TX_current_state(1),
      I4 => s_TX_current_state(0),
      O => RS232_TX_OBUF
    );
RS232_TX_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => s_TX_dataCount(1),
      I3 => Q(5),
      I4 => s_TX_dataCount(0),
      I5 => Q(4),
      O => RS232_TX_OBUF_inst_i_2_n_0
    );
RS232_TX_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => s_TX_dataCount(1),
      I3 => Q(1),
      I4 => s_TX_dataCount(0),
      I5 => Q(0),
      O => RS232_TX_OBUF_inst_i_3_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(14),
      I1 => s_TX_dataCount(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(12),
      I1 => s_TX_dataCount(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(10),
      I1 => s_TX_dataCount(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(8),
      I1 => s_TX_dataCount(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(14),
      I1 => s_TX_dataCount(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(12),
      I1 => s_TX_dataCount(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(10),
      I1 => s_TX_dataCount(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(8),
      I1 => s_TX_dataCount(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(22),
      I1 => s_TX_dataCount(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(20),
      I1 => s_TX_dataCount(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(18),
      I1 => s_TX_dataCount(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(16),
      I1 => s_TX_dataCount(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(22),
      I1 => s_TX_dataCount(23),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(20),
      I1 => s_TX_dataCount(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(18),
      I1 => s_TX_dataCount(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(16),
      I1 => s_TX_dataCount(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_TX_dataCount(30),
      I1 => s_TX_dataCount(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(28),
      I1 => s_TX_dataCount(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(26),
      I1 => s_TX_dataCount(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(24),
      I1 => s_TX_dataCount(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(31),
      I1 => s_TX_dataCount(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(28),
      I1 => s_TX_dataCount(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(26),
      I1 => s_TX_dataCount(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(24),
      I1 => s_TX_dataCount(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(6),
      I1 => s_TX_dataCount(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(4),
      I1 => s_TX_dataCount(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(2),
      I1 => s_TX_dataCount(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_TX_dataCount(0),
      I1 => s_TX_dataCount(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(6),
      I1 => s_TX_dataCount(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(4),
      I1 => s_TX_dataCount(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(2),
      I1 => s_TX_dataCount(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_TX_dataCount(0),
      I1 => s_TX_dataCount(1),
      O => \i__carry_i_8_n_0\
    );
\s_TX_dataCount1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_TX_dataCount1_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\s_TX_dataCount1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount1_inferred__0/i__carry_n_0\,
      CO(3) => \s_TX_dataCount1_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\s_TX_dataCount1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount1_inferred__0/i__carry__0_n_0\,
      CO(3) => \s_TX_dataCount1_inferred__0/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\s_TX_dataCount1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount1_inferred__0/i__carry__1_n_0\,
      CO(3) => s_TX_dataCount1,
      CO(2 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_s_TX_dataCount1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\s_TX_dataCount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount(0),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[0]_i_1_n_0\
    );
\s_TX_dataCount[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(10),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[10]_i_1_n_0\
    );
\s_TX_dataCount[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(11),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[11]_i_1_n_0\
    );
\s_TX_dataCount[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(12),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[12]_i_1_n_0\
    );
\s_TX_dataCount[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(13),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[13]_i_1_n_0\
    );
\s_TX_dataCount[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(14),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[14]_i_1_n_0\
    );
\s_TX_dataCount[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(15),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[15]_i_1_n_0\
    );
\s_TX_dataCount[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(16),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[16]_i_1_n_0\
    );
\s_TX_dataCount[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(17),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[17]_i_1_n_0\
    );
\s_TX_dataCount[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(18),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[18]_i_1_n_0\
    );
\s_TX_dataCount[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(19),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[19]_i_1_n_0\
    );
\s_TX_dataCount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(1),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[1]_i_1_n_0\
    );
\s_TX_dataCount[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(20),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[20]_i_1_n_0\
    );
\s_TX_dataCount[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(21),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[21]_i_1_n_0\
    );
\s_TX_dataCount[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(22),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[22]_i_1_n_0\
    );
\s_TX_dataCount[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(23),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[23]_i_1_n_0\
    );
\s_TX_dataCount[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(24),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[24]_i_1_n_0\
    );
\s_TX_dataCount[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(25),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[25]_i_1_n_0\
    );
\s_TX_dataCount[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(26),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[26]_i_1_n_0\
    );
\s_TX_dataCount[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(27),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[27]_i_1_n_0\
    );
\s_TX_dataCount[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(28),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[28]_i_1_n_0\
    );
\s_TX_dataCount[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(29),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[29]_i_1_n_0\
    );
\s_TX_dataCount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(2),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[2]_i_1_n_0\
    );
\s_TX_dataCount[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(30),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[30]_i_1_n_0\
    );
\s_TX_dataCount[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"089D"
    )
        port map (
      I0 => s_TX_current_state(1),
      I1 => \eqOp__6\,
      I2 => s_TX_current_state(0),
      I3 => \s_TX_next_state__0\(0),
      O => s_TX_dataCount_0
    );
\s_TX_dataCount[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(31),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[31]_i_2_n_0\
    );
\s_TX_dataCount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(3),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[3]_i_1_n_0\
    );
\s_TX_dataCount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(4),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[4]_i_1_n_0\
    );
\s_TX_dataCount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(5),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[5]_i_1_n_0\
    );
\s_TX_dataCount[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(6),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[6]_i_1_n_0\
    );
\s_TX_dataCount[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(7),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[7]_i_1_n_0\
    );
\s_TX_dataCount[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(8),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[8]_i_1_n_0\
    );
\s_TX_dataCount[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_TX_current_state(0),
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => s_TX_dataCount0(9),
      I4 => s_TX_dataCount1,
      O => \s_TX_dataCount[9]_i_1_n_0\
    );
\s_TX_dataCount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[0]_i_1_n_0\,
      Q => s_TX_dataCount(0)
    );
\s_TX_dataCount_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[10]_i_1_n_0\,
      Q => s_TX_dataCount(10)
    );
\s_TX_dataCount_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[11]_i_1_n_0\,
      Q => s_TX_dataCount(11)
    );
\s_TX_dataCount_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[12]_i_1_n_0\,
      Q => s_TX_dataCount(12)
    );
\s_TX_dataCount_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[8]_i_2_n_0\,
      CO(3) => \s_TX_dataCount_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(12 downto 9),
      S(3 downto 0) => s_TX_dataCount(12 downto 9)
    );
\s_TX_dataCount_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[13]_i_1_n_0\,
      Q => s_TX_dataCount(13)
    );
\s_TX_dataCount_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[14]_i_1_n_0\,
      Q => s_TX_dataCount(14)
    );
\s_TX_dataCount_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[15]_i_1_n_0\,
      Q => s_TX_dataCount(15)
    );
\s_TX_dataCount_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[16]_i_1_n_0\,
      Q => s_TX_dataCount(16)
    );
\s_TX_dataCount_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[12]_i_2_n_0\,
      CO(3) => \s_TX_dataCount_reg[16]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(16 downto 13),
      S(3 downto 0) => s_TX_dataCount(16 downto 13)
    );
\s_TX_dataCount_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[17]_i_1_n_0\,
      Q => s_TX_dataCount(17)
    );
\s_TX_dataCount_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[18]_i_1_n_0\,
      Q => s_TX_dataCount(18)
    );
\s_TX_dataCount_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[19]_i_1_n_0\,
      Q => s_TX_dataCount(19)
    );
\s_TX_dataCount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[1]_i_1_n_0\,
      Q => s_TX_dataCount(1)
    );
\s_TX_dataCount_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[20]_i_1_n_0\,
      Q => s_TX_dataCount(20)
    );
\s_TX_dataCount_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[16]_i_2_n_0\,
      CO(3) => \s_TX_dataCount_reg[20]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(20 downto 17),
      S(3 downto 0) => s_TX_dataCount(20 downto 17)
    );
\s_TX_dataCount_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[21]_i_1_n_0\,
      Q => s_TX_dataCount(21)
    );
\s_TX_dataCount_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[22]_i_1_n_0\,
      Q => s_TX_dataCount(22)
    );
\s_TX_dataCount_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[23]_i_1_n_0\,
      Q => s_TX_dataCount(23)
    );
\s_TX_dataCount_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[24]_i_1_n_0\,
      Q => s_TX_dataCount(24)
    );
\s_TX_dataCount_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[20]_i_2_n_0\,
      CO(3) => \s_TX_dataCount_reg[24]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(24 downto 21),
      S(3 downto 0) => s_TX_dataCount(24 downto 21)
    );
\s_TX_dataCount_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[25]_i_1_n_0\,
      Q => s_TX_dataCount(25)
    );
\s_TX_dataCount_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[26]_i_1_n_0\,
      Q => s_TX_dataCount(26)
    );
\s_TX_dataCount_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[27]_i_1_n_0\,
      Q => s_TX_dataCount(27)
    );
\s_TX_dataCount_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[28]_i_1_n_0\,
      Q => s_TX_dataCount(28)
    );
\s_TX_dataCount_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[24]_i_2_n_0\,
      CO(3) => \s_TX_dataCount_reg[28]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(28 downto 25),
      S(3 downto 0) => s_TX_dataCount(28 downto 25)
    );
\s_TX_dataCount_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[29]_i_1_n_0\,
      Q => s_TX_dataCount(29)
    );
\s_TX_dataCount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[2]_i_1_n_0\,
      Q => s_TX_dataCount(2)
    );
\s_TX_dataCount_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[30]_i_1_n_0\,
      Q => s_TX_dataCount(30)
    );
\s_TX_dataCount_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[31]_i_2_n_0\,
      Q => s_TX_dataCount(31)
    );
\s_TX_dataCount_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[28]_i_2_n_0\,
      CO(3 downto 0) => \NLW_s_TX_dataCount_reg[31]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_TX_dataCount_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => s_TX_dataCount0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => s_TX_dataCount(31 downto 29)
    );
\s_TX_dataCount_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[3]_i_1_n_0\,
      Q => s_TX_dataCount(3)
    );
\s_TX_dataCount_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[4]_i_1_n_0\,
      Q => s_TX_dataCount(4)
    );
\s_TX_dataCount_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_TX_dataCount_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => s_TX_dataCount(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(4 downto 1),
      S(3 downto 0) => s_TX_dataCount(4 downto 1)
    );
\s_TX_dataCount_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[5]_i_1_n_0\,
      Q => s_TX_dataCount(5)
    );
\s_TX_dataCount_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[6]_i_1_n_0\,
      Q => s_TX_dataCount(6)
    );
\s_TX_dataCount_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[7]_i_1_n_0\,
      Q => s_TX_dataCount(7)
    );
\s_TX_dataCount_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[8]_i_1_n_0\,
      Q => s_TX_dataCount(8)
    );
\s_TX_dataCount_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_TX_dataCount_reg[4]_i_2_n_0\,
      CO(3) => \s_TX_dataCount_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_s_TX_dataCount_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_TX_dataCount0(8 downto 5),
      S(3 downto 0) => s_TX_dataCount(8 downto 5)
    );
\s_TX_dataCount_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => s_TX_dataCount_0,
      CLR => reset,
      D => \s_TX_dataCount[9]_i_1_n_0\,
      Q => s_TX_dataCount(9)
    );
\s_pulse_width[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0504"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[0]\,
      I1 => s_TX_current_state(1),
      I2 => \eqOp__6\,
      I3 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[0]_i_1__0_n_0\
    );
\s_pulse_width[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00660060"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[0]\,
      I1 => \s_pulse_width_reg_n_0_[1]\,
      I2 => s_TX_current_state(1),
      I3 => \eqOp__6\,
      I4 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[1]_i_1__0_n_0\
    );
\s_pulse_width[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000787800007800"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[1]\,
      I1 => \s_pulse_width_reg_n_0_[0]\,
      I2 => \s_pulse_width_reg_n_0_[2]\,
      I3 => s_TX_current_state(1),
      I4 => \eqOp__6\,
      I5 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[2]_i_1__0_n_0\
    );
\s_pulse_width[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00660060"
    )
        port map (
      I0 => \s_pulse_width[3]_i_2_n_0\,
      I1 => \s_pulse_width_reg_n_0_[3]\,
      I2 => s_TX_current_state(1),
      I3 => \eqOp__6\,
      I4 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[3]_i_1__0_n_0\
    );
\s_pulse_width[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[2]\,
      I1 => \s_pulse_width_reg_n_0_[0]\,
      I2 => \s_pulse_width_reg_n_0_[1]\,
      O => \s_pulse_width[3]_i_2_n_0\
    );
\s_pulse_width[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00660060"
    )
        port map (
      I0 => \s_pulse_width[4]_i_2__0_n_0\,
      I1 => \s_pulse_width_reg_n_0_[4]\,
      I2 => s_TX_current_state(1),
      I3 => \eqOp__6\,
      I4 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[4]_i_1__0_n_0\
    );
\s_pulse_width[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[3]\,
      I1 => \s_pulse_width_reg_n_0_[1]\,
      I2 => \s_pulse_width_reg_n_0_[0]\,
      I3 => \s_pulse_width_reg_n_0_[2]\,
      O => \s_pulse_width[4]_i_2__0_n_0\
    );
\s_pulse_width[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00660060"
    )
        port map (
      I0 => \s_pulse_width[5]_i_2__0_n_0\,
      I1 => \s_pulse_width_reg_n_0_[5]\,
      I2 => s_TX_current_state(1),
      I3 => \eqOp__6\,
      I4 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[5]_i_1__0_n_0\
    );
\s_pulse_width[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[4]\,
      I1 => \s_pulse_width_reg_n_0_[2]\,
      I2 => \s_pulse_width_reg_n_0_[0]\,
      I3 => \s_pulse_width_reg_n_0_[1]\,
      I4 => \s_pulse_width_reg_n_0_[3]\,
      O => \s_pulse_width[5]_i_2__0_n_0\
    );
\s_pulse_width[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00660060"
    )
        port map (
      I0 => \s_pulse_width[7]_i_2_n_0\,
      I1 => \s_pulse_width_reg_n_0_[6]\,
      I2 => s_TX_current_state(1),
      I3 => \eqOp__6\,
      I4 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[6]_i_1__0_n_0\
    );
\s_pulse_width[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540154015400000"
    )
        port map (
      I0 => \eqOp__6\,
      I1 => \s_pulse_width[7]_i_2_n_0\,
      I2 => \s_pulse_width_reg_n_0_[6]\,
      I3 => \s_pulse_width_reg_n_0_[7]\,
      I4 => \s_TX_next_state__0\(1),
      I5 => \s_TX_next_state__0\(0),
      O => \s_pulse_width[7]_i_1_n_0\
    );
\s_pulse_width[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \s_pulse_width_reg_n_0_[5]\,
      I1 => \s_pulse_width_reg_n_0_[3]\,
      I2 => \s_pulse_width_reg_n_0_[1]\,
      I3 => \s_pulse_width_reg_n_0_[0]\,
      I4 => \s_pulse_width_reg_n_0_[2]\,
      I5 => \s_pulse_width_reg_n_0_[4]\,
      O => \s_pulse_width[7]_i_2_n_0\
    );
\s_pulse_width_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[0]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[0]\
    );
\s_pulse_width_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[1]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[1]\
    );
\s_pulse_width_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[2]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[2]\
    );
\s_pulse_width_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[3]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[3]\
    );
\s_pulse_width_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[4]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[4]\
    );
\s_pulse_width_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[5]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[5]\
    );
\s_pulse_width_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[6]_i_1__0_n_0\,
      Q => \s_pulse_width_reg_n_0_[6]\
    );
\s_pulse_width_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_pulse_width[7]_i_1_n_0\,
      Q => \s_pulse_width_reg_n_0_[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram is
  port (
    \switches_OBUF[7]_inst_i_5_0\ : out STD_LOGIC;
    \switches_OBUF[7]_inst_i_12_0\ : out STD_LOGIC;
    \switches_OBUF[7]_inst_i_9_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \TX_Data_reg[1]_i_6_0\ : out STD_LOGIC;
    \TX_Data_reg[2]_i_6_0\ : out STD_LOGIC;
    \TX_Data_reg[3]_i_6_0\ : out STD_LOGIC;
    \TX_Data_reg[4]_i_6_0\ : out STD_LOGIC;
    \TX_Data_reg[5]_i_6_0\ : out STD_LOGIC;
    \TX_Data_reg[6]_i_6_0\ : out STD_LOGIC;
    \TX_Data_reg[7]_i_9_0\ : out STD_LOGIC;
    reset : out STD_LOGIC;
    \contents_ram_reg[49][3]_0\ : out STD_LOGIC;
    \contents_ram_reg[49][3]_1\ : out STD_LOGIC;
    \contents_ram_reg[49][3]_2\ : out STD_LOGIC;
    \contents_ram_reg[49][3]_3\ : out STD_LOGIC;
    \contents_ram_reg[49][3]_4\ : out STD_LOGIC;
    \contents_ram_reg[49][3]_5\ : out STD_LOGIC;
    RAM_ADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Reset_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[49][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_out1 : in STD_LOGIC;
    \contents_ram_reg[255][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[254][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[253][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[252][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[251][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[250][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[249][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[248][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[247][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[246][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[245][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[244][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[243][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[242][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[241][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[240][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[239][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[238][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[237][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[236][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[235][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[234][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[233][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[232][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[231][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[230][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[229][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[228][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[227][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[226][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[225][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[224][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[223][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[222][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[221][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[220][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[219][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[218][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[217][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[216][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[215][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[214][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[213][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[212][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[211][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[210][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[209][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[208][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[207][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[206][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[205][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[204][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[203][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[202][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[201][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[200][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[199][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[198][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[197][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[196][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[195][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[194][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[193][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[192][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[191][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[190][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[189][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[188][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[187][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[186][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[185][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[184][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[183][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[182][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[181][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[180][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[179][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[178][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[177][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[176][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[175][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[174][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[173][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[172][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[171][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[170][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[169][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[168][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[167][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[166][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[165][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[164][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[163][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[162][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[161][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[160][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[159][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[158][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[157][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[156][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[155][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[154][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[153][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[152][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[151][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[150][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[149][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[148][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[147][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[146][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[145][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[144][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[143][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[142][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[141][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[140][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[139][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[138][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[137][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[136][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[135][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[134][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[133][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[132][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[131][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[130][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[129][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[128][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[127][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[126][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[125][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[124][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[123][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[122][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[121][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[120][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[119][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[118][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[117][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[116][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[115][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[114][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[113][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[112][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[111][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[110][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[109][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[108][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[107][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[106][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[105][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[104][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[103][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[102][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[101][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[100][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[99][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[98][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[97][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[96][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[95][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[94][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[93][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[92][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[91][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[90][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[89][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[88][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[87][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[86][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[85][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[84][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[83][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[82][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[81][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[80][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[79][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[78][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[77][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[76][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[75][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[74][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[73][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[72][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[71][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[70][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[69][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[68][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[67][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[66][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[65][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[64][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[63][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[62][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[61][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[60][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[59][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[58][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[57][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[56][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[55][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[54][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[53][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[52][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[51][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[50][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[48][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[47][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[46][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[45][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[44][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[43][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[42][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[41][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[40][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[39][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[38][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[37][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[36][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[35][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[34][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[33][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[32][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[31][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[30][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[29][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[28][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[27][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[26][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[25][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[24][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[23][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[22][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[21][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[20][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[19][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[18][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[17][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[16][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[15][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[14][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[13][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[12][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[11][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[10][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[9][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[8][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[7][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[6][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[5][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[4][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[3][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[2][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[1][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \contents_ram_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ram;

architecture STRUCTURE of ram is
  signal ONE : STD_LOGIC;
  signal \TX_Data_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[1]_i_33_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[1]_i_71_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[1]_i_72_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_33_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_71_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[2]_i_72_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_33_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_71_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[3]_i_72_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_33_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_71_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[4]_i_72_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_14_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_33_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_71_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[5]_i_72_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_14_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_33_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_71_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[6]_i_72_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_39_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_77_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_78_n_0\ : STD_LOGIC;
  signal \TX_Data_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[49][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[49][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \contents_ram_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \^reset\ : STD_LOGIC;
  signal \switches_OBUF[7]_inst_i_105_n_0\ : STD_LOGIC;
  signal \switches_OBUF[7]_inst_i_106_n_0\ : STD_LOGIC;
  signal \^switches_obuf[7]_inst_i_12_0\ : STD_LOGIC;
  signal \switches_OBUF[7]_inst_i_24_n_0\ : STD_LOGIC;
  signal \switches_OBUF[7]_inst_i_51_n_0\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \TX_Data_reg[0]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[1]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[1]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[1]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[2]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[2]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[2]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[3]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[3]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[3]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[4]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[4]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[4]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[5]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[5]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[5]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[6]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[6]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[6]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[7]_i_20\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[7]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \TX_Data_reg[7]_i_8\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \Temp[2]_i_1\ : label is "PROPCONST";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Temp[2]_i_1\ : label is "soft_lutpair73";
  attribute OPT_MODIFIED of \Temp[5]_i_1\ : label is "PROPCONST";
  attribute SOFT_HLUTNM of \Temp[5]_i_1\ : label is "soft_lutpair72";
  attribute OPT_MODIFIED of \Temp[6]_i_1\ : label is "PROPCONST";
  attribute SOFT_HLUTNM of \Temp[6]_i_1\ : label is "soft_lutpair71";
  attribute OPT_MODIFIED of VCC : label is "PROPCONST";
  attribute OPT_MODIFIED of \switches_OBUF[7]_inst_i_24\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \switches_OBUF[7]_inst_i_7\ : label is "PROPCONST";
begin
  D(0) <= ONE;
  reset <= \^reset\;
  \contents_ram_reg[49][3]_2\ <= 'Z';
  \contents_ram_reg[49][3]_4\ <= 'Z';
  \contents_ram_reg[49][3]_5\ <= 'Z';
  \switches_OBUF[7]_inst_i_12_0\ <= 'Z';
  \switches_OBUF[7]_inst_i_9_0\ <= 'Z';
\FSM_sequential_s_TX_current_state[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset_IBUF,
      O => \^reset\
    );
\TX_Data_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \^switches_obuf[7]_inst_i_12_0\,
      I1 => '0',
      O => \switches_OBUF[7]_inst_i_5_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[1]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[1]_i_33_n_0\,
      I1 => '0',
      O => \TX_Data_reg[1]_i_14_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[1]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[1]_i_71_n_0\,
      I1 => \TX_Data_reg[1]_i_72_n_0\,
      O => \TX_Data_reg[1]_i_33_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[1]_i_5_n_0\,
      I1 => '0',
      O => \TX_Data_reg[1]_i_6_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[1]_i_14_n_0\,
      I1 => '0',
      O => \TX_Data_reg[1]_i_5_n_0\,
      S => RAM_ADDR(6)
    );
\TX_Data_reg[1]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][1]\,
      I1 => \contents_ram_reg_n_0_[2][1]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][1]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][1]\,
      O => \TX_Data_reg[1]_i_71_n_0\
    );
\TX_Data_reg[1]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][1]\,
      I1 => \contents_ram_reg_n_0_[6][1]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][1]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][1]\,
      O => \TX_Data_reg[1]_i_72_n_0\
    );
\TX_Data_reg[2]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[2]_i_33_n_0\,
      I1 => '0',
      O => \TX_Data_reg[2]_i_14_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[2]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[2]_i_71_n_0\,
      I1 => \TX_Data_reg[2]_i_72_n_0\,
      O => \TX_Data_reg[2]_i_33_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[2]_i_5_n_0\,
      I1 => '0',
      O => \TX_Data_reg[2]_i_6_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[2]_i_14_n_0\,
      I1 => '0',
      O => \TX_Data_reg[2]_i_5_n_0\,
      S => RAM_ADDR(6)
    );
\TX_Data_reg[2]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][2]\,
      I1 => \contents_ram_reg_n_0_[2][2]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][2]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][2]\,
      O => \TX_Data_reg[2]_i_71_n_0\
    );
\TX_Data_reg[2]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][2]\,
      I1 => \contents_ram_reg_n_0_[6][2]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][2]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][2]\,
      O => \TX_Data_reg[2]_i_72_n_0\
    );
\TX_Data_reg[3]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[3]_i_33_n_0\,
      I1 => '0',
      O => \TX_Data_reg[3]_i_14_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[3]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[3]_i_71_n_0\,
      I1 => \TX_Data_reg[3]_i_72_n_0\,
      O => \TX_Data_reg[3]_i_33_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[3]_i_5_n_0\,
      I1 => '0',
      O => \TX_Data_reg[3]_i_6_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[3]_i_14_n_0\,
      I1 => '0',
      O => \TX_Data_reg[3]_i_5_n_0\,
      S => RAM_ADDR(6)
    );
\TX_Data_reg[3]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][3]\,
      I1 => \contents_ram_reg_n_0_[2][3]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][3]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][3]\,
      O => \TX_Data_reg[3]_i_71_n_0\
    );
\TX_Data_reg[3]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][3]\,
      I1 => \contents_ram_reg_n_0_[6][3]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][3]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][3]\,
      O => \TX_Data_reg[3]_i_72_n_0\
    );
\TX_Data_reg[4]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[4]_i_33_n_0\,
      I1 => '0',
      O => \TX_Data_reg[4]_i_14_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[4]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[4]_i_71_n_0\,
      I1 => \TX_Data_reg[4]_i_72_n_0\,
      O => \TX_Data_reg[4]_i_33_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[4]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[4]_i_5_n_0\,
      I1 => '0',
      O => \TX_Data_reg[4]_i_6_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[4]_i_14_n_0\,
      I1 => '0',
      O => \TX_Data_reg[4]_i_5_n_0\,
      S => RAM_ADDR(6)
    );
\TX_Data_reg[4]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][4]\,
      I1 => \contents_ram_reg_n_0_[2][4]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][4]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][4]\,
      O => \TX_Data_reg[4]_i_71_n_0\
    );
\TX_Data_reg[4]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][4]\,
      I1 => \contents_ram_reg_n_0_[6][4]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][4]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][4]\,
      O => \TX_Data_reg[4]_i_72_n_0\
    );
\TX_Data_reg[5]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[5]_i_33_n_0\,
      I1 => '0',
      O => \TX_Data_reg[5]_i_14_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[5]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[5]_i_71_n_0\,
      I1 => \TX_Data_reg[5]_i_72_n_0\,
      O => \TX_Data_reg[5]_i_33_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[5]_i_5_n_0\,
      I1 => '0',
      O => \TX_Data_reg[5]_i_6_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[5]_i_14_n_0\,
      I1 => '0',
      O => \TX_Data_reg[5]_i_5_n_0\,
      S => RAM_ADDR(6)
    );
\TX_Data_reg[5]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][5]\,
      I1 => \contents_ram_reg_n_0_[2][5]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][5]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][5]\,
      O => \TX_Data_reg[5]_i_71_n_0\
    );
\TX_Data_reg[5]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][5]\,
      I1 => \contents_ram_reg_n_0_[6][5]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][5]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][5]\,
      O => \TX_Data_reg[5]_i_72_n_0\
    );
\TX_Data_reg[6]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[6]_i_33_n_0\,
      I1 => '0',
      O => \TX_Data_reg[6]_i_14_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[6]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[6]_i_71_n_0\,
      I1 => \TX_Data_reg[6]_i_72_n_0\,
      O => \TX_Data_reg[6]_i_33_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[6]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[6]_i_5_n_0\,
      I1 => '0',
      O => \TX_Data_reg[6]_i_6_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[6]_i_14_n_0\,
      I1 => '0',
      O => \TX_Data_reg[6]_i_5_n_0\,
      S => RAM_ADDR(6)
    );
\TX_Data_reg[6]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][6]\,
      I1 => \contents_ram_reg_n_0_[2][6]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][6]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][6]\,
      O => \TX_Data_reg[6]_i_71_n_0\
    );
\TX_Data_reg[6]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][6]\,
      I1 => \contents_ram_reg_n_0_[6][6]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][6]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][6]\,
      O => \TX_Data_reg[6]_i_72_n_0\
    );
\TX_Data_reg[7]_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[7]_i_39_n_0\,
      I1 => '0',
      O => \TX_Data_reg[7]_i_20_n_0\,
      S => RAM_ADDR(3)
    );
\TX_Data_reg[7]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[7]_i_77_n_0\,
      I1 => \TX_Data_reg[7]_i_78_n_0\,
      O => \TX_Data_reg[7]_i_39_n_0\,
      S => RAM_ADDR(2)
    );
\TX_Data_reg[7]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \TX_Data_reg[7]_i_8_n_0\,
      I1 => '0',
      O => \TX_Data_reg[7]_i_9_0\,
      S => RAM_ADDR(7)
    );
\TX_Data_reg[7]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][7]\,
      I1 => \contents_ram_reg_n_0_[2][7]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][7]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][7]\,
      O => \TX_Data_reg[7]_i_77_n_0\
    );
\TX_Data_reg[7]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][7]\,
      I1 => \contents_ram_reg_n_0_[6][7]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][7]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][7]\,
      O => \TX_Data_reg[7]_i_78_n_0\
    );
\TX_Data_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \TX_Data_reg[7]_i_20_n_0\,
      I1 => '0',
      O => \TX_Data_reg[7]_i_8_n_0\,
      S => RAM_ADDR(6)
    );
\Temp[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[49][3]\,
      I1 => \contents_ram_reg_n_0_[49][1]\,
      O => \contents_ram_reg[49][3]_3\
    );
\Temp[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[49][3]\,
      I1 => \contents_ram_reg_n_0_[49][1]\,
      O => \contents_ram_reg[49][3]_1\
    );
\Temp[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[49][3]\,
      I1 => \contents_ram_reg_n_0_[49][1]\,
      O => \contents_ram_reg[49][3]_0\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => ONE
    );
\contents_ram_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[0][0]\
    );
\contents_ram_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[0][1]\
    );
\contents_ram_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[0][2]\
    );
\contents_ram_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[0][3]\
    );
\contents_ram_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[0][4]\
    );
\contents_ram_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[0][5]\
    );
\contents_ram_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[0][6]\
    );
\contents_ram_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[0][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[0][7]\
    );
\contents_ram_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[1][0]\
    );
\contents_ram_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[1][1]\
    );
\contents_ram_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[1][2]\
    );
\contents_ram_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[1][3]\
    );
\contents_ram_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[1][4]\
    );
\contents_ram_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[1][5]\
    );
\contents_ram_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[1][6]\
    );
\contents_ram_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[1][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[1][7]\
    );
\contents_ram_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[2][0]\
    );
\contents_ram_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[2][1]\
    );
\contents_ram_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[2][2]\
    );
\contents_ram_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[2][3]\
    );
\contents_ram_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[2][4]\
    );
\contents_ram_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[2][5]\
    );
\contents_ram_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[2][6]\
    );
\contents_ram_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[2][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[2][7]\
    );
\contents_ram_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[3][0]\
    );
\contents_ram_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[3][1]\
    );
\contents_ram_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[3][2]\
    );
\contents_ram_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[3][3]\
    );
\contents_ram_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[3][4]\
    );
\contents_ram_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[3][5]\
    );
\contents_ram_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[3][6]\
    );
\contents_ram_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[3][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[3][7]\
    );
\contents_ram_reg[49][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => \contents_ram_reg[49][7]_0\(1),
      PRE => \^reset\,
      Q => \contents_ram_reg_n_0_[49][1]\
    );
\contents_ram_reg[49][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => \contents_ram_reg[49][7]_0\(3),
      PRE => \^reset\,
      Q => \contents_ram_reg_n_0_[49][3]\
    );
\contents_ram_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[4][0]\
    );
\contents_ram_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[4][1]\
    );
\contents_ram_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[4][2]\
    );
\contents_ram_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[4][3]\
    );
\contents_ram_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[4][4]\
    );
\contents_ram_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[4][5]\
    );
\contents_ram_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[4][6]\
    );
\contents_ram_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[4][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[4][7]\
    );
\contents_ram_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[5][0]\
    );
\contents_ram_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[5][1]\
    );
\contents_ram_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[5][2]\
    );
\contents_ram_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[5][3]\
    );
\contents_ram_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[5][4]\
    );
\contents_ram_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[5][5]\
    );
\contents_ram_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[5][6]\
    );
\contents_ram_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[5][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[5][7]\
    );
\contents_ram_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[6][0]\
    );
\contents_ram_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[6][1]\
    );
\contents_ram_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[6][2]\
    );
\contents_ram_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[6][3]\
    );
\contents_ram_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[6][4]\
    );
\contents_ram_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[6][5]\
    );
\contents_ram_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[6][6]\
    );
\contents_ram_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[6][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[6][7]\
    );
\contents_ram_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(0),
      Q => \contents_ram_reg_n_0_[7][0]\
    );
\contents_ram_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(1),
      Q => \contents_ram_reg_n_0_[7][1]\
    );
\contents_ram_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(2),
      Q => \contents_ram_reg_n_0_[7][2]\
    );
\contents_ram_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(3),
      Q => \contents_ram_reg_n_0_[7][3]\
    );
\contents_ram_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(4),
      Q => \contents_ram_reg_n_0_[7][4]\
    );
\contents_ram_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(5),
      Q => \contents_ram_reg_n_0_[7][5]\
    );
\contents_ram_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(6),
      Q => \contents_ram_reg_n_0_[7][6]\
    );
\contents_ram_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \contents_ram_reg[7][7]_0\(0),
      CLR => \^reset\,
      D => \contents_ram_reg[49][7]_0\(7),
      Q => \contents_ram_reg_n_0_[7][7]\
    );
\switches_OBUF[7]_inst_i_105\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[3][0]\,
      I1 => \contents_ram_reg_n_0_[2][0]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[1][0]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[0][0]\,
      O => \switches_OBUF[7]_inst_i_105_n_0\
    );
\switches_OBUF[7]_inst_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \contents_ram_reg_n_0_[7][0]\,
      I1 => \contents_ram_reg_n_0_[6][0]\,
      I2 => RAM_ADDR(1),
      I3 => \contents_ram_reg_n_0_[5][0]\,
      I4 => RAM_ADDR(0),
      I5 => \contents_ram_reg_n_0_[4][0]\,
      O => \switches_OBUF[7]_inst_i_106_n_0\
    );
\switches_OBUF[7]_inst_i_24\: unisim.vcomponents.MUXF8
     port map (
      I0 => \switches_OBUF[7]_inst_i_51_n_0\,
      I1 => '0',
      O => \switches_OBUF[7]_inst_i_24_n_0\,
      S => RAM_ADDR(3)
    );
\switches_OBUF[7]_inst_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \switches_OBUF[7]_inst_i_105_n_0\,
      I1 => \switches_OBUF[7]_inst_i_106_n_0\,
      O => \switches_OBUF[7]_inst_i_51_n_0\,
      S => RAM_ADDR(2)
    );
\switches_OBUF[7]_inst_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \switches_OBUF[7]_inst_i_24_n_0\,
      I1 => '0',
      O => \^switches_obuf[7]_inst_i_12_0\,
      S => RAM_ADDR(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end fifo_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of fifo_blk_mem_gen_prim_wrapper is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "RETARGET SWEEP";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '1',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 9) => B"00000",
      ADDRBWRADDR(8 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 10) => B"000000",
      DIADI(9 downto 8) => din(3 downto 2),
      DIADI(7 downto 2) => B"000000",
      DIADI(1 downto 0) => din(1 downto 0),
      DIBDI(15 downto 10) => B"000000",
      DIBDI(9 downto 8) => din(7 downto 6),
      DIBDI(7 downto 2) => B"000000",
      DIBDI(1 downto 0) => din(5 downto 4),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 10) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 10),
      DOADO(9 downto 8) => D(3 downto 2),
      DOADO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(7 downto 2),
      DOADO(1 downto 0) => D(1 downto 0),
      DOBDO(15 downto 10) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 10),
      DOBDO(9 downto 8) => D(7 downto 6),
      DOBDO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(7 downto 2),
      DOBDO(1 downto 0) => D(5 downto 4),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => tmp_ram_rd_en,
      ENBWREN => E(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => lopt,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_rd_bin_cntr is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_rd_bin_cntr : entity is "rd_bin_cntr";
end fifo_rd_bin_cntr;

architecture STRUCTURE of fifo_rd_bin_cntr is
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1\ : STD_LOGIC;
  signal \grss.rsts/comp1\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_fb_i_i_3_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_5_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair1";
begin
  \gc0.count_d1_reg[3]_0\(3 downto 0) <= \^gc0.count_d1_reg[3]_0\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^gc0.count_d1_reg[3]_0\(0),
      R => srst
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^gc0.count_d1_reg[3]_0\(1),
      R => srst
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => rd_pntr_plus1(2),
      Q => \^gc0.count_d1_reg[3]_0\(2),
      R => srst
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => rd_pntr_plus1(3),
      Q => \^gc0.count_d1_reg[3]_0\(3),
      R => srst
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      Q => rd_pntr_plus1(0),
      S => srst
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(1),
      Q => rd_pntr_plus1(1),
      R => srst
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(2),
      Q => rd_pntr_plus1(2),
      R => srst
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3),
      R => srst
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFFFF88008888"
    )
        port map (
      I0 => E(0),
      I1 => \grss.rsts/comp1\,
      I2 => \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0\,
      I3 => \out\,
      I4 => wr_en,
      I5 => ram_empty_fb_i_reg,
      O => ram_full_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => Q(1),
      I1 => rd_pntr_plus1(1),
      I2 => Q(0),
      I3 => rd_pntr_plus1(0),
      I4 => ram_empty_fb_i_i_3_n_0,
      O => \grss.rsts/comp1\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => Q(2),
      I2 => rd_pntr_plus1(3),
      I3 => Q(3),
      O => ram_empty_fb_i_i_3_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => wr_en,
      I1 => \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1\,
      I2 => \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0\,
      I3 => E(0),
      I4 => \out\,
      O => ram_full_comb
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => ram_full_fb_i_i_2_0(1),
      I1 => \^gc0.count_d1_reg[3]_0\(1),
      I2 => ram_full_fb_i_i_2_0(0),
      I3 => \^gc0.count_d1_reg[3]_0\(0),
      I4 => ram_full_fb_i_i_4_n_0,
      O => \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1\
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => Q(1),
      I1 => \^gc0.count_d1_reg[3]_0\(1),
      I2 => Q(0),
      I3 => \^gc0.count_d1_reg[3]_0\(0),
      I4 => ram_full_fb_i_i_5_n_0,
      O => \gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0\
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => ram_full_fb_i_i_2_0(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => ram_full_fb_i_i_2_0(3),
      O => ram_full_fb_i_i_4_n_0
    );
ram_full_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => Q(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => Q(3),
      O => ram_full_fb_i_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_rd_fwft is
  port (
    empty : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_rd_fwft : entity is "rd_fwft";
end fifo_rd_fwft;

architecture STRUCTURE of fifo_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal \aempty_fwft_i0__1\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal \empty_fwft_i0__1\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\ : label is "RETARGET";
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \goreg_bm.dout_i[7]_i_1\ : label is 186;
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \gpregsm1.curr_fwft_state[0]_i_1\ : label is 186;
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  empty <= empty_fwft_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4555FFFF"
    )
        port map (
      I0 => \out\,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => lopt,
      O => tmp_ram_rd_en
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCB8000"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \out\,
      I4 => aempty_fwft_fb_i,
      O => \aempty_fwft_i0__1\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aempty_fwft_i0__1\,
      Q => aempty_fwft_fb_i,
      S => srst
    );
aempty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aempty_fwft_i0__1\,
      Q => aempty_fwft_i,
      S => srst
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_i,
      O => \empty_fwft_i0__1\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_fb_i,
      S => srst
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => srst
    );
empty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_i,
      S => srst
    );
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => \out\,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => ram_empty_fb_i_reg(0)
    );
\goreg_bm.dout_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => srst
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => srst
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    srst : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_rd_status_flags_ss : entity is "rd_status_flags_ss";
end fifo_rd_status_flags_ss;

architecture STRUCTURE of fifo_rd_status_flags_ss is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_fb_i,
      S => srst
    );
ram_empty_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_i,
      S => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_wr_bin_cntr : entity is "wr_bin_cntr";
end fifo_wr_bin_cntr;

architecture STRUCTURE of fifo_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => \gcc0.gc0.count_d1_reg[3]_0\(0),
      R => srst
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(1),
      Q => \gcc0.gc0.count_d1_reg[3]_0\(1),
      R => srst
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(2),
      Q => \gcc0.gc0.count_d1_reg[3]_0\(2),
      R => srst
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(3),
      Q => \gcc0.gc0.count_d1_reg[3]_0\(3),
      R => srst
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => \^q\(0),
      S => srst
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => \^q\(1),
      R => srst
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => \^q\(2),
      R => srst
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => \^q\(3),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_wr_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_wr_status_flags_ss : entity is "wr_status_flags_ss";
end fifo_wr_status_flags_ss;

architecture STRUCTURE of fifo_wr_status_flags_ss is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      Q => ram_full_fb_i,
      R => srst
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      Q => ram_full_i,
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clk_PIC_TOP is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
end Clk_PIC_TOP;

architecture STRUCTURE of Clk_PIC_TOP is
  signal NLW_inst_reset_UNCONNECTED : STD_LOGIC;
begin
inst: entity work.Clk_PIC_TOP_Clk_PIC_TOP_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      lopt => lopt,
      reset => NLW_inst_reset_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clk_gen is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
end Clk_gen;

architecture STRUCTURE of Clk_gen is
  signal NLW_inst_reset_UNCONNECTED : STD_LOGIC;
begin
inst: entity work.Clk_gen_Clk_gen_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      lopt => lopt,
      reset => NLW_inst_reset_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end fifo_blk_mem_gen_prim_width;

architecture STRUCTURE of fifo_blk_mem_gen_prim_width is
  signal \NLW_prim_noinit.ram_srst_UNCONNECTED\ : STD_LOGIC;
begin
\prim_noinit.ram\: entity work.fifo_blk_mem_gen_prim_wrapper
     port map (
      D(7 downto 0) => D(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      E(0) => E(0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      lopt => lopt,
      srst => \NLW_prim_noinit.ram_srst_UNCONNECTED\,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_rd_logic is
  port (
    empty : out STD_LOGIC;
    ram_full_comb : out STD_LOGIC;
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmp_ram_rd_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_i_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_rd_logic : entity is "rd_logic";
end fifo_rd_logic;

architecture STRUCTURE of fifo_rd_logic is
  signal empty_fb_i : STD_LOGIC;
  signal ram_rd_en : STD_LOGIC;
  signal rpntr_n_1 : STD_LOGIC;
begin
\gr1.gr1_int.rfwft\: entity work.fifo_rd_fwft
     port map (
      E(0) => E(0),
      clk => clk,
      empty => empty,
      lopt => lopt,
      \out\ => empty_fb_i,
      ram_empty_fb_i_reg(0) => ram_rd_en,
      rd_en => rd_en,
      srst => srst,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
\grss.rsts\: entity work.fifo_rd_status_flags_ss
     port map (
      clk => clk,
      \out\ => empty_fb_i,
      ram_empty_fb_i_reg_0 => rpntr_n_1,
      srst => srst
    );
rpntr: entity work.fifo_rd_bin_cntr
     port map (
      E(0) => ram_rd_en,
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gc0.count_d1_reg[3]_0\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\ => \out\,
      ram_empty_fb_i_reg => empty_fb_i,
      ram_full_comb => ram_full_comb,
      ram_full_fb_i_i_2_0(3 downto 0) => ram_full_fb_i_i_2(3 downto 0),
      ram_full_fb_i_reg => rpntr_n_1,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_wr_logic is
  port (
    \out\ : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_wr_logic : entity is "wr_logic";
end fifo_wr_logic;

architecture STRUCTURE of fifo_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gwss.wsts_full_UNCONNECTED\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  full <= 'Z';
\gwss.wsts\: entity work.fifo_wr_status_flags_ss
     port map (
      E(0) => \^e\(0),
      clk => clk,
      full => \NLW_gwss.wsts_full_UNCONNECTED\,
      \out\ => \out\,
      ram_full_comb => ram_full_comb,
      srst => srst,
      wr_en => wr_en
    );
wpntr: entity work.fifo_wr_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[3]_0\(3 downto 0) => \gcc0.gc0.count_d1_reg[3]\(3 downto 0),
      srst => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end fifo_blk_mem_gen_generic_cstr;

architecture STRUCTURE of fifo_blk_mem_gen_generic_cstr is
  signal \NLW_ramloop[0].ram.r_srst_UNCONNECTED\ : STD_LOGIC;
begin
\ramloop[0].ram.r\: entity work.fifo_blk_mem_gen_prim_width
     port map (
      D(7 downto 0) => D(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      E(0) => E(0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      lopt => lopt,
      srst => \NLW_ramloop[0].ram.r_srst_UNCONNECTED\,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_blk_mem_gen_top : entity is "blk_mem_gen_top";
end fifo_blk_mem_gen_top;

architecture STRUCTURE of fifo_blk_mem_gen_top is
  signal \NLW_valid.cstr_srst_UNCONNECTED\ : STD_LOGIC;
begin
\valid.cstr\: entity work.fifo_blk_mem_gen_generic_cstr
     port map (
      D(7 downto 0) => D(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      E(0) => E(0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      lopt => lopt,
      srst => \NLW_valid.cstr_srst_UNCONNECTED\,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_blk_mem_gen_v8_4_4_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_blk_mem_gen_v8_4_4_synth : entity is "blk_mem_gen_v8_4_4_synth";
end fifo_blk_mem_gen_v8_4_4_synth;

architecture STRUCTURE of fifo_blk_mem_gen_v8_4_4_synth is
  signal \NLW_gnbram.gnativebmg.native_blk_mem_gen_srst_UNCONNECTED\ : STD_LOGIC;
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.fifo_blk_mem_gen_top
     port map (
      D(7 downto 0) => D(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      E(0) => E(0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      lopt => lopt,
      srst => \NLW_gnbram.gnativebmg.native_blk_mem_gen_srst_UNCONNECTED\,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_blk_mem_gen_v8_4_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_blk_mem_gen_v8_4_4 : entity is "blk_mem_gen_v8_4_4";
end fifo_blk_mem_gen_v8_4_4;

architecture STRUCTURE of fifo_blk_mem_gen_v8_4_4 is
  signal NLW_inst_blk_mem_gen_srst_UNCONNECTED : STD_LOGIC;
begin
inst_blk_mem_gen: entity work.fifo_blk_mem_gen_v8_4_4_synth
     port map (
      D(7 downto 0) => D(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      E(0) => E(0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      lopt => lopt,
      srst => NLW_inst_blk_mem_gen_srst_UNCONNECTED,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \goreg_bm.dout_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_memory : entity is "memory";
end fifo_memory;

architecture STRUCTURE of fifo_memory is
  signal doutb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gbm.gbmg.gbmga.ngecc.bmg_srst_UNCONNECTED\ : STD_LOGIC;
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.fifo_blk_mem_gen_v8_4_4
     port map (
      D(7 downto 0) => doutb(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0),
      E(0) => E(0),
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      lopt => lopt,
      srst => \NLW_gbm.gbmg.gbmga.ngecc.bmg_srst_UNCONNECTED\,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(0),
      Q => dout(0),
      R => srst
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(1),
      Q => dout(1),
      R => srst
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(2),
      Q => dout(2),
      R => srst
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(3),
      Q => dout(3),
      R => srst
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(4),
      Q => dout(4),
      R => srst
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(5),
      Q => dout(5),
      R => srst
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(6),
      Q => dout(6),
      R => srst
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \goreg_bm.dout_i_reg[7]_0\(0),
      D => doutb(7),
      Q => dout(7),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_fifo_generator_ramfifo is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end fifo_fifo_generator_ramfifo;

architecture STRUCTURE of fifo_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gl0.wr_n_0\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
  signal ram_regout_en : STD_LOGIC;
  signal ram_wr_en : STD_LOGIC;
  signal rd_pntr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp_ram_rd_en : STD_LOGIC;
  signal wr_pntr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gntv_or_sync_fifo.gl0.wr_full_UNCONNECTED\ : STD_LOGIC;
begin
  full <= 'Z';
\gntv_or_sync_fifo.gl0.rd\: entity work.fifo_rd_logic
     port map (
      E(0) => ram_regout_en,
      Q(3 downto 0) => wr_pntr(3 downto 0),
      clk => clk,
      empty => empty,
      \gc0.count_d1_reg[3]\(3 downto 0) => rd_pntr(3 downto 0),
      lopt => lopt,
      \out\ => \gntv_or_sync_fifo.gl0.wr_n_0\,
      ram_full_comb => ram_full_comb,
      ram_full_fb_i_i_2(3 downto 0) => wr_pntr_plus1(3 downto 0),
      rd_en => rd_en,
      srst => srst,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.fifo_wr_logic
     port map (
      E(0) => ram_wr_en,
      Q(3 downto 0) => wr_pntr_plus1(3 downto 0),
      clk => clk,
      full => \NLW_gntv_or_sync_fifo.gl0.wr_full_UNCONNECTED\,
      \gcc0.gc0.count_d1_reg[3]\(3 downto 0) => wr_pntr(3 downto 0),
      \out\ => \gntv_or_sync_fifo.gl0.wr_n_0\,
      ram_full_comb => ram_full_comb,
      srst => srst,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.fifo_memory
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => rd_pntr(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(3 downto 0) => wr_pntr(3 downto 0),
      E(0) => ram_wr_en,
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \goreg_bm.dout_i_reg[7]_0\(0) => ram_regout_en,
      lopt => lopt,
      srst => srst,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_fifo_generator_top is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_fifo_generator_top : entity is "fifo_generator_top";
end fifo_fifo_generator_top;

architecture STRUCTURE of fifo_fifo_generator_top is
  signal \NLW_grf.rf_full_UNCONNECTED\ : STD_LOGIC;
begin
  full <= 'Z';
\grf.rf\: entity work.fifo_fifo_generator_ramfifo
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => \NLW_grf.rf_full_UNCONNECTED\,
      lopt => lopt,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_fifo_generator_v13_2_5_synth is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_fifo_generator_v13_2_5_synth : entity is "fifo_generator_v13_2_5_synth";
end fifo_fifo_generator_v13_2_5_synth;

architecture STRUCTURE of fifo_fifo_generator_v13_2_5_synth is
  signal \NLW_gconvfifo.rf_full_UNCONNECTED\ : STD_LOGIC;
begin
  full <= 'Z';
\gconvfifo.rf\: entity work.fifo_fifo_generator_top
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => \NLW_gconvfifo.rf_full_UNCONNECTED\,
      lopt => lopt,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_fifo_generator_v13_2_5 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 5;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_fifo_generator_v13_2_5 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_fifo_generator_v13_2_5 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_fifo_generator_v13_2_5 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_fifo_generator_v13_2_5 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_fifo_generator_v13_2_5 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_fifo_generator_v13_2_5 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_fifo_generator_v13_2_5 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_fifo_generator_v13_2_5 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_fifo_generator_v13_2_5 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_fifo_generator_v13_2_5 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_fifo_generator_v13_2_5 : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_fifo_generator_v13_2_5 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_fifo_generator_v13_2_5 : entity is 14;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 5;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 5;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_fifo_generator_v13_2_5 : entity is "fifo_generator_v13_2_5";
end fifo_fifo_generator_v13_2_5;

architecture STRUCTURE of fifo_fifo_generator_v13_2_5 is
  signal NLW_inst_fifo_gen_full_UNCONNECTED : STD_LOGIC;
begin
  almost_empty <= 'Z';
  almost_full <= 'Z';
  axi_ar_dbiterr <= 'Z';
  axi_ar_overflow <= 'Z';
  axi_ar_prog_empty <= 'Z';
  axi_ar_prog_full <= 'Z';
  axi_ar_sbiterr <= 'Z';
  axi_ar_underflow <= 'Z';
  axi_aw_dbiterr <= 'Z';
  axi_aw_overflow <= 'Z';
  axi_aw_prog_empty <= 'Z';
  axi_aw_prog_full <= 'Z';
  axi_aw_sbiterr <= 'Z';
  axi_aw_underflow <= 'Z';
  axi_b_dbiterr <= 'Z';
  axi_b_overflow <= 'Z';
  axi_b_prog_empty <= 'Z';
  axi_b_prog_full <= 'Z';
  axi_b_sbiterr <= 'Z';
  axi_b_underflow <= 'Z';
  axi_r_dbiterr <= 'Z';
  axi_r_overflow <= 'Z';
  axi_r_prog_empty <= 'Z';
  axi_r_prog_full <= 'Z';
  axi_r_sbiterr <= 'Z';
  axi_r_underflow <= 'Z';
  axi_w_dbiterr <= 'Z';
  axi_w_overflow <= 'Z';
  axi_w_prog_empty <= 'Z';
  axi_w_prog_full <= 'Z';
  axi_w_sbiterr <= 'Z';
  axi_w_underflow <= 'Z';
  axis_dbiterr <= 'Z';
  axis_overflow <= 'Z';
  axis_prog_empty <= 'Z';
  axis_prog_full <= 'Z';
  axis_sbiterr <= 'Z';
  axis_underflow <= 'Z';
  dbiterr <= 'Z';
  full <= 'Z';
  m_axi_arvalid <= 'Z';
  m_axi_awvalid <= 'Z';
  m_axi_bready <= 'Z';
  m_axi_rready <= 'Z';
  m_axi_wlast <= 'Z';
  m_axi_wvalid <= 'Z';
  m_axis_tlast <= 'Z';
  m_axis_tvalid <= 'Z';
  overflow <= 'Z';
  prog_empty <= 'Z';
  prog_full <= 'Z';
  rd_rst_busy <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_bvalid <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  s_axi_wready <= 'Z';
  s_axis_tready <= 'Z';
  sbiterr <= 'Z';
  underflow <= 'Z';
  valid <= 'Z';
  wr_ack <= 'Z';
  wr_rst_busy <= 'Z';
  axi_ar_data_count(0) <= 'Z';
  axi_ar_data_count(1) <= 'Z';
  axi_ar_data_count(2) <= 'Z';
  axi_ar_data_count(3) <= 'Z';
  axi_ar_data_count(4) <= 'Z';
  axi_ar_rd_data_count(0) <= 'Z';
  axi_ar_rd_data_count(1) <= 'Z';
  axi_ar_rd_data_count(2) <= 'Z';
  axi_ar_rd_data_count(3) <= 'Z';
  axi_ar_rd_data_count(4) <= 'Z';
  axi_ar_wr_data_count(0) <= 'Z';
  axi_ar_wr_data_count(1) <= 'Z';
  axi_ar_wr_data_count(2) <= 'Z';
  axi_ar_wr_data_count(3) <= 'Z';
  axi_ar_wr_data_count(4) <= 'Z';
  axi_aw_data_count(0) <= 'Z';
  axi_aw_data_count(1) <= 'Z';
  axi_aw_data_count(2) <= 'Z';
  axi_aw_data_count(3) <= 'Z';
  axi_aw_data_count(4) <= 'Z';
  axi_aw_rd_data_count(0) <= 'Z';
  axi_aw_rd_data_count(1) <= 'Z';
  axi_aw_rd_data_count(2) <= 'Z';
  axi_aw_rd_data_count(3) <= 'Z';
  axi_aw_rd_data_count(4) <= 'Z';
  axi_aw_wr_data_count(0) <= 'Z';
  axi_aw_wr_data_count(1) <= 'Z';
  axi_aw_wr_data_count(2) <= 'Z';
  axi_aw_wr_data_count(3) <= 'Z';
  axi_aw_wr_data_count(4) <= 'Z';
  axi_b_data_count(0) <= 'Z';
  axi_b_data_count(1) <= 'Z';
  axi_b_data_count(2) <= 'Z';
  axi_b_data_count(3) <= 'Z';
  axi_b_data_count(4) <= 'Z';
  axi_b_rd_data_count(0) <= 'Z';
  axi_b_rd_data_count(1) <= 'Z';
  axi_b_rd_data_count(2) <= 'Z';
  axi_b_rd_data_count(3) <= 'Z';
  axi_b_rd_data_count(4) <= 'Z';
  axi_b_wr_data_count(0) <= 'Z';
  axi_b_wr_data_count(1) <= 'Z';
  axi_b_wr_data_count(2) <= 'Z';
  axi_b_wr_data_count(3) <= 'Z';
  axi_b_wr_data_count(4) <= 'Z';
  axi_r_data_count(0) <= 'Z';
  axi_r_data_count(1) <= 'Z';
  axi_r_data_count(2) <= 'Z';
  axi_r_data_count(3) <= 'Z';
  axi_r_data_count(4) <= 'Z';
  axi_r_data_count(5) <= 'Z';
  axi_r_data_count(6) <= 'Z';
  axi_r_data_count(7) <= 'Z';
  axi_r_data_count(8) <= 'Z';
  axi_r_data_count(9) <= 'Z';
  axi_r_data_count(10) <= 'Z';
  axi_r_rd_data_count(0) <= 'Z';
  axi_r_rd_data_count(1) <= 'Z';
  axi_r_rd_data_count(2) <= 'Z';
  axi_r_rd_data_count(3) <= 'Z';
  axi_r_rd_data_count(4) <= 'Z';
  axi_r_rd_data_count(5) <= 'Z';
  axi_r_rd_data_count(6) <= 'Z';
  axi_r_rd_data_count(7) <= 'Z';
  axi_r_rd_data_count(8) <= 'Z';
  axi_r_rd_data_count(9) <= 'Z';
  axi_r_rd_data_count(10) <= 'Z';
  axi_r_wr_data_count(0) <= 'Z';
  axi_r_wr_data_count(1) <= 'Z';
  axi_r_wr_data_count(2) <= 'Z';
  axi_r_wr_data_count(3) <= 'Z';
  axi_r_wr_data_count(4) <= 'Z';
  axi_r_wr_data_count(5) <= 'Z';
  axi_r_wr_data_count(6) <= 'Z';
  axi_r_wr_data_count(7) <= 'Z';
  axi_r_wr_data_count(8) <= 'Z';
  axi_r_wr_data_count(9) <= 'Z';
  axi_r_wr_data_count(10) <= 'Z';
  axi_w_data_count(0) <= 'Z';
  axi_w_data_count(1) <= 'Z';
  axi_w_data_count(2) <= 'Z';
  axi_w_data_count(3) <= 'Z';
  axi_w_data_count(4) <= 'Z';
  axi_w_data_count(5) <= 'Z';
  axi_w_data_count(6) <= 'Z';
  axi_w_data_count(7) <= 'Z';
  axi_w_data_count(8) <= 'Z';
  axi_w_data_count(9) <= 'Z';
  axi_w_data_count(10) <= 'Z';
  axi_w_rd_data_count(0) <= 'Z';
  axi_w_rd_data_count(1) <= 'Z';
  axi_w_rd_data_count(2) <= 'Z';
  axi_w_rd_data_count(3) <= 'Z';
  axi_w_rd_data_count(4) <= 'Z';
  axi_w_rd_data_count(5) <= 'Z';
  axi_w_rd_data_count(6) <= 'Z';
  axi_w_rd_data_count(7) <= 'Z';
  axi_w_rd_data_count(8) <= 'Z';
  axi_w_rd_data_count(9) <= 'Z';
  axi_w_rd_data_count(10) <= 'Z';
  axi_w_wr_data_count(0) <= 'Z';
  axi_w_wr_data_count(1) <= 'Z';
  axi_w_wr_data_count(2) <= 'Z';
  axi_w_wr_data_count(3) <= 'Z';
  axi_w_wr_data_count(4) <= 'Z';
  axi_w_wr_data_count(5) <= 'Z';
  axi_w_wr_data_count(6) <= 'Z';
  axi_w_wr_data_count(7) <= 'Z';
  axi_w_wr_data_count(8) <= 'Z';
  axi_w_wr_data_count(9) <= 'Z';
  axi_w_wr_data_count(10) <= 'Z';
  axis_data_count(0) <= 'Z';
  axis_data_count(1) <= 'Z';
  axis_data_count(2) <= 'Z';
  axis_data_count(3) <= 'Z';
  axis_data_count(4) <= 'Z';
  axis_data_count(5) <= 'Z';
  axis_data_count(6) <= 'Z';
  axis_data_count(7) <= 'Z';
  axis_data_count(8) <= 'Z';
  axis_data_count(9) <= 'Z';
  axis_data_count(10) <= 'Z';
  axis_rd_data_count(0) <= 'Z';
  axis_rd_data_count(1) <= 'Z';
  axis_rd_data_count(2) <= 'Z';
  axis_rd_data_count(3) <= 'Z';
  axis_rd_data_count(4) <= 'Z';
  axis_rd_data_count(5) <= 'Z';
  axis_rd_data_count(6) <= 'Z';
  axis_rd_data_count(7) <= 'Z';
  axis_rd_data_count(8) <= 'Z';
  axis_rd_data_count(9) <= 'Z';
  axis_rd_data_count(10) <= 'Z';
  axis_wr_data_count(0) <= 'Z';
  axis_wr_data_count(1) <= 'Z';
  axis_wr_data_count(2) <= 'Z';
  axis_wr_data_count(3) <= 'Z';
  axis_wr_data_count(4) <= 'Z';
  axis_wr_data_count(5) <= 'Z';
  axis_wr_data_count(6) <= 'Z';
  axis_wr_data_count(7) <= 'Z';
  axis_wr_data_count(8) <= 'Z';
  axis_wr_data_count(9) <= 'Z';
  axis_wr_data_count(10) <= 'Z';
  data_count(0) <= 'Z';
  data_count(1) <= 'Z';
  data_count(2) <= 'Z';
  data_count(3) <= 'Z';
  data_count(4) <= 'Z';
  m_axi_araddr(0) <= 'Z';
  m_axi_araddr(1) <= 'Z';
  m_axi_araddr(2) <= 'Z';
  m_axi_araddr(3) <= 'Z';
  m_axi_araddr(4) <= 'Z';
  m_axi_araddr(5) <= 'Z';
  m_axi_araddr(6) <= 'Z';
  m_axi_araddr(7) <= 'Z';
  m_axi_araddr(8) <= 'Z';
  m_axi_araddr(9) <= 'Z';
  m_axi_araddr(10) <= 'Z';
  m_axi_araddr(11) <= 'Z';
  m_axi_araddr(12) <= 'Z';
  m_axi_araddr(13) <= 'Z';
  m_axi_araddr(14) <= 'Z';
  m_axi_araddr(15) <= 'Z';
  m_axi_araddr(16) <= 'Z';
  m_axi_araddr(17) <= 'Z';
  m_axi_araddr(18) <= 'Z';
  m_axi_araddr(19) <= 'Z';
  m_axi_araddr(20) <= 'Z';
  m_axi_araddr(21) <= 'Z';
  m_axi_araddr(22) <= 'Z';
  m_axi_araddr(23) <= 'Z';
  m_axi_araddr(24) <= 'Z';
  m_axi_araddr(25) <= 'Z';
  m_axi_araddr(26) <= 'Z';
  m_axi_araddr(27) <= 'Z';
  m_axi_araddr(28) <= 'Z';
  m_axi_araddr(29) <= 'Z';
  m_axi_araddr(30) <= 'Z';
  m_axi_araddr(31) <= 'Z';
  m_axi_arburst(0) <= 'Z';
  m_axi_arburst(1) <= 'Z';
  m_axi_arcache(0) <= 'Z';
  m_axi_arcache(1) <= 'Z';
  m_axi_arcache(2) <= 'Z';
  m_axi_arcache(3) <= 'Z';
  m_axi_arid(0) <= 'Z';
  m_axi_arlen(0) <= 'Z';
  m_axi_arlen(1) <= 'Z';
  m_axi_arlen(2) <= 'Z';
  m_axi_arlen(3) <= 'Z';
  m_axi_arlen(4) <= 'Z';
  m_axi_arlen(5) <= 'Z';
  m_axi_arlen(6) <= 'Z';
  m_axi_arlen(7) <= 'Z';
  m_axi_arlock(0) <= 'Z';
  m_axi_arprot(0) <= 'Z';
  m_axi_arprot(1) <= 'Z';
  m_axi_arprot(2) <= 'Z';
  m_axi_arqos(0) <= 'Z';
  m_axi_arqos(1) <= 'Z';
  m_axi_arqos(2) <= 'Z';
  m_axi_arqos(3) <= 'Z';
  m_axi_arregion(0) <= 'Z';
  m_axi_arregion(1) <= 'Z';
  m_axi_arregion(2) <= 'Z';
  m_axi_arregion(3) <= 'Z';
  m_axi_arsize(0) <= 'Z';
  m_axi_arsize(1) <= 'Z';
  m_axi_arsize(2) <= 'Z';
  m_axi_aruser(0) <= 'Z';
  m_axi_awaddr(0) <= 'Z';
  m_axi_awaddr(1) <= 'Z';
  m_axi_awaddr(2) <= 'Z';
  m_axi_awaddr(3) <= 'Z';
  m_axi_awaddr(4) <= 'Z';
  m_axi_awaddr(5) <= 'Z';
  m_axi_awaddr(6) <= 'Z';
  m_axi_awaddr(7) <= 'Z';
  m_axi_awaddr(8) <= 'Z';
  m_axi_awaddr(9) <= 'Z';
  m_axi_awaddr(10) <= 'Z';
  m_axi_awaddr(11) <= 'Z';
  m_axi_awaddr(12) <= 'Z';
  m_axi_awaddr(13) <= 'Z';
  m_axi_awaddr(14) <= 'Z';
  m_axi_awaddr(15) <= 'Z';
  m_axi_awaddr(16) <= 'Z';
  m_axi_awaddr(17) <= 'Z';
  m_axi_awaddr(18) <= 'Z';
  m_axi_awaddr(19) <= 'Z';
  m_axi_awaddr(20) <= 'Z';
  m_axi_awaddr(21) <= 'Z';
  m_axi_awaddr(22) <= 'Z';
  m_axi_awaddr(23) <= 'Z';
  m_axi_awaddr(24) <= 'Z';
  m_axi_awaddr(25) <= 'Z';
  m_axi_awaddr(26) <= 'Z';
  m_axi_awaddr(27) <= 'Z';
  m_axi_awaddr(28) <= 'Z';
  m_axi_awaddr(29) <= 'Z';
  m_axi_awaddr(30) <= 'Z';
  m_axi_awaddr(31) <= 'Z';
  m_axi_awburst(0) <= 'Z';
  m_axi_awburst(1) <= 'Z';
  m_axi_awcache(0) <= 'Z';
  m_axi_awcache(1) <= 'Z';
  m_axi_awcache(2) <= 'Z';
  m_axi_awcache(3) <= 'Z';
  m_axi_awid(0) <= 'Z';
  m_axi_awlen(0) <= 'Z';
  m_axi_awlen(1) <= 'Z';
  m_axi_awlen(2) <= 'Z';
  m_axi_awlen(3) <= 'Z';
  m_axi_awlen(4) <= 'Z';
  m_axi_awlen(5) <= 'Z';
  m_axi_awlen(6) <= 'Z';
  m_axi_awlen(7) <= 'Z';
  m_axi_awlock(0) <= 'Z';
  m_axi_awprot(0) <= 'Z';
  m_axi_awprot(1) <= 'Z';
  m_axi_awprot(2) <= 'Z';
  m_axi_awqos(0) <= 'Z';
  m_axi_awqos(1) <= 'Z';
  m_axi_awqos(2) <= 'Z';
  m_axi_awqos(3) <= 'Z';
  m_axi_awregion(0) <= 'Z';
  m_axi_awregion(1) <= 'Z';
  m_axi_awregion(2) <= 'Z';
  m_axi_awregion(3) <= 'Z';
  m_axi_awsize(0) <= 'Z';
  m_axi_awsize(1) <= 'Z';
  m_axi_awsize(2) <= 'Z';
  m_axi_awuser(0) <= 'Z';
  m_axi_wdata(0) <= 'Z';
  m_axi_wdata(1) <= 'Z';
  m_axi_wdata(2) <= 'Z';
  m_axi_wdata(3) <= 'Z';
  m_axi_wdata(4) <= 'Z';
  m_axi_wdata(5) <= 'Z';
  m_axi_wdata(6) <= 'Z';
  m_axi_wdata(7) <= 'Z';
  m_axi_wdata(8) <= 'Z';
  m_axi_wdata(9) <= 'Z';
  m_axi_wdata(10) <= 'Z';
  m_axi_wdata(11) <= 'Z';
  m_axi_wdata(12) <= 'Z';
  m_axi_wdata(13) <= 'Z';
  m_axi_wdata(14) <= 'Z';
  m_axi_wdata(15) <= 'Z';
  m_axi_wdata(16) <= 'Z';
  m_axi_wdata(17) <= 'Z';
  m_axi_wdata(18) <= 'Z';
  m_axi_wdata(19) <= 'Z';
  m_axi_wdata(20) <= 'Z';
  m_axi_wdata(21) <= 'Z';
  m_axi_wdata(22) <= 'Z';
  m_axi_wdata(23) <= 'Z';
  m_axi_wdata(24) <= 'Z';
  m_axi_wdata(25) <= 'Z';
  m_axi_wdata(26) <= 'Z';
  m_axi_wdata(27) <= 'Z';
  m_axi_wdata(28) <= 'Z';
  m_axi_wdata(29) <= 'Z';
  m_axi_wdata(30) <= 'Z';
  m_axi_wdata(31) <= 'Z';
  m_axi_wdata(32) <= 'Z';
  m_axi_wdata(33) <= 'Z';
  m_axi_wdata(34) <= 'Z';
  m_axi_wdata(35) <= 'Z';
  m_axi_wdata(36) <= 'Z';
  m_axi_wdata(37) <= 'Z';
  m_axi_wdata(38) <= 'Z';
  m_axi_wdata(39) <= 'Z';
  m_axi_wdata(40) <= 'Z';
  m_axi_wdata(41) <= 'Z';
  m_axi_wdata(42) <= 'Z';
  m_axi_wdata(43) <= 'Z';
  m_axi_wdata(44) <= 'Z';
  m_axi_wdata(45) <= 'Z';
  m_axi_wdata(46) <= 'Z';
  m_axi_wdata(47) <= 'Z';
  m_axi_wdata(48) <= 'Z';
  m_axi_wdata(49) <= 'Z';
  m_axi_wdata(50) <= 'Z';
  m_axi_wdata(51) <= 'Z';
  m_axi_wdata(52) <= 'Z';
  m_axi_wdata(53) <= 'Z';
  m_axi_wdata(54) <= 'Z';
  m_axi_wdata(55) <= 'Z';
  m_axi_wdata(56) <= 'Z';
  m_axi_wdata(57) <= 'Z';
  m_axi_wdata(58) <= 'Z';
  m_axi_wdata(59) <= 'Z';
  m_axi_wdata(60) <= 'Z';
  m_axi_wdata(61) <= 'Z';
  m_axi_wdata(62) <= 'Z';
  m_axi_wdata(63) <= 'Z';
  m_axi_wid(0) <= 'Z';
  m_axi_wstrb(0) <= 'Z';
  m_axi_wstrb(1) <= 'Z';
  m_axi_wstrb(2) <= 'Z';
  m_axi_wstrb(3) <= 'Z';
  m_axi_wstrb(4) <= 'Z';
  m_axi_wstrb(5) <= 'Z';
  m_axi_wstrb(6) <= 'Z';
  m_axi_wstrb(7) <= 'Z';
  m_axi_wuser(0) <= 'Z';
  m_axis_tdata(0) <= 'Z';
  m_axis_tdata(1) <= 'Z';
  m_axis_tdata(2) <= 'Z';
  m_axis_tdata(3) <= 'Z';
  m_axis_tdata(4) <= 'Z';
  m_axis_tdata(5) <= 'Z';
  m_axis_tdata(6) <= 'Z';
  m_axis_tdata(7) <= 'Z';
  m_axis_tdest(0) <= 'Z';
  m_axis_tid(0) <= 'Z';
  m_axis_tkeep(0) <= 'Z';
  m_axis_tstrb(0) <= 'Z';
  m_axis_tuser(0) <= 'Z';
  m_axis_tuser(1) <= 'Z';
  m_axis_tuser(2) <= 'Z';
  m_axis_tuser(3) <= 'Z';
  rd_data_count(0) <= 'Z';
  rd_data_count(1) <= 'Z';
  rd_data_count(2) <= 'Z';
  rd_data_count(3) <= 'Z';
  rd_data_count(4) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_buser(0) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rdata(1) <= 'Z';
  s_axi_rdata(2) <= 'Z';
  s_axi_rdata(3) <= 'Z';
  s_axi_rdata(4) <= 'Z';
  s_axi_rdata(5) <= 'Z';
  s_axi_rdata(6) <= 'Z';
  s_axi_rdata(7) <= 'Z';
  s_axi_rdata(8) <= 'Z';
  s_axi_rdata(9) <= 'Z';
  s_axi_rdata(10) <= 'Z';
  s_axi_rdata(11) <= 'Z';
  s_axi_rdata(12) <= 'Z';
  s_axi_rdata(13) <= 'Z';
  s_axi_rdata(14) <= 'Z';
  s_axi_rdata(15) <= 'Z';
  s_axi_rdata(16) <= 'Z';
  s_axi_rdata(17) <= 'Z';
  s_axi_rdata(18) <= 'Z';
  s_axi_rdata(19) <= 'Z';
  s_axi_rdata(20) <= 'Z';
  s_axi_rdata(21) <= 'Z';
  s_axi_rdata(22) <= 'Z';
  s_axi_rdata(23) <= 'Z';
  s_axi_rdata(24) <= 'Z';
  s_axi_rdata(25) <= 'Z';
  s_axi_rdata(26) <= 'Z';
  s_axi_rdata(27) <= 'Z';
  s_axi_rdata(28) <= 'Z';
  s_axi_rdata(29) <= 'Z';
  s_axi_rdata(30) <= 'Z';
  s_axi_rdata(31) <= 'Z';
  s_axi_rdata(32) <= 'Z';
  s_axi_rdata(33) <= 'Z';
  s_axi_rdata(34) <= 'Z';
  s_axi_rdata(35) <= 'Z';
  s_axi_rdata(36) <= 'Z';
  s_axi_rdata(37) <= 'Z';
  s_axi_rdata(38) <= 'Z';
  s_axi_rdata(39) <= 'Z';
  s_axi_rdata(40) <= 'Z';
  s_axi_rdata(41) <= 'Z';
  s_axi_rdata(42) <= 'Z';
  s_axi_rdata(43) <= 'Z';
  s_axi_rdata(44) <= 'Z';
  s_axi_rdata(45) <= 'Z';
  s_axi_rdata(46) <= 'Z';
  s_axi_rdata(47) <= 'Z';
  s_axi_rdata(48) <= 'Z';
  s_axi_rdata(49) <= 'Z';
  s_axi_rdata(50) <= 'Z';
  s_axi_rdata(51) <= 'Z';
  s_axi_rdata(52) <= 'Z';
  s_axi_rdata(53) <= 'Z';
  s_axi_rdata(54) <= 'Z';
  s_axi_rdata(55) <= 'Z';
  s_axi_rdata(56) <= 'Z';
  s_axi_rdata(57) <= 'Z';
  s_axi_rdata(58) <= 'Z';
  s_axi_rdata(59) <= 'Z';
  s_axi_rdata(60) <= 'Z';
  s_axi_rdata(61) <= 'Z';
  s_axi_rdata(62) <= 'Z';
  s_axi_rdata(63) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
  s_axi_ruser(0) <= 'Z';
  wr_data_count(0) <= 'Z';
  wr_data_count(1) <= 'Z';
  wr_data_count(2) <= 'Z';
  wr_data_count(3) <= 'Z';
  wr_data_count(4) <= 'Z';
inst_fifo_gen: entity work.fifo_fifo_generator_v13_2_5_synth
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => NLW_inst_fifo_gen_full_UNCONNECTED,
      lopt => lopt,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    lopt : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo : entity is "fifo,fifo_generator_v13_2_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo : entity is "fifo_generator_v13_2_5,Vivado 2019.2";
end fifo;

architecture STRUCTURE of fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_backup_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_backup_marker_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_int_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_aclk_en_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_en_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_b_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_r_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_w_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axis_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_assert_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_negate_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_assert_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_negate_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 14;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 core_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
  full <= 'Z';
U0: entity work.fifo_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => NLW_U0_axi_ar_injectdbiterr_UNCONNECTED,
      axi_ar_injectsbiterr => NLW_U0_axi_ar_injectsbiterr_UNCONNECTED,
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => NLW_U0_axi_aw_injectdbiterr_UNCONNECTED,
      axi_aw_injectsbiterr => NLW_U0_axi_aw_injectsbiterr_UNCONNECTED,
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => NLW_U0_axi_b_injectdbiterr_UNCONNECTED,
      axi_b_injectsbiterr => NLW_U0_axi_b_injectsbiterr_UNCONNECTED,
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => NLW_U0_axi_b_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => NLW_U0_axi_r_injectdbiterr_UNCONNECTED,
      axi_r_injectsbiterr => NLW_U0_axi_r_injectsbiterr_UNCONNECTED,
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => NLW_U0_axi_r_prog_full_thresh_UNCONNECTED(9 downto 0),
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => NLW_U0_axi_w_injectdbiterr_UNCONNECTED,
      axi_w_injectsbiterr => NLW_U0_axi_w_injectsbiterr_UNCONNECTED,
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => NLW_U0_axi_w_prog_full_thresh_UNCONNECTED(9 downto 0),
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => NLW_U0_axis_injectdbiterr_UNCONNECTED,
      axis_injectsbiterr => NLW_U0_axis_injectsbiterr_UNCONNECTED,
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => NLW_U0_axis_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => NLW_U0_axis_prog_full_thresh_UNCONNECTED(9 downto 0),
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => NLW_U0_backup_UNCONNECTED,
      backup_marker => NLW_U0_backup_marker_UNCONNECTED,
      clk => clk,
      data_count(4 downto 0) => NLW_U0_data_count_UNCONNECTED(4 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => NLW_U0_full_UNCONNECTED,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      int_clk => NLW_U0_int_clk_UNCONNECTED,
      lopt => lopt,
      m_aclk => NLW_U0_m_aclk_UNCONNECTED,
      m_aclk_en => NLW_U0_m_aclk_en_UNCONNECTED,
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => NLW_U0_m_axi_arready_UNCONNECTED,
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => NLW_U0_m_axi_awready_UNCONNECTED,
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => NLW_U0_m_axi_bid_UNCONNECTED(0),
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => NLW_U0_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_buser(0) => NLW_U0_m_axi_buser_UNCONNECTED(0),
      m_axi_bvalid => NLW_U0_m_axi_bvalid_UNCONNECTED,
      m_axi_rdata(63 downto 0) => NLW_U0_m_axi_rdata_UNCONNECTED(63 downto 0),
      m_axi_rid(0) => NLW_U0_m_axi_rid_UNCONNECTED(0),
      m_axi_rlast => NLW_U0_m_axi_rlast_UNCONNECTED,
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => NLW_U0_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_ruser(0) => NLW_U0_m_axi_ruser_UNCONNECTED(0),
      m_axi_rvalid => NLW_U0_m_axi_rvalid_UNCONNECTED,
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => NLW_U0_m_axi_wready_UNCONNECTED,
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => NLW_U0_m_axis_tready_UNCONNECTED,
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => NLW_U0_prog_empty_thresh_UNCONNECTED(3 downto 0),
      prog_empty_thresh_assert(3 downto 0) => NLW_U0_prog_empty_thresh_assert_UNCONNECTED(3 downto 0),
      prog_empty_thresh_negate(3 downto 0) => NLW_U0_prog_empty_thresh_negate_UNCONNECTED(3 downto 0),
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => NLW_U0_prog_full_thresh_UNCONNECTED(3 downto 0),
      prog_full_thresh_assert(3 downto 0) => NLW_U0_prog_full_thresh_assert_UNCONNECTED(3 downto 0),
      prog_full_thresh_negate(3 downto 0) => NLW_U0_prog_full_thresh_negate_UNCONNECTED(3 downto 0),
      rd_clk => NLW_U0_rd_clk_UNCONNECTED,
      rd_data_count(4 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => rd_en,
      rd_rst => NLW_U0_rd_rst_UNCONNECTED,
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => NLW_U0_rst_UNCONNECTED,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aclk_en => NLW_U0_s_aclk_en_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arcache(3 downto 0) => NLW_U0_s_axi_arcache_UNCONNECTED(3 downto 0),
      s_axi_arid(0) => NLW_U0_s_axi_arid_UNCONNECTED(0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arlock(0) => NLW_U0_s_axi_arlock_UNCONNECTED(0),
      s_axi_arprot(2 downto 0) => NLW_U0_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arqos(3 downto 0) => NLW_U0_s_axi_arqos_UNCONNECTED(3 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => NLW_U0_s_axi_arregion_UNCONNECTED(3 downto 0),
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_aruser(0) => NLW_U0_s_axi_aruser_UNCONNECTED(0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awcache(3 downto 0) => NLW_U0_s_axi_awcache_UNCONNECTED(3 downto 0),
      s_axi_awid(0) => NLW_U0_s_axi_awid_UNCONNECTED(0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awlock(0) => NLW_U0_s_axi_awlock_UNCONNECTED(0),
      s_axi_awprot(2 downto 0) => NLW_U0_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awqos(3 downto 0) => NLW_U0_s_axi_awqos_UNCONNECTED(3 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => NLW_U0_s_axi_awregion_UNCONNECTED(3 downto 0),
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awuser(0) => NLW_U0_s_axi_awuser_UNCONNECTED(0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => NLW_U0_s_axi_wdata_UNCONNECTED(63 downto 0),
      s_axi_wid(0) => NLW_U0_s_axi_wid_UNCONNECTED(0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => NLW_U0_s_axi_wstrb_UNCONNECTED(7 downto 0),
      s_axi_wuser(0) => NLW_U0_s_axi_wuser_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      s_axis_tdata(7 downto 0) => NLW_U0_s_axis_tdata_UNCONNECTED(7 downto 0),
      s_axis_tdest(0) => NLW_U0_s_axis_tdest_UNCONNECTED(0),
      s_axis_tid(0) => NLW_U0_s_axis_tid_UNCONNECTED(0),
      s_axis_tkeep(0) => NLW_U0_s_axis_tkeep_UNCONNECTED(0),
      s_axis_tlast => NLW_U0_s_axis_tlast_UNCONNECTED,
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => NLW_U0_s_axis_tstrb_UNCONNECTED(0),
      s_axis_tuser(3 downto 0) => NLW_U0_s_axis_tuser_UNCONNECTED(3 downto 0),
      s_axis_tvalid => NLW_U0_s_axis_tvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      srst => srst,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => NLW_U0_wr_clk_UNCONNECTED,
      wr_data_count(4 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => wr_en,
      wr_rst => NLW_U0_wr_rst_UNCONNECTED,
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RS232top is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    ACK_FROM_RS : out STD_LOGIC;
    TX_RDY_FROM_RS : out STD_LOGIC;
    s_DMA_next_state110_out : out STD_LOGIC;
    RS232_TX_OBUF : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_out1 : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    RS232_RX_IBUF : in STD_LOGIC;
    Ack_in_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_IBUF : in STD_LOGIC;
    Send_comm : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end RS232top;

architecture STRUCTURE of RS232top is
  signal Clk : STD_LOGIC;
  signal Code_out : STD_LOGIC;
  signal Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Fifo_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Fifo_write : STD_LOGIC;
  signal LineRD_in : STD_LOGIC;
  signal Start : STD_LOGIC;
  signal Valid_Out : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal NLW_Clock_generator_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Internal_memory_full_UNCONNECTED : STD_LOGIC;
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of Clock_generator : label is "c:/Users/Engenieer/Documents/LCSEL_git/LCSEL/RS232_DMA_RAM/RS232_DMA_RAM.srcs/sources_1/ip/Clk_gen/Clk_gen.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of Clock_generator : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of Clock_generator : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of Clock_generator : label is "TRUE";
  attribute IMPORTED_FROM of Internal_memory : label is "c:/Users/Engenieer/Documents/LCSEL_git/LCSEL/CLK_FIFO/CLK_FIFO.srcs/sources_1/ip/fifo/fifo.dcp";
  attribute IMPORTED_TYPE of Internal_memory : label is "CHECKPOINT";
  attribute IS_IMPORTED of Internal_memory : label is std.standard.true;
  attribute syn_black_box of Internal_memory : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of Internal_memory : label is "fifo_generator_v13_2_5,Vivado 2019.2";
begin
  empty <= \^empty\;
Ack_in_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Ack_in_reg_0,
      PRE => reset,
      Q => ACK_FROM_RS
    );
Clock_generator: entity work.Clk_gen
     port map (
      clk_in1 => clk_out1,
      clk_out1 => Clk,
      lopt => Reset_IBUF,
      reset => NLW_Clock_generator_reset_UNCONNECTED
    );
\Data_FF_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(0),
      Q => Data(0)
    );
\Data_FF_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(1),
      Q => Data(1)
    );
\Data_FF_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(2),
      Q => Data(2)
    );
\Data_FF_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(3),
      Q => Data(3)
    );
\Data_FF_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(4),
      Q => Data(4)
    );
\Data_FF_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(5),
      Q => Data(5)
    );
\Data_FF_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(6),
      Q => Data(6)
    );
\Data_FF_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      CLR => reset,
      D => D(7),
      Q => Data(7)
    );
\FSM_sequential_s_DMA_next_state_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^empty\,
      I1 => Send_comm,
      O => s_DMA_next_state110_out
    );
Internal_memory: entity work.fifo
     port map (
      clk => Clk,
      din(7 downto 0) => Fifo_in(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => \^empty\,
      full => NLW_Internal_memory_full_UNCONNECTED,
      lopt => Reset_IBUF,
      rd_en => rd_en,
      srst => reset,
      wr_en => Fifo_write
    );
LineRD_in_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => RS232_RX_IBUF,
      PRE => reset,
      Q => LineRD_in
    );
Receiver: entity work.RX_RS232
     port map (
      CLK => Clk,
      Code_out => Code_out,
      LineRD_in => LineRD_in,
      Reset_IBUF => Reset_IBUF,
      Valid_Out => Valid_Out,
      reset => reset,
      wr_en => Fifo_write
    );
Shift: entity work.ShiftRegister
     port map (
      CLK => Clk,
      Code_out => Code_out,
      Q(7 downto 0) => Fifo_in(7 downto 0),
      Valid_Out => Valid_Out,
      reset => reset
    );
StartTX_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => reset,
      D => E(0),
      Q => Start
    );
Transmitter: entity work.TX_RS232
     port map (
      Q(7 downto 0) => Data(7 downto 0),
      RS232_TX_OBUF => RS232_TX_OBUF,
      Reset_IBUF => Reset_IBUF,
      Start => Start,
      TX_RDY_FROM_RS => TX_RDY_FROM_RS,
      clk_out1 => Clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PICtop is
  port (
    Reset : in STD_LOGIC;
    Clk100MHZ : in STD_LOGIC;
    RS232_RX : in STD_LOGIC;
    RS232_TX : out STD_LOGIC;
    switches : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Temp : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Disp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    U_DMA_RQ : out STD_LOGIC;
    U_DMA_ACK : in STD_LOGIC;
    U_Send_command : in STD_LOGIC;
    U_READY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PICtop : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of PICtop : entity is "8152085";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of PICtop : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of PICtop : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of PICtop : entity is 0;
end PICtop;

architecture STRUCTURE of PICtop is
  signal ACK_FROM_RS : STD_LOGIC;
  signal Clk : STD_LOGIC;
  signal DMA_ACK : STD_LOGIC;
  signal DMA_ports_n_0 : STD_LOGIC;
  signal DMA_ports_n_278 : STD_LOGIC;
  signal DMA_ports_n_75 : STD_LOGIC;
  signal DMA_read_RX : STD_LOGIC;
  signal Data_in_TO_RS_TX_TX_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Data_out_FROM_RS_RX_RCVD_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Databus_OUT_from_DMA_aux : STD_LOGIC;
  signal Empty_RS_RX : STD_LOGIC;
  signal RAM_ADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RAM_PORTS_n_0 : STD_LOGIC;
  signal RAM_PORTS_n_10 : STD_LOGIC;
  signal RAM_PORTS_n_11 : STD_LOGIC;
  signal RAM_PORTS_n_12 : STD_LOGIC;
  signal RAM_PORTS_n_13 : STD_LOGIC;
  signal RAM_PORTS_n_15 : STD_LOGIC;
  signal RAM_PORTS_n_4 : STD_LOGIC;
  signal RAM_PORTS_n_5 : STD_LOGIC;
  signal RAM_PORTS_n_6 : STD_LOGIC;
  signal RAM_PORTS_n_7 : STD_LOGIC;
  signal RAM_PORTS_n_8 : STD_LOGIC;
  signal RAM_PORTS_n_9 : STD_LOGIC;
  signal RS232_RX_IBUF : STD_LOGIC;
  signal RS232_TX_OBUF : STD_LOGIC;
  signal Reset_IBUF : STD_LOGIC;
  signal Send_comm : STD_LOGIC;
  signal \TX_Data_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal TX_RDY_FROM_RS : STD_LOGIC;
  signal Temp_L : STD_LOGIC_VECTOR ( 4 to 4 );
  signal Temp_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal U_DMA_ACK_IBUF : STD_LOGIC;
  signal U_DMA_RQ_OBUF : STD_LOGIC;
  signal U_READY_OBUF : STD_LOGIC;
  signal U_Send_command_IBUF : STD_LOGIC;
  signal \contents_ram_reg[0]0\ : STD_LOGIC;
  signal \contents_ram_reg[1]0\ : STD_LOGIC;
  signal \contents_ram_reg[2]0\ : STD_LOGIC;
  signal \contents_ram_reg[3]0\ : STD_LOGIC;
  signal \contents_ram_reg[49]0\ : STD_LOGIC;
  signal \contents_ram_reg[4]0\ : STD_LOGIC;
  signal \contents_ram_reg[5]0\ : STD_LOGIC;
  signal \contents_ram_reg[6]0\ : STD_LOGIC;
  signal \contents_ram_reg[7]0\ : STD_LOGIC;
  signal databus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_DMA_RQ : STD_LOGIC;
  signal m_READY : STD_LOGIC;
  signal s_DMA_next_state110_out : STD_LOGIC;
  signal switches_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Clock_generator_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_DMA_ports_Reset_IBUF_UNCONNECTED : STD_LOGIC;
  signal \NLW_DMA_ports_switches[0]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DMA_ports_switches[0]_0_UNCONNECTED\ : STD_LOGIC;
  signal NLW_DMA_ports_RAM_ADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \NLW_DMA_ports_^reset_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_100_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_101_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_102_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_103_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_104_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_105_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_106_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_107_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_108_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_109_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_110_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_111_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_112_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_113_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_114_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_115_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_116_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_117_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_118_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_119_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_120_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_121_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_122_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_123_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_124_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_125_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_126_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_127_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_128_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_129_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_13_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_130_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_131_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_132_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_133_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_134_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_135_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_136_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_137_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_138_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_139_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_140_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_141_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_142_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_143_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_144_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_145_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_146_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_147_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_148_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_149_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_150_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_151_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_152_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_153_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_154_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_155_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_156_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_157_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_158_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_159_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_160_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_161_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_162_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_163_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_164_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_165_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_166_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_167_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_168_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_169_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_170_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_171_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_172_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_173_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_174_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_175_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_176_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_177_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_178_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_179_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_180_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_181_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_182_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_183_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_184_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_185_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_186_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_187_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_188_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_189_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_190_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_32_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_33_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_34_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_35_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_36_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_37_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_38_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_39_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_40_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_41_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_42_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_43_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_44_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_45_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_46_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_47_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_48_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_49_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_50_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_51_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_52_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_53_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_54_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_55_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_56_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_57_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_58_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_59_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_60_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_61_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_62_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_63_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_64_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_65_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_66_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_67_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_68_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_69_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_70_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_71_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_72_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_73_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_74_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_75_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_76_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_77_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_78_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_79_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_80_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_81_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_82_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_83_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_84_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_85_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_86_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_87_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_88_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_89_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_90_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_91_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_92_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_93_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_94_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_95_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_96_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_97_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_98_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_Reset_99_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_10_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_11_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_12_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_14_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_15_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_16_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_17_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_18_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_19_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_20_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_21_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_22_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_23_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_24_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_25_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_26_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_27_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_28_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_29_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_3_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_30_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_31_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_32_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_33_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_34_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_35_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_36_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_37_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_38_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_39_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_4_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_40_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_41_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_42_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_43_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_44_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_45_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_46_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_47_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_48_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_49_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_5_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_50_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_51_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_52_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_53_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_54_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_6_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_7_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_8_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DMA_ports_m_DMA_ACK_reg_9_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[49][3]_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RAM_PORTS_contents_ram_reg[49][3]_4_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RAM_PORTS_contents_ram_reg[49][3]_5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RAM_PORTS_switches_OBUF[7]_inst_i_12_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_RAM_PORTS_switches_OBUF[7]_inst_i_9_0_UNCONNECTED\ : STD_LOGIC;
  signal NLW_RAM_PORTS_RAM_ADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \NLW_RAM_PORTS_contents_ram_reg[100][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[101][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[102][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[103][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[104][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[105][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[106][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[107][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[108][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[109][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[10][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[110][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[111][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[112][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[113][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[114][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[115][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[116][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[117][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[118][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[119][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[11][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[120][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[121][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[122][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[123][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[124][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[125][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[126][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[127][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[128][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[129][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[12][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[130][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[131][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[132][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[133][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[134][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[135][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[136][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[137][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[138][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[139][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[13][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[140][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[141][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[142][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[143][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[144][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[145][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[146][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[147][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[148][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[149][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[14][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[150][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[151][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[152][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[153][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[154][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[155][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[156][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[157][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[158][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[159][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[15][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[160][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[161][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[162][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[163][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[164][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[165][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[166][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[167][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[168][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[169][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[16][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[170][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[171][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[172][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[173][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[174][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[175][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[176][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[177][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[178][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[179][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[17][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[180][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[181][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[182][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[183][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[184][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[185][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[186][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[187][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[188][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[189][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[18][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[190][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[191][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[192][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[193][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[194][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[195][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[196][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[197][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[198][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[199][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[19][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[200][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[201][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[202][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[203][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[204][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[205][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[206][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[207][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[208][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[209][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[20][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[210][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[211][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[212][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[213][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[214][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[215][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[216][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[217][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[218][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[219][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[21][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[220][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[221][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[222][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[223][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[224][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[225][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[226][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[227][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[228][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[229][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[22][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[230][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[231][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[232][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[233][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[234][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[235][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[236][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[237][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[238][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[239][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[23][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[240][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[241][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[242][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[243][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[244][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[245][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[246][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[247][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[248][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[249][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[24][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[250][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[251][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[252][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[253][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[254][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[255][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[25][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[26][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[27][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[28][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[29][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[30][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[31][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[32][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[33][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[34][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[35][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[36][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[37][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[38][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[39][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[40][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[41][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[42][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[43][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[44][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[45][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[46][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[47][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[48][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[50][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[51][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[52][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[53][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[54][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[55][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[56][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[57][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[58][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[59][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[60][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[61][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[62][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[63][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[64][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[65][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[66][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[67][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[68][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[69][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[70][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[71][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[72][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[73][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[74][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[75][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[76][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[77][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[78][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[79][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[80][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[81][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[82][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[83][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[84][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[85][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[86][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[87][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[88][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[89][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[8][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[90][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[91][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[92][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[93][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[94][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[95][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[96][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[97][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[98][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[99][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_RAM_PORTS_contents_ram_reg[9][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of Clock_generator : label is "c:/Users/Engenieer/Documents/LCSEL_git/LCSEL/RS232_DMA_RAM/RS232_DMA_RAM.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of Clock_generator : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of Clock_generator : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of Clock_generator : label is "TRUE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \TX_Data_reg[7]_i_7\ : label is "LD";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Temp_OBUF[0]_inst\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \Temp_OBUF[1]_inst\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \Temp_OBUF[3]_inst\ : label is "PROPCONST";
begin
Clock_generator: entity work.Clk_PIC_TOP
     port map (
      clk_in1 => Clk100MHZ,
      clk_out1 => Clk,
      lopt => Reset_IBUF,
      reset => NLW_Clock_generator_reset_UNCONNECTED
    );
DMA_ports: entity work.DMA
     port map (
      ACK_FROM_RS => ACK_FROM_RS,
      D(7 downto 0) => databus(7 downto 0),
      DMA_ACK => DMA_ACK,
      E(0) => DMA_ports_n_0,
      \FSM_sequential_s_DMA_current_state_reg[3]_0\ => DMA_ports_n_278,
      Q(7 downto 0) => Data_in_TO_RS_TX_TX_Data(7 downto 0),
      RAM_ADDR(7 downto 6) => RAM_ADDR(7 downto 6),
      RAM_ADDR(5 downto 4) => NLW_DMA_ports_RAM_ADDR_UNCONNECTED(5 downto 4),
      RAM_ADDR(3 downto 0) => RAM_ADDR(3 downto 0),
      \^reset\(0) => \NLW_DMA_ports_^reset_UNCONNECTED\(0),
      Reset_0(0) => NLW_DMA_ports_Reset_0_UNCONNECTED(0),
      Reset_1(0) => NLW_DMA_ports_Reset_1_UNCONNECTED(0),
      Reset_10(0) => NLW_DMA_ports_Reset_10_UNCONNECTED(0),
      Reset_100(0) => NLW_DMA_ports_Reset_100_UNCONNECTED(0),
      Reset_101(0) => NLW_DMA_ports_Reset_101_UNCONNECTED(0),
      Reset_102(0) => NLW_DMA_ports_Reset_102_UNCONNECTED(0),
      Reset_103(0) => NLW_DMA_ports_Reset_103_UNCONNECTED(0),
      Reset_104(0) => NLW_DMA_ports_Reset_104_UNCONNECTED(0),
      Reset_105(0) => NLW_DMA_ports_Reset_105_UNCONNECTED(0),
      Reset_106(0) => NLW_DMA_ports_Reset_106_UNCONNECTED(0),
      Reset_107(0) => NLW_DMA_ports_Reset_107_UNCONNECTED(0),
      Reset_108(0) => NLW_DMA_ports_Reset_108_UNCONNECTED(0),
      Reset_109(0) => NLW_DMA_ports_Reset_109_UNCONNECTED(0),
      Reset_11(0) => NLW_DMA_ports_Reset_11_UNCONNECTED(0),
      Reset_110(0) => NLW_DMA_ports_Reset_110_UNCONNECTED(0),
      Reset_111(0) => NLW_DMA_ports_Reset_111_UNCONNECTED(0),
      Reset_112(0) => NLW_DMA_ports_Reset_112_UNCONNECTED(0),
      Reset_113(0) => NLW_DMA_ports_Reset_113_UNCONNECTED(0),
      Reset_114(0) => NLW_DMA_ports_Reset_114_UNCONNECTED(0),
      Reset_115(0) => NLW_DMA_ports_Reset_115_UNCONNECTED(0),
      Reset_116(0) => NLW_DMA_ports_Reset_116_UNCONNECTED(0),
      Reset_117(0) => NLW_DMA_ports_Reset_117_UNCONNECTED(0),
      Reset_118(0) => NLW_DMA_ports_Reset_118_UNCONNECTED(0),
      Reset_119(0) => NLW_DMA_ports_Reset_119_UNCONNECTED(0),
      Reset_12(0) => NLW_DMA_ports_Reset_12_UNCONNECTED(0),
      Reset_120(0) => NLW_DMA_ports_Reset_120_UNCONNECTED(0),
      Reset_121(0) => NLW_DMA_ports_Reset_121_UNCONNECTED(0),
      Reset_122(0) => NLW_DMA_ports_Reset_122_UNCONNECTED(0),
      Reset_123(0) => NLW_DMA_ports_Reset_123_UNCONNECTED(0),
      Reset_124(0) => NLW_DMA_ports_Reset_124_UNCONNECTED(0),
      Reset_125(0) => NLW_DMA_ports_Reset_125_UNCONNECTED(0),
      Reset_126(0) => NLW_DMA_ports_Reset_126_UNCONNECTED(0),
      Reset_127(0) => NLW_DMA_ports_Reset_127_UNCONNECTED(0),
      Reset_128(0) => NLW_DMA_ports_Reset_128_UNCONNECTED(0),
      Reset_129(0) => NLW_DMA_ports_Reset_129_UNCONNECTED(0),
      Reset_13(0) => NLW_DMA_ports_Reset_13_UNCONNECTED(0),
      Reset_130(0) => NLW_DMA_ports_Reset_130_UNCONNECTED(0),
      Reset_131(0) => NLW_DMA_ports_Reset_131_UNCONNECTED(0),
      Reset_132(0) => NLW_DMA_ports_Reset_132_UNCONNECTED(0),
      Reset_133(0) => NLW_DMA_ports_Reset_133_UNCONNECTED(0),
      Reset_134(0) => NLW_DMA_ports_Reset_134_UNCONNECTED(0),
      Reset_135(0) => NLW_DMA_ports_Reset_135_UNCONNECTED(0),
      Reset_136(0) => NLW_DMA_ports_Reset_136_UNCONNECTED(0),
      Reset_137(0) => NLW_DMA_ports_Reset_137_UNCONNECTED(0),
      Reset_138(0) => NLW_DMA_ports_Reset_138_UNCONNECTED(0),
      Reset_139(0) => NLW_DMA_ports_Reset_139_UNCONNECTED(0),
      Reset_14(0) => NLW_DMA_ports_Reset_14_UNCONNECTED(0),
      Reset_140(0) => NLW_DMA_ports_Reset_140_UNCONNECTED(0),
      Reset_141(0) => NLW_DMA_ports_Reset_141_UNCONNECTED(0),
      Reset_142(0) => NLW_DMA_ports_Reset_142_UNCONNECTED(0),
      Reset_143(0) => NLW_DMA_ports_Reset_143_UNCONNECTED(0),
      Reset_144(0) => NLW_DMA_ports_Reset_144_UNCONNECTED(0),
      Reset_145(0) => NLW_DMA_ports_Reset_145_UNCONNECTED(0),
      Reset_146(0) => NLW_DMA_ports_Reset_146_UNCONNECTED(0),
      Reset_147(0) => NLW_DMA_ports_Reset_147_UNCONNECTED(0),
      Reset_148(0) => NLW_DMA_ports_Reset_148_UNCONNECTED(0),
      Reset_149(0) => NLW_DMA_ports_Reset_149_UNCONNECTED(0),
      Reset_15(0) => NLW_DMA_ports_Reset_15_UNCONNECTED(0),
      Reset_150(0) => NLW_DMA_ports_Reset_150_UNCONNECTED(0),
      Reset_151(0) => NLW_DMA_ports_Reset_151_UNCONNECTED(0),
      Reset_152(0) => NLW_DMA_ports_Reset_152_UNCONNECTED(0),
      Reset_153(0) => NLW_DMA_ports_Reset_153_UNCONNECTED(0),
      Reset_154(0) => NLW_DMA_ports_Reset_154_UNCONNECTED(0),
      Reset_155(0) => NLW_DMA_ports_Reset_155_UNCONNECTED(0),
      Reset_156(0) => NLW_DMA_ports_Reset_156_UNCONNECTED(0),
      Reset_157(0) => NLW_DMA_ports_Reset_157_UNCONNECTED(0),
      Reset_158(0) => NLW_DMA_ports_Reset_158_UNCONNECTED(0),
      Reset_159(0) => NLW_DMA_ports_Reset_159_UNCONNECTED(0),
      Reset_16(0) => NLW_DMA_ports_Reset_16_UNCONNECTED(0),
      Reset_160(0) => NLW_DMA_ports_Reset_160_UNCONNECTED(0),
      Reset_161(0) => NLW_DMA_ports_Reset_161_UNCONNECTED(0),
      Reset_162(0) => NLW_DMA_ports_Reset_162_UNCONNECTED(0),
      Reset_163(0) => NLW_DMA_ports_Reset_163_UNCONNECTED(0),
      Reset_164(0) => NLW_DMA_ports_Reset_164_UNCONNECTED(0),
      Reset_165(0) => NLW_DMA_ports_Reset_165_UNCONNECTED(0),
      Reset_166(0) => NLW_DMA_ports_Reset_166_UNCONNECTED(0),
      Reset_167(0) => NLW_DMA_ports_Reset_167_UNCONNECTED(0),
      Reset_168(0) => NLW_DMA_ports_Reset_168_UNCONNECTED(0),
      Reset_169(0) => NLW_DMA_ports_Reset_169_UNCONNECTED(0),
      Reset_17(0) => NLW_DMA_ports_Reset_17_UNCONNECTED(0),
      Reset_170(0) => NLW_DMA_ports_Reset_170_UNCONNECTED(0),
      Reset_171(0) => NLW_DMA_ports_Reset_171_UNCONNECTED(0),
      Reset_172(0) => NLW_DMA_ports_Reset_172_UNCONNECTED(0),
      Reset_173(0) => NLW_DMA_ports_Reset_173_UNCONNECTED(0),
      Reset_174(0) => NLW_DMA_ports_Reset_174_UNCONNECTED(0),
      Reset_175(0) => NLW_DMA_ports_Reset_175_UNCONNECTED(0),
      Reset_176(0) => NLW_DMA_ports_Reset_176_UNCONNECTED(0),
      Reset_177(0) => NLW_DMA_ports_Reset_177_UNCONNECTED(0),
      Reset_178(0) => NLW_DMA_ports_Reset_178_UNCONNECTED(0),
      Reset_179(0) => NLW_DMA_ports_Reset_179_UNCONNECTED(0),
      Reset_18(0) => NLW_DMA_ports_Reset_18_UNCONNECTED(0),
      Reset_180(0) => NLW_DMA_ports_Reset_180_UNCONNECTED(0),
      Reset_181(0) => NLW_DMA_ports_Reset_181_UNCONNECTED(0),
      Reset_182(0) => NLW_DMA_ports_Reset_182_UNCONNECTED(0),
      Reset_183(0) => NLW_DMA_ports_Reset_183_UNCONNECTED(0),
      Reset_184(0) => NLW_DMA_ports_Reset_184_UNCONNECTED(0),
      Reset_185(0) => NLW_DMA_ports_Reset_185_UNCONNECTED(0),
      Reset_186(0) => NLW_DMA_ports_Reset_186_UNCONNECTED(0),
      Reset_187(0) => NLW_DMA_ports_Reset_187_UNCONNECTED(0),
      Reset_188(0) => NLW_DMA_ports_Reset_188_UNCONNECTED(0),
      Reset_189(0) => NLW_DMA_ports_Reset_189_UNCONNECTED(0),
      Reset_19(0) => NLW_DMA_ports_Reset_19_UNCONNECTED(0),
      Reset_190(0) => NLW_DMA_ports_Reset_190_UNCONNECTED(0),
      Reset_2(0) => NLW_DMA_ports_Reset_2_UNCONNECTED(0),
      Reset_20(0) => NLW_DMA_ports_Reset_20_UNCONNECTED(0),
      Reset_21(0) => NLW_DMA_ports_Reset_21_UNCONNECTED(0),
      Reset_22(0) => NLW_DMA_ports_Reset_22_UNCONNECTED(0),
      Reset_23(0) => NLW_DMA_ports_Reset_23_UNCONNECTED(0),
      Reset_24(0) => NLW_DMA_ports_Reset_24_UNCONNECTED(0),
      Reset_25(0) => NLW_DMA_ports_Reset_25_UNCONNECTED(0),
      Reset_26(0) => NLW_DMA_ports_Reset_26_UNCONNECTED(0),
      Reset_27(0) => NLW_DMA_ports_Reset_27_UNCONNECTED(0),
      Reset_28(0) => NLW_DMA_ports_Reset_28_UNCONNECTED(0),
      Reset_29(0) => NLW_DMA_ports_Reset_29_UNCONNECTED(0),
      Reset_3(0) => NLW_DMA_ports_Reset_3_UNCONNECTED(0),
      Reset_30(0) => NLW_DMA_ports_Reset_30_UNCONNECTED(0),
      Reset_31(0) => NLW_DMA_ports_Reset_31_UNCONNECTED(0),
      Reset_32(0) => NLW_DMA_ports_Reset_32_UNCONNECTED(0),
      Reset_33(0) => NLW_DMA_ports_Reset_33_UNCONNECTED(0),
      Reset_34(0) => NLW_DMA_ports_Reset_34_UNCONNECTED(0),
      Reset_35(0) => NLW_DMA_ports_Reset_35_UNCONNECTED(0),
      Reset_36(0) => NLW_DMA_ports_Reset_36_UNCONNECTED(0),
      Reset_37(0) => NLW_DMA_ports_Reset_37_UNCONNECTED(0),
      Reset_38(0) => NLW_DMA_ports_Reset_38_UNCONNECTED(0),
      Reset_39(0) => NLW_DMA_ports_Reset_39_UNCONNECTED(0),
      Reset_4(0) => NLW_DMA_ports_Reset_4_UNCONNECTED(0),
      Reset_40(0) => NLW_DMA_ports_Reset_40_UNCONNECTED(0),
      Reset_41(0) => NLW_DMA_ports_Reset_41_UNCONNECTED(0),
      Reset_42(0) => NLW_DMA_ports_Reset_42_UNCONNECTED(0),
      Reset_43(0) => NLW_DMA_ports_Reset_43_UNCONNECTED(0),
      Reset_44(0) => NLW_DMA_ports_Reset_44_UNCONNECTED(0),
      Reset_45(0) => NLW_DMA_ports_Reset_45_UNCONNECTED(0),
      Reset_46(0) => NLW_DMA_ports_Reset_46_UNCONNECTED(0),
      Reset_47(0) => NLW_DMA_ports_Reset_47_UNCONNECTED(0),
      Reset_48(0) => NLW_DMA_ports_Reset_48_UNCONNECTED(0),
      Reset_49(0) => NLW_DMA_ports_Reset_49_UNCONNECTED(0),
      Reset_5(0) => NLW_DMA_ports_Reset_5_UNCONNECTED(0),
      Reset_50(0) => NLW_DMA_ports_Reset_50_UNCONNECTED(0),
      Reset_51(0) => NLW_DMA_ports_Reset_51_UNCONNECTED(0),
      Reset_52(0) => NLW_DMA_ports_Reset_52_UNCONNECTED(0),
      Reset_53(0) => NLW_DMA_ports_Reset_53_UNCONNECTED(0),
      Reset_54(0) => NLW_DMA_ports_Reset_54_UNCONNECTED(0),
      Reset_55(0) => NLW_DMA_ports_Reset_55_UNCONNECTED(0),
      Reset_56(0) => NLW_DMA_ports_Reset_56_UNCONNECTED(0),
      Reset_57(0) => NLW_DMA_ports_Reset_57_UNCONNECTED(0),
      Reset_58(0) => NLW_DMA_ports_Reset_58_UNCONNECTED(0),
      Reset_59(0) => NLW_DMA_ports_Reset_59_UNCONNECTED(0),
      Reset_6(0) => NLW_DMA_ports_Reset_6_UNCONNECTED(0),
      Reset_60(0) => NLW_DMA_ports_Reset_60_UNCONNECTED(0),
      Reset_61(0) => NLW_DMA_ports_Reset_61_UNCONNECTED(0),
      Reset_62(0) => NLW_DMA_ports_Reset_62_UNCONNECTED(0),
      Reset_63(0) => NLW_DMA_ports_Reset_63_UNCONNECTED(0),
      Reset_64(0) => NLW_DMA_ports_Reset_64_UNCONNECTED(0),
      Reset_65(0) => NLW_DMA_ports_Reset_65_UNCONNECTED(0),
      Reset_66(0) => NLW_DMA_ports_Reset_66_UNCONNECTED(0),
      Reset_67(0) => NLW_DMA_ports_Reset_67_UNCONNECTED(0),
      Reset_68(0) => NLW_DMA_ports_Reset_68_UNCONNECTED(0),
      Reset_69(0) => NLW_DMA_ports_Reset_69_UNCONNECTED(0),
      Reset_7(0) => NLW_DMA_ports_Reset_7_UNCONNECTED(0),
      Reset_70(0) => NLW_DMA_ports_Reset_70_UNCONNECTED(0),
      Reset_71(0) => NLW_DMA_ports_Reset_71_UNCONNECTED(0),
      Reset_72(0) => NLW_DMA_ports_Reset_72_UNCONNECTED(0),
      Reset_73(0) => NLW_DMA_ports_Reset_73_UNCONNECTED(0),
      Reset_74(0) => NLW_DMA_ports_Reset_74_UNCONNECTED(0),
      Reset_75(0) => NLW_DMA_ports_Reset_75_UNCONNECTED(0),
      Reset_76(0) => NLW_DMA_ports_Reset_76_UNCONNECTED(0),
      Reset_77(0) => NLW_DMA_ports_Reset_77_UNCONNECTED(0),
      Reset_78(0) => NLW_DMA_ports_Reset_78_UNCONNECTED(0),
      Reset_79(0) => NLW_DMA_ports_Reset_79_UNCONNECTED(0),
      Reset_8(0) => NLW_DMA_ports_Reset_8_UNCONNECTED(0),
      Reset_80(0) => NLW_DMA_ports_Reset_80_UNCONNECTED(0),
      Reset_81(0) => NLW_DMA_ports_Reset_81_UNCONNECTED(0),
      Reset_82(0) => NLW_DMA_ports_Reset_82_UNCONNECTED(0),
      Reset_83(0) => NLW_DMA_ports_Reset_83_UNCONNECTED(0),
      Reset_84(0) => NLW_DMA_ports_Reset_84_UNCONNECTED(0),
      Reset_85(0) => NLW_DMA_ports_Reset_85_UNCONNECTED(0),
      Reset_86(0) => NLW_DMA_ports_Reset_86_UNCONNECTED(0),
      Reset_87(0) => NLW_DMA_ports_Reset_87_UNCONNECTED(0),
      Reset_88(0) => NLW_DMA_ports_Reset_88_UNCONNECTED(0),
      Reset_89(0) => NLW_DMA_ports_Reset_89_UNCONNECTED(0),
      Reset_9(0) => NLW_DMA_ports_Reset_9_UNCONNECTED(0),
      Reset_90(0) => NLW_DMA_ports_Reset_90_UNCONNECTED(0),
      Reset_91(0) => NLW_DMA_ports_Reset_91_UNCONNECTED(0),
      Reset_92(0) => NLW_DMA_ports_Reset_92_UNCONNECTED(0),
      Reset_93(0) => NLW_DMA_ports_Reset_93_UNCONNECTED(0),
      Reset_94(0) => NLW_DMA_ports_Reset_94_UNCONNECTED(0),
      Reset_95(0) => NLW_DMA_ports_Reset_95_UNCONNECTED(0),
      Reset_96(0) => NLW_DMA_ports_Reset_96_UNCONNECTED(0),
      Reset_97(0) => NLW_DMA_ports_Reset_97_UNCONNECTED(0),
      Reset_98(0) => NLW_DMA_ports_Reset_98_UNCONNECTED(0),
      Reset_99(0) => NLW_DMA_ports_Reset_99_UNCONNECTED(0),
      Reset_IBUF => NLW_DMA_ports_Reset_IBUF_UNCONNECTED,
      Send_comm => Send_comm,
      TX_RDY_FROM_RS => TX_RDY_FROM_RS,
      clk_out1 => Clk,
      \contents_ram_reg[49][0]\ => RAM_PORTS_n_0,
      \contents_ram_reg[49][0]_0\ => \TX_Data_reg[7]_i_7_n_0\,
      \contents_ram_reg[49][1]\ => RAM_PORTS_n_4,
      \contents_ram_reg[49][2]\ => RAM_PORTS_n_5,
      \contents_ram_reg[49][3]\ => RAM_PORTS_n_6,
      \contents_ram_reg[49][4]\ => RAM_PORTS_n_7,
      \contents_ram_reg[49][5]\ => RAM_PORTS_n_8,
      \contents_ram_reg[49][6]\ => RAM_PORTS_n_9,
      \contents_ram_reg[49][7]\ => RAM_PORTS_n_10,
      dout(7 downto 0) => Data_out_FROM_RS_RX_RCVD_Data(7 downto 0),
      empty => Empty_RS_RX,
      m_DMA_ACK_reg(0) => NLW_DMA_ports_m_DMA_ACK_reg_UNCONNECTED(0),
      m_DMA_ACK_reg_0(0) => NLW_DMA_ports_m_DMA_ACK_reg_0_UNCONNECTED(0),
      m_DMA_ACK_reg_1(0) => NLW_DMA_ports_m_DMA_ACK_reg_1_UNCONNECTED(0),
      m_DMA_ACK_reg_10(0) => NLW_DMA_ports_m_DMA_ACK_reg_10_UNCONNECTED(0),
      m_DMA_ACK_reg_11(0) => NLW_DMA_ports_m_DMA_ACK_reg_11_UNCONNECTED(0),
      m_DMA_ACK_reg_12(0) => NLW_DMA_ports_m_DMA_ACK_reg_12_UNCONNECTED(0),
      m_DMA_ACK_reg_13(0) => \contents_ram_reg[49]0\,
      m_DMA_ACK_reg_14(0) => NLW_DMA_ports_m_DMA_ACK_reg_14_UNCONNECTED(0),
      m_DMA_ACK_reg_15(0) => NLW_DMA_ports_m_DMA_ACK_reg_15_UNCONNECTED(0),
      m_DMA_ACK_reg_16(0) => NLW_DMA_ports_m_DMA_ACK_reg_16_UNCONNECTED(0),
      m_DMA_ACK_reg_17(0) => NLW_DMA_ports_m_DMA_ACK_reg_17_UNCONNECTED(0),
      m_DMA_ACK_reg_18(0) => NLW_DMA_ports_m_DMA_ACK_reg_18_UNCONNECTED(0),
      m_DMA_ACK_reg_19(0) => NLW_DMA_ports_m_DMA_ACK_reg_19_UNCONNECTED(0),
      m_DMA_ACK_reg_2(0) => NLW_DMA_ports_m_DMA_ACK_reg_2_UNCONNECTED(0),
      m_DMA_ACK_reg_20(0) => NLW_DMA_ports_m_DMA_ACK_reg_20_UNCONNECTED(0),
      m_DMA_ACK_reg_21(0) => NLW_DMA_ports_m_DMA_ACK_reg_21_UNCONNECTED(0),
      m_DMA_ACK_reg_22(0) => NLW_DMA_ports_m_DMA_ACK_reg_22_UNCONNECTED(0),
      m_DMA_ACK_reg_23(0) => NLW_DMA_ports_m_DMA_ACK_reg_23_UNCONNECTED(0),
      m_DMA_ACK_reg_24(0) => NLW_DMA_ports_m_DMA_ACK_reg_24_UNCONNECTED(0),
      m_DMA_ACK_reg_25(0) => NLW_DMA_ports_m_DMA_ACK_reg_25_UNCONNECTED(0),
      m_DMA_ACK_reg_26(0) => NLW_DMA_ports_m_DMA_ACK_reg_26_UNCONNECTED(0),
      m_DMA_ACK_reg_27(0) => NLW_DMA_ports_m_DMA_ACK_reg_27_UNCONNECTED(0),
      m_DMA_ACK_reg_28(0) => NLW_DMA_ports_m_DMA_ACK_reg_28_UNCONNECTED(0),
      m_DMA_ACK_reg_29(0) => NLW_DMA_ports_m_DMA_ACK_reg_29_UNCONNECTED(0),
      m_DMA_ACK_reg_3(0) => NLW_DMA_ports_m_DMA_ACK_reg_3_UNCONNECTED(0),
      m_DMA_ACK_reg_30(0) => NLW_DMA_ports_m_DMA_ACK_reg_30_UNCONNECTED(0),
      m_DMA_ACK_reg_31(0) => NLW_DMA_ports_m_DMA_ACK_reg_31_UNCONNECTED(0),
      m_DMA_ACK_reg_32(0) => NLW_DMA_ports_m_DMA_ACK_reg_32_UNCONNECTED(0),
      m_DMA_ACK_reg_33(0) => NLW_DMA_ports_m_DMA_ACK_reg_33_UNCONNECTED(0),
      m_DMA_ACK_reg_34(0) => NLW_DMA_ports_m_DMA_ACK_reg_34_UNCONNECTED(0),
      m_DMA_ACK_reg_35(0) => NLW_DMA_ports_m_DMA_ACK_reg_35_UNCONNECTED(0),
      m_DMA_ACK_reg_36(0) => NLW_DMA_ports_m_DMA_ACK_reg_36_UNCONNECTED(0),
      m_DMA_ACK_reg_37(0) => NLW_DMA_ports_m_DMA_ACK_reg_37_UNCONNECTED(0),
      m_DMA_ACK_reg_38(0) => NLW_DMA_ports_m_DMA_ACK_reg_38_UNCONNECTED(0),
      m_DMA_ACK_reg_39(0) => NLW_DMA_ports_m_DMA_ACK_reg_39_UNCONNECTED(0),
      m_DMA_ACK_reg_4(0) => NLW_DMA_ports_m_DMA_ACK_reg_4_UNCONNECTED(0),
      m_DMA_ACK_reg_40(0) => NLW_DMA_ports_m_DMA_ACK_reg_40_UNCONNECTED(0),
      m_DMA_ACK_reg_41(0) => NLW_DMA_ports_m_DMA_ACK_reg_41_UNCONNECTED(0),
      m_DMA_ACK_reg_42(0) => NLW_DMA_ports_m_DMA_ACK_reg_42_UNCONNECTED(0),
      m_DMA_ACK_reg_43(0) => NLW_DMA_ports_m_DMA_ACK_reg_43_UNCONNECTED(0),
      m_DMA_ACK_reg_44(0) => NLW_DMA_ports_m_DMA_ACK_reg_44_UNCONNECTED(0),
      m_DMA_ACK_reg_45(0) => NLW_DMA_ports_m_DMA_ACK_reg_45_UNCONNECTED(0),
      m_DMA_ACK_reg_46(0) => NLW_DMA_ports_m_DMA_ACK_reg_46_UNCONNECTED(0),
      m_DMA_ACK_reg_47(0) => NLW_DMA_ports_m_DMA_ACK_reg_47_UNCONNECTED(0),
      m_DMA_ACK_reg_48(0) => NLW_DMA_ports_m_DMA_ACK_reg_48_UNCONNECTED(0),
      m_DMA_ACK_reg_49(0) => NLW_DMA_ports_m_DMA_ACK_reg_49_UNCONNECTED(0),
      m_DMA_ACK_reg_5(0) => NLW_DMA_ports_m_DMA_ACK_reg_5_UNCONNECTED(0),
      m_DMA_ACK_reg_50(0) => NLW_DMA_ports_m_DMA_ACK_reg_50_UNCONNECTED(0),
      m_DMA_ACK_reg_51(0) => NLW_DMA_ports_m_DMA_ACK_reg_51_UNCONNECTED(0),
      m_DMA_ACK_reg_52(0) => NLW_DMA_ports_m_DMA_ACK_reg_52_UNCONNECTED(0),
      m_DMA_ACK_reg_53(0) => NLW_DMA_ports_m_DMA_ACK_reg_53_UNCONNECTED(0),
      m_DMA_ACK_reg_54(0) => NLW_DMA_ports_m_DMA_ACK_reg_54_UNCONNECTED(0),
      m_DMA_ACK_reg_55(0) => \contents_ram_reg[7]0\,
      m_DMA_ACK_reg_56(0) => \contents_ram_reg[6]0\,
      m_DMA_ACK_reg_57(0) => \contents_ram_reg[5]0\,
      m_DMA_ACK_reg_58(0) => \contents_ram_reg[4]0\,
      m_DMA_ACK_reg_59(0) => \contents_ram_reg[3]0\,
      m_DMA_ACK_reg_6(0) => NLW_DMA_ports_m_DMA_ACK_reg_6_UNCONNECTED(0),
      m_DMA_ACK_reg_60(0) => \contents_ram_reg[2]0\,
      m_DMA_ACK_reg_61(0) => \contents_ram_reg[1]0\,
      m_DMA_ACK_reg_62(0) => \contents_ram_reg[0]0\,
      m_DMA_ACK_reg_63 => DMA_ports_n_75,
      m_DMA_ACK_reg_64(0) => Databus_OUT_from_DMA_aux,
      m_DMA_ACK_reg_7(0) => NLW_DMA_ports_m_DMA_ACK_reg_7_UNCONNECTED(0),
      m_DMA_ACK_reg_8(0) => NLW_DMA_ports_m_DMA_ACK_reg_8_UNCONNECTED(0),
      m_DMA_ACK_reg_9(0) => NLW_DMA_ports_m_DMA_ACK_reg_9_UNCONNECTED(0),
      m_DMA_RQ => m_DMA_RQ,
      m_READY => m_READY,
      rd_en => DMA_read_RX,
      reset => RAM_PORTS_n_11,
      s_DMA_next_state110_out => s_DMA_next_state110_out,
      \switches[0]\ => \NLW_DMA_ports_switches[0]_UNCONNECTED\,
      \switches[0]_0\ => \NLW_DMA_ports_switches[0]_0_UNCONNECTED\,
      switches_OBUF(7 downto 0) => switches_OBUF(7 downto 0)
    );
\Disp_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Disp(0),
      T => '1'
    );
\Disp_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Disp(1),
      T => '1'
    );
RAM_PORTS: entity work.ram
     port map (
      D(0) => Temp_L(4),
      E(0) => \contents_ram_reg[49]0\,
      RAM_ADDR(7 downto 6) => RAM_ADDR(7 downto 6),
      RAM_ADDR(5 downto 4) => NLW_RAM_PORTS_RAM_ADDR_UNCONNECTED(5 downto 4),
      RAM_ADDR(3 downto 0) => RAM_ADDR(3 downto 0),
      Reset_IBUF => Reset_IBUF,
      \TX_Data_reg[1]_i_6_0\ => RAM_PORTS_n_4,
      \TX_Data_reg[2]_i_6_0\ => RAM_PORTS_n_5,
      \TX_Data_reg[3]_i_6_0\ => RAM_PORTS_n_6,
      \TX_Data_reg[4]_i_6_0\ => RAM_PORTS_n_7,
      \TX_Data_reg[5]_i_6_0\ => RAM_PORTS_n_8,
      \TX_Data_reg[6]_i_6_0\ => RAM_PORTS_n_9,
      \TX_Data_reg[7]_i_9_0\ => RAM_PORTS_n_10,
      clk_out1 => Clk,
      \contents_ram_reg[0][7]_0\(0) => \contents_ram_reg[0]0\,
      \contents_ram_reg[100][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[100][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[101][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[101][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[102][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[102][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[103][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[103][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[104][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[104][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[105][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[105][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[106][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[106][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[107][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[107][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[108][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[108][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[109][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[109][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[10][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[10][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[110][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[110][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[111][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[111][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[112][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[112][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[113][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[113][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[114][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[114][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[115][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[115][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[116][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[116][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[117][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[117][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[118][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[118][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[119][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[119][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[11][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[11][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[120][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[120][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[121][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[121][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[122][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[122][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[123][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[123][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[124][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[124][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[125][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[125][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[126][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[126][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[127][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[127][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[128][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[128][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[129][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[129][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[12][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[12][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[130][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[130][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[131][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[131][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[132][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[132][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[133][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[133][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[134][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[134][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[135][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[135][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[136][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[136][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[137][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[137][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[138][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[138][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[139][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[139][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[13][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[13][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[140][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[140][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[141][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[141][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[142][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[142][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[143][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[143][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[144][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[144][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[145][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[145][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[146][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[146][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[147][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[147][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[148][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[148][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[149][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[149][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[14][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[14][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[150][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[150][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[151][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[151][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[152][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[152][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[153][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[153][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[154][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[154][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[155][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[155][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[156][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[156][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[157][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[157][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[158][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[158][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[159][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[159][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[15][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[15][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[160][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[160][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[161][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[161][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[162][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[162][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[163][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[163][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[164][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[164][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[165][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[165][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[166][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[166][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[167][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[167][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[168][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[168][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[169][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[169][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[16][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[16][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[170][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[170][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[171][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[171][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[172][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[172][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[173][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[173][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[174][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[174][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[175][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[175][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[176][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[176][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[177][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[177][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[178][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[178][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[179][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[179][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[17][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[17][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[180][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[180][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[181][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[181][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[182][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[182][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[183][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[183][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[184][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[184][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[185][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[185][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[186][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[186][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[187][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[187][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[188][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[188][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[189][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[189][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[18][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[18][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[190][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[190][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[191][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[191][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[192][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[192][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[193][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[193][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[194][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[194][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[195][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[195][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[196][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[196][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[197][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[197][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[198][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[198][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[199][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[199][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[19][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[19][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[1][7]_0\(0) => \contents_ram_reg[1]0\,
      \contents_ram_reg[200][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[200][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[201][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[201][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[202][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[202][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[203][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[203][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[204][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[204][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[205][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[205][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[206][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[206][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[207][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[207][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[208][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[208][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[209][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[209][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[20][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[20][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[210][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[210][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[211][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[211][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[212][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[212][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[213][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[213][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[214][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[214][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[215][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[215][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[216][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[216][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[217][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[217][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[218][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[218][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[219][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[219][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[21][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[21][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[220][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[220][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[221][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[221][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[222][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[222][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[223][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[223][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[224][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[224][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[225][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[225][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[226][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[226][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[227][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[227][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[228][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[228][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[229][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[229][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[22][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[22][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[230][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[230][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[231][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[231][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[232][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[232][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[233][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[233][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[234][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[234][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[235][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[235][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[236][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[236][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[237][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[237][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[238][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[238][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[239][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[239][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[23][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[23][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[240][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[240][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[241][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[241][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[242][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[242][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[243][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[243][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[244][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[244][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[245][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[245][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[246][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[246][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[247][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[247][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[248][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[248][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[249][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[249][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[24][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[24][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[250][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[250][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[251][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[251][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[252][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[252][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[253][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[253][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[254][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[254][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[255][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[255][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[25][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[25][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[26][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[26][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[27][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[27][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[28][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[28][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[29][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[29][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[2][7]_0\(0) => \contents_ram_reg[2]0\,
      \contents_ram_reg[30][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[30][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[31][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[31][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[32][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[32][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[33][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[33][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[34][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[34][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[35][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[35][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[36][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[36][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[37][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[37][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[38][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[38][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[39][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[39][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[3][7]_0\(0) => \contents_ram_reg[3]0\,
      \contents_ram_reg[40][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[40][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[41][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[41][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[42][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[42][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[43][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[43][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[44][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[44][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[45][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[45][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[46][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[46][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[47][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[47][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[48][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[48][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[49][3]_0\ => RAM_PORTS_n_12,
      \contents_ram_reg[49][3]_1\ => RAM_PORTS_n_13,
      \contents_ram_reg[49][3]_2\ => \NLW_RAM_PORTS_contents_ram_reg[49][3]_2_UNCONNECTED\,
      \contents_ram_reg[49][3]_3\ => RAM_PORTS_n_15,
      \contents_ram_reg[49][3]_4\ => \NLW_RAM_PORTS_contents_ram_reg[49][3]_4_UNCONNECTED\,
      \contents_ram_reg[49][3]_5\ => \NLW_RAM_PORTS_contents_ram_reg[49][3]_5_UNCONNECTED\,
      \contents_ram_reg[49][7]_0\(7 downto 0) => databus(7 downto 0),
      \contents_ram_reg[4][7]_0\(0) => \contents_ram_reg[4]0\,
      \contents_ram_reg[50][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[50][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[51][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[51][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[52][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[52][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[53][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[53][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[54][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[54][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[55][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[55][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[56][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[56][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[57][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[57][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[58][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[58][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[59][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[59][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[5][7]_0\(0) => \contents_ram_reg[5]0\,
      \contents_ram_reg[60][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[60][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[61][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[61][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[62][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[62][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[63][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[63][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[64][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[64][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[65][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[65][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[66][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[66][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[67][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[67][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[68][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[68][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[69][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[69][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[6][7]_0\(0) => \contents_ram_reg[6]0\,
      \contents_ram_reg[70][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[70][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[71][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[71][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[72][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[72][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[73][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[73][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[74][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[74][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[75][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[75][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[76][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[76][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[77][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[77][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[78][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[78][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[79][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[79][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[7][7]_0\(0) => \contents_ram_reg[7]0\,
      \contents_ram_reg[80][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[80][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[81][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[81][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[82][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[82][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[83][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[83][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[84][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[84][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[85][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[85][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[86][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[86][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[87][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[87][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[88][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[88][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[89][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[89][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[8][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[8][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[90][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[90][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[91][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[91][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[92][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[92][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[93][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[93][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[94][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[94][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[95][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[95][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[96][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[96][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[97][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[97][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[98][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[98][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[99][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[99][7]_0_UNCONNECTED\(0),
      \contents_ram_reg[9][7]_0\(0) => \NLW_RAM_PORTS_contents_ram_reg[9][7]_0_UNCONNECTED\(0),
      reset => RAM_PORTS_n_11,
      \switches_OBUF[7]_inst_i_12_0\ => \NLW_RAM_PORTS_switches_OBUF[7]_inst_i_12_0_UNCONNECTED\,
      \switches_OBUF[7]_inst_i_5_0\ => RAM_PORTS_n_0,
      \switches_OBUF[7]_inst_i_9_0\ => \NLW_RAM_PORTS_switches_OBUF[7]_inst_i_9_0_UNCONNECTED\
    );
RS232_PHY: entity work.RS232top
     port map (
      ACK_FROM_RS => ACK_FROM_RS,
      Ack_in_reg_0 => DMA_ports_n_278,
      D(7 downto 0) => Data_in_TO_RS_TX_TX_Data(7 downto 0),
      E(0) => DMA_ports_n_0,
      RS232_RX_IBUF => RS232_RX_IBUF,
      RS232_TX_OBUF => RS232_TX_OBUF,
      Reset_IBUF => Reset_IBUF,
      Send_comm => Send_comm,
      TX_RDY_FROM_RS => TX_RDY_FROM_RS,
      clk_out1 => Clk,
      dout(7 downto 0) => Data_out_FROM_RS_RX_RCVD_Data(7 downto 0),
      empty => Empty_RS_RX,
      rd_en => DMA_read_RX,
      reset => RAM_PORTS_n_11,
      s_DMA_next_state110_out => s_DMA_next_state110_out
    );
RS232_RX_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RS232_RX,
      O => RS232_RX_IBUF
    );
RS232_TX_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RS232_TX_OBUF,
      O => RS232_TX
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
\TX_Data_reg[7]_i_7\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => DMA_ports_n_75,
      G => Databus_OUT_from_DMA_aux,
      GE => '1',
      Q => \TX_Data_reg[7]_i_7_n_0\
    );
\Temp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Temp(0)
    );
\Temp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Temp(1)
    );
\Temp_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Temp_OBUF(2),
      O => Temp(2)
    );
\Temp_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Temp(3)
    );
\Temp_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Temp_OBUF(4),
      O => Temp(4)
    );
\Temp_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Temp_OBUF(5),
      O => Temp(5)
    );
\Temp_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Temp_OBUF(6),
      O => Temp(6)
    );
\Temp_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => RAM_PORTS_n_15,
      Q => Temp_OBUF(2),
      S => '0'
    );
\Temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => Temp_L(4),
      Q => Temp_OBUF(4),
      R => '0'
    );
\Temp_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => RAM_PORTS_n_13,
      Q => Temp_OBUF(5),
      S => '0'
    );
\Temp_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => RAM_PORTS_n_12,
      Q => Temp_OBUF(6),
      S => '0'
    );
U_DMA_ACK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => U_DMA_ACK,
      O => U_DMA_ACK_IBUF
    );
U_DMA_RQ_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => U_DMA_RQ_OBUF,
      O => U_DMA_RQ
    );
U_DMA_RQ_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => m_DMA_RQ,
      Q => U_DMA_RQ_OBUF,
      R => '0'
    );
U_READY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => U_READY_OBUF,
      O => U_READY
    );
U_READY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => m_READY,
      Q => U_READY_OBUF,
      R => '0'
    );
U_Send_command_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => U_Send_command,
      O => U_Send_command_IBUF
    );
m_DMA_ACK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => U_DMA_ACK_IBUF,
      Q => DMA_ACK,
      R => '0'
    );
m_Send_command_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Reset_IBUF,
      D => U_Send_command_IBUF,
      Q => Send_comm,
      R => '0'
    );
\switches_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(0),
      O => switches(0)
    );
\switches_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(1),
      O => switches(1)
    );
\switches_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(2),
      O => switches(2)
    );
\switches_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(3),
      O => switches(3)
    );
\switches_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(4),
      O => switches(4)
    );
\switches_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(5),
      O => switches(5)
    );
\switches_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(6),
      O => switches(6)
    );
\switches_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => switches_OBUF(7),
      O => switches(7)
    );
end STRUCTURE;
