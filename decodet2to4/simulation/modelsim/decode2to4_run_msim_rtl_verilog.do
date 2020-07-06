transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/software/altera/13.0/project/decodet2to4 {E:/software/altera/13.0/project/decodet2to4/decode2to4.sv}

vlog -vlog01compat -work work +incdir+E:/software/altera/13.0/project/decodet2to4 {E:/software/altera/13.0/project/decodet2to4/decode2to4_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  decode2to4_tb

add wave *
view structure
view signals
run -all