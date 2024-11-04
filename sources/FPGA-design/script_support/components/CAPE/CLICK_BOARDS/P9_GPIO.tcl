# Creating SmartDesign "P9_GPIO"
set sd_name {P9_GPIO}
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

sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_10_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_12_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_14_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_19_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_4_PAD} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PWDATA} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {INT} -port_direction {OUT} -port_range {[20:0]}


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

# Add CoreGPIO_P9_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreGPIO_P9} -instance_name {CoreGPIO_P9_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[0:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[0:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[11:11]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[11:11]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[13:13]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[13:13]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[15:15]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[15:15]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[16:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[16:16]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[17:17]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[17:17]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[18:18]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[18:18]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[20:20]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[20:20]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[2:2]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[2:2]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[3:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[3:3]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[5:5]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[5:5]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[6:6]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[6:6]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[7:7]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[7:7]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[8:8]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[8:8]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[9:9]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[0:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[11:11]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[13:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[15:15]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[16:16]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[17:17]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[18:18]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[20:20]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[2:2]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[3:3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[5:5]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[6:6]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[8:8]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[9:9]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[0:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[11:11]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[13:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[15:15]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[16:16]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[17:17]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[18:18]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[20:20]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[2:2]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[3:3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[5:5]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[6:6]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[8:8]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[9:9]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[9:9]}



# Add GPIO_1_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_1_BIBUF}



# Add GPIO_4_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_4_BIBUF}



# Add GPIO_10_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_10_BIBUF}



# Add GPIO_12_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_12_BIBUF}



# Add GPIO_14_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_14_BIBUF}



# Add GPIO_19_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_19_BIBUF}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_IN[10:10]" "GPIO_10_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_IN[12:12]" "GPIO_12_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_IN[14:14]" "GPIO_14_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_IN[19:19]" "GPIO_19_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_IN[1:1]" "GPIO_1_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_IN[4:4]" "GPIO_4_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OE[10:10]" "GPIO_10_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OE[12:12]" "GPIO_12_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OE[14:14]" "GPIO_14_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OE[19:19]" "GPIO_19_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OE[1:1]" "GPIO_1_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OE[4:4]" "GPIO_4_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OUT[10:10]" "GPIO_10_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OUT[12:12]" "GPIO_12_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OUT[14:14]" "GPIO_14_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OUT[19:19]" "GPIO_19_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OUT[1:1]" "GPIO_1_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:GPIO_OUT[4:4]" "GPIO_4_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:PRESETN" "PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_10_BIBUF:PAD" "GPIO_10_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_12_BIBUF:PAD" "GPIO_12_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_14_BIBUF:PAD" "GPIO_14_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_19_BIBUF:PAD" "GPIO_19_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_BIBUF:PAD" "GPIO_1_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_4_BIBUF:PAD" "GPIO_4_PAD" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:INT" "INT" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_bif" "CoreGPIO_P9_0:APB_bif" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "P9_GPIO"
generate_component -component_name ${sd_name}
