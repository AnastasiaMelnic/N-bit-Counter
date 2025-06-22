onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Cnt4bits_ILA_MA_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Cnt4bits_ILA_MA.udo}

run 1000ns

quit -force
