transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Cnt4bits_ILA_MA  -L xpm -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L util_vector_logic_v2_0_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Cnt4bits_ILA_MA xil_defaultlib.glbl

do {Cnt4bits_ILA_MA.udo}

run 1000ns

endsim

quit -force
