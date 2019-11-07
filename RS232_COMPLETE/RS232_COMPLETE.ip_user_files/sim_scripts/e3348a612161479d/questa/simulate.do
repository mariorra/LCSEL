onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib e3348a612161479d_opt

do {wave.do}

view wave
view structure
view signals

do {e3348a612161479d.udo}

run -all

quit -force
