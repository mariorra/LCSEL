onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib c035d087d9d4bdea_opt

do {wave.do}

view wave
view structure
view signals

do {c035d087d9d4bdea.udo}

run -all

quit -force
