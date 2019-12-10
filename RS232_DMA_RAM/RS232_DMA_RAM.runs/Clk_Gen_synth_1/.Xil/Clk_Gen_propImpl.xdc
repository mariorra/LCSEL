set_property SRC_FILE_INFO {cfile:c:/Users/Engenieer/Documents/LCSEL_git/LCSEL/RS232_DMA_RAM/RS232_DMA_RAM.srcs/sources_1/ip/Clk_gen/Clk_gen.xdc rfile:../../../RS232_DMA_RAM.srcs/sources_1/ip/Clk_gen/Clk_gen.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.5
