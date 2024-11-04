# Creating SmartDesign "CAPE_DEFAULT_GPIOS"
set sd_name {CAPE_DEFAULT_GPIOS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_0_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_11_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_14_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_15_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_17_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_18_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_19_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_20_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_21_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_22_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_23_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_3_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_4_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_5_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_6_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_7_PAD} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_OE} -port_direction {IN} -port_range {[27:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_OUT} -port_direction {IN} -port_range {[27:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_IN} -port_direction {OUT} -port_range {[27:0]}


sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OE} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_OUT} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[10:10]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[10:10]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[12:12]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[12:12]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[13:13]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[13:13]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[16:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[16:16]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[24:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[24:24]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[25:25]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[25:25]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[26:26]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[26:26]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[27:27]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[27:27]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[8:8]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[8:8]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_IN} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {GPIO_IN[9:9]} -value {GND}
# Add GPIO_0_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_0_BIBUF}



# Add GPIO_1_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_1_BIBUF}



# Add GPIO_2_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_BIBUF}



# Add GPIO_3_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_3_BIBUF}



# Add GPIO_4_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_4_BIBUF}



# Add GPIO_5_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_5_BIBUF}



# Add GPIO_6_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_6_BIBUF}



# Add GPIO_7_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_7_BIBUF}



# Add GPIO_11_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_11_BIBUF}



# Add GPIO_14_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_14_BIBUF}



# Add GPIO_15_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_15_BIBUF}



# Add GPIO_17_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_17_BIBUF}



# Add GPIO_18_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_18_BIBUF}



# Add GPIO_19_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_19_BIBUF}



# Add GPIO_20_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_20_BIBUF}



# Add GPIO_21_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_21_BIBUF}



# Add GPIO_22_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_22_BIBUF}



# Add GPIO_23_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_23_BIBUF}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_0_BIBUF:D" "GPIO_OUT[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_0_BIBUF:E" "GPIO_OE[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_0_BIBUF:PAD" "GPIO_0_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_0_BIBUF:Y" "GPIO_IN[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_11_BIBUF:D" "GPIO_OUT[11:11]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_11_BIBUF:E" "GPIO_OE[11:11]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_11_BIBUF:PAD" "GPIO_11_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_11_BIBUF:Y" "GPIO_IN[11:11]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_14_BIBUF:D" "GPIO_OUT[14:14]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_14_BIBUF:E" "GPIO_OE[14:14]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_14_BIBUF:PAD" "GPIO_14_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_14_BIBUF:Y" "GPIO_IN[14:14]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_15_BIBUF:D" "GPIO_OUT[15:15]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_15_BIBUF:E" "GPIO_OE[15:15]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_15_BIBUF:PAD" "GPIO_15_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_15_BIBUF:Y" "GPIO_IN[15:15]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_17_BIBUF:D" "GPIO_OUT[17:17]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_17_BIBUF:E" "GPIO_OE[17:17]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_17_BIBUF:PAD" "GPIO_17_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_17_BIBUF:Y" "GPIO_IN[17:17]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_18_BIBUF:D" "GPIO_OUT[18:18]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_18_BIBUF:E" "GPIO_OE[18:18]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_18_BIBUF:PAD" "GPIO_18_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_18_BIBUF:Y" "GPIO_IN[18:18]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_19_BIBUF:D" "GPIO_OUT[19:19]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_19_BIBUF:E" "GPIO_OE[19:19]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_19_BIBUF:PAD" "GPIO_19_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_19_BIBUF:Y" "GPIO_IN[19:19]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_BIBUF:D" "GPIO_OUT[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_BIBUF:E" "GPIO_OE[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_BIBUF:PAD" "GPIO_1_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_BIBUF:Y" "GPIO_IN[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_20_BIBUF:D" "GPIO_OUT[20:20]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_20_BIBUF:E" "GPIO_OE[20:20]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_20_BIBUF:PAD" "GPIO_20_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_20_BIBUF:Y" "GPIO_IN[20:20]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_21_BIBUF:D" "GPIO_OUT[21:21]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_21_BIBUF:E" "GPIO_OE[21:21]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_21_BIBUF:PAD" "GPIO_21_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_21_BIBUF:Y" "GPIO_IN[21:21]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_22_BIBUF:D" "GPIO_OUT[22:22]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_22_BIBUF:E" "GPIO_OE[22:22]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_22_BIBUF:PAD" "GPIO_22_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_22_BIBUF:Y" "GPIO_IN[22:22]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_23_BIBUF:D" "GPIO_OUT[23:23]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_23_BIBUF:E" "GPIO_OE[23:23]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_23_BIBUF:PAD" "GPIO_23_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_23_BIBUF:Y" "GPIO_IN[23:23]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_BIBUF:D" "GPIO_OUT[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_BIBUF:E" "GPIO_OE[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_BIBUF:PAD" "GPIO_2_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_BIBUF:Y" "GPIO_IN[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_3_BIBUF:D" "GPIO_OUT[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_3_BIBUF:E" "GPIO_OE[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_3_BIBUF:PAD" "GPIO_3_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_3_BIBUF:Y" "GPIO_IN[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_4_BIBUF:D" "GPIO_OUT[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_4_BIBUF:E" "GPIO_OE[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_4_BIBUF:PAD" "GPIO_4_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_4_BIBUF:Y" "GPIO_IN[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_5_BIBUF:D" "GPIO_OUT[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_5_BIBUF:E" "GPIO_OE[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_5_BIBUF:PAD" "GPIO_5_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_5_BIBUF:Y" "GPIO_IN[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_6_BIBUF:D" "GPIO_OUT[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_6_BIBUF:E" "GPIO_OE[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_6_BIBUF:PAD" "GPIO_6_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_6_BIBUF:Y" "GPIO_IN[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_7_BIBUF:D" "GPIO_OUT[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_7_BIBUF:E" "GPIO_OE[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_7_BIBUF:PAD" "GPIO_7_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_7_BIBUF:Y" "GPIO_IN[7:7]" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "CAPE_DEFAULT_GPIOS"
generate_component -component_name ${sd_name}
