onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+c035d087d9d4bdea -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.c035d087d9d4bdea xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {c035d087d9d4bdea.udo}

run -all

endsim

quit -force
