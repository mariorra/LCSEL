-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../DEMOSTRACION.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP_clk_wiz.v" \
  "../../../../DEMOSTRACION.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

