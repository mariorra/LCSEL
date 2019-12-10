onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Clk_PIC_TOP -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Clk_PIC_TOP xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Clk_PIC_TOP.udo}

run -all

endsim

quit -force
