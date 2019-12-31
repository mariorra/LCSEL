# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.cache/wt [current_project]
set_property parent.project_path C:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths {C:/Users/Engineer/AppData/Roaming/Xilinx/Vivado/2019.2/xhub/board_store} [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library work {
  C:/Users/Engineer/Documents/master/lcse/LCSEL/DMA.vhd
  C:/Users/Engineer/Documents/master/lcse/LCSEL/PIC_pkg.vhd
  C:/Users/Engineer/Documents/master/lcse/LCSEL/RAM.vhd
  C:/Users/Engineer/Documents/master/lcse/LCSEL/PICtop.vhd
}
read_vhdl -library xil_defaultlib {
  C:/Users/Engineer/Documents/master/lcse/LCSEL/RS232top.vhd
  C:/Users/Engineer/Documents/master/lcse/LCSEL/RX_RS232/RX_RS232.srcs/sources_1/new/RX_RS232.vhd
  C:/Users/Engineer/Documents/master/lcse/LCSEL/ShiftRegister/ShiftRegister/ShiftRegister.srcs/sources_1/new/ShiftRegister.vhd
  C:/Users/Engineer/Documents/master/lcse/LCSEL/TX_RS232/TX_RS232.srcs/sources_1/new/TX_RS232.vhd
}
read_ip -quiet C:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/fifo/fifo.xci
set_property used_in_implementation false [get_files -all c:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/fifo/fifo.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/fifo/fifo_ooc.xdc]

read_ip -quiet C:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP.xci
set_property used_in_implementation false [get_files -all c:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Engineer/Documents/master/lcse/LCSEL/DEMOSTRACION/DEMOSTRACION.srcs/sources_1/ip/Clk_PIC_TOP/Clk_PIC_TOP_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top PICtop -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef PICtop.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file PICtop_utilization_synth.rpt -pb PICtop_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]