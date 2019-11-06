transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Dev/quartus/Lab1_dekoder_7Seg_DE2_nn/Lab1_dekoder_7Seg_nn.vhd}
vcom -93 -work work {C:/Dev/quartus/Lab1_dekoder_7Seg_DE2_nn/Lab1_dekoder_7Seg_DE2_nn.vhd}

