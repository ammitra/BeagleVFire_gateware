# Creating SmartDesign "P8_GPIO_UPPER"
set sd_name {P8_GPIO_UPPER}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_bif_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_bif_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_bif_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_bif_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_bif_PSLVERR} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_0_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_10_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_11_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_12_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_13_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_14_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_15_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_3_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_4_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_5_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_6_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_7_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_8_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_9_PAD} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PWDATA} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {INT} -port_direction {OUT} -port_range {[15:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APB_bif} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:APB_bif_PADDR" \
"PSELx:APB_bif_PSEL" \
"PENABLE:APB_bif_PENABLE" \
"PWRITE:APB_bif_PWRITE" \
"PRDATA:APB_bif_PRDATA" \
"PWDATA:APB_bif_PWDATA" \
"PREADY:APB_bif_PREADY" \
"PSLVERR:APB_bif_PSLVERR" } 

# Add CoreGPIO_P8_UPPER_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreGPIO_P8_UPPER} -instance_name {CoreGPIO_P8_UPPER_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {[9:9]}



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



# Add GPIO_8_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_8_BIBUF}



# Add GPIO_9_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_9_BIBUF}



# Add GPIO_10_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_10_BIBUF}



# Add GPIO_11_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_11_BIBUF}



# Add GPIO_12_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_12_BIBUF}



# Add GPIO_13_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_13_BIBUF}



# Add GPIO_14_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_14_BIBUF}



# Add GPIO_15_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_15_BIBUF}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[0:0]" "GPIO_0_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[10:10]" "GPIO_10_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[11:11]" "GPIO_11_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[12:12]" "GPIO_12_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[13:13]" "GPIO_13_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[14:14]" "GPIO_14_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[15:15]" "GPIO_15_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[1:1]" "GPIO_1_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[2:2]" "GPIO_2_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[3:3]" "GPIO_3_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[4:4]" "GPIO_4_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[5:5]" "GPIO_5_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[6:6]" "GPIO_6_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[7:7]" "GPIO_7_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[8:8]" "GPIO_8_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[9:9]" "GPIO_9_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[0:0]" "GPIO_0_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[10:10]" "GPIO_10_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[11:11]" "GPIO_11_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[12:12]" "GPIO_12_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[13:13]" "GPIO_13_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[14:14]" "GPIO_14_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[15:15]" "GPIO_15_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[1:1]" "GPIO_1_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[2:2]" "GPIO_2_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[3:3]" "GPIO_3_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[4:4]" "GPIO_4_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[5:5]" "GPIO_5_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[6:6]" "GPIO_6_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[7:7]" "GPIO_7_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[8:8]" "GPIO_8_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[9:9]" "GPIO_9_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[0:0]" "GPIO_0_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[10:10]" "GPIO_10_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[11:11]" "GPIO_11_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[12:12]" "GPIO_12_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[13:13]" "GPIO_13_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[14:14]" "GPIO_14_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[15:15]" "GPIO_15_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[1:1]" "GPIO_1_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[2:2]" "GPIO_2_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[3:3]" "GPIO_3_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[4:4]" "GPIO_4_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[5:5]" "GPIO_5_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[6:6]" "GPIO_6_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[7:7]" "GPIO_7_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[8:8]" "GPIO_8_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[9:9]" "GPIO_9_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:PRESETN" "PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_0_BIBUF:PAD" "GPIO_0_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_10_BIBUF:PAD" "GPIO_10_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_11_BIBUF:PAD" "GPIO_11_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_12_BIBUF:PAD" "GPIO_12_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_13_BIBUF:PAD" "GPIO_13_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_14_BIBUF:PAD" "GPIO_14_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_15_BIBUF:PAD" "GPIO_15_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_BIBUF:PAD" "GPIO_1_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_BIBUF:PAD" "GPIO_2_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_3_BIBUF:PAD" "GPIO_3_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_4_BIBUF:PAD" "GPIO_4_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_5_BIBUF:PAD" "GPIO_5_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_6_BIBUF:PAD" "GPIO_6_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_7_BIBUF:PAD" "GPIO_7_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_8_BIBUF:PAD" "GPIO_8_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_9_BIBUF:PAD" "GPIO_9_PAD" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:INT" "INT" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_bif" "CoreGPIO_P8_UPPER_0:APB_bif" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "P8_GPIO_UPPER"
generate_component -component_name ${sd_name}
