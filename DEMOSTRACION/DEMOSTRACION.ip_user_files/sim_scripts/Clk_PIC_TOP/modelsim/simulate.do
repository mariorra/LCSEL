onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Clk_PIC_TOP xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Clk_PIC_TOP.udo}

run -all

quit -force
