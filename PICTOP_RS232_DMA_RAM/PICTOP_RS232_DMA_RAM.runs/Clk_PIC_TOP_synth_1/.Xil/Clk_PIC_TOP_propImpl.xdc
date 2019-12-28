set_property SRC_FILE_INFO {cfile:c:/Users/Engineer/Documents/master/lcse/LCSEL/PICTOP_RS232_DMA_RAM/PICTOP_RS232_DMA_RAM.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP.xdc rfile:../../../PICTOP_RS232_DMA_RAM.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
