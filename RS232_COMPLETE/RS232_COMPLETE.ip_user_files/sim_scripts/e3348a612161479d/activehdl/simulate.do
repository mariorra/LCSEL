onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+e3348a612161479d -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.e3348a612161479d xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {e3348a612161479d.udo}

run -all

endsim

quit -force
