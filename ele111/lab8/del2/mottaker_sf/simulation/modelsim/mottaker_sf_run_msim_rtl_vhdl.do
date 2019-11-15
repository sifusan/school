transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Dev/school/ele111/lab8/del2/mottaker_sf/mottaker_sf.vhd}
vcom -93 -work work {C:/Dev/school/ele111/lab8/del2/mottaker_sf/baudrate_gen.vhd}

