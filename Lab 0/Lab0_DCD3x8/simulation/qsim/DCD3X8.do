onerror {exit -code 1}
vlib work
vcom -work work DCD3X8.vho
vcom -work work Waveform1.vwf.vht
vsim  -c -t 1ps -sdfmax DCD3x8_vhd_vec_tst/i1=DCD3X8_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.DCD3x8_vhd_vec_tst
vcd file -direction DCD3X8.msim.vcd
vcd add -internal DCD3x8_vhd_vec_tst/*
vcd add -internal DCD3x8_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
