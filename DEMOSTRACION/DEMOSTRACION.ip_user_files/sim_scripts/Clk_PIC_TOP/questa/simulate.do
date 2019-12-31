onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Clk_PIC_TOP_opt

do {wave.do}

view wave
view structure
view signals

do {Clk_PIC_TOP.udo}

run -all

quit -force
