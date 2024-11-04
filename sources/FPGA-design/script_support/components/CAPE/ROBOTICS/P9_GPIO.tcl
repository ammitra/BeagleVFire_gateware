# Creating SmartDesign P9_GPIO
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

sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD_6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PAD} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PWDATA} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_bif_PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {INT} -port_direction {OUT} -port_range {[7:0]}


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

# Add BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_0}



# Add BIBUF_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_1}



# Add BIBUF_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_2}



# Add BIBUF_3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_3}



# Add BIBUF_5 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_5}



# Add BIBUF_6 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_6}



# Add BIBUF_7 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_7}



# Add CoreGPIO_P9_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreGPIO_P9} -instance_name {CoreGPIO_P9_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[4:4]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_IN[4:4]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_IN} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[4:4]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OUT[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OUT} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[4:4]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P9_0:GPIO_OE[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P9_0:GPIO_OE} -pin_slices {[7:7]}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:D" "CoreGPIO_P9_0:GPIO_OUT[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:E" "CoreGPIO_P9_0:GPIO_OE[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:PAD" "PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:Y" "CoreGPIO_P9_0:GPIO_IN[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:D" "CoreGPIO_P9_0:GPIO_OUT[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:E" "CoreGPIO_P9_0:GPIO_OE[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:PAD" "PAD_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:Y" "CoreGPIO_P9_0:GPIO_IN[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:D" "CoreGPIO_P9_0:GPIO_OUT[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:E" "CoreGPIO_P9_0:GPIO_OE[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:PAD" "PAD_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:Y" "CoreGPIO_P9_0:GPIO_IN[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:D" "CoreGPIO_P9_0:GPIO_OUT[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:E" "CoreGPIO_P9_0:GPIO_OE[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:PAD" "PAD_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:Y" "CoreGPIO_P9_0:GPIO_IN[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:D" "CoreGPIO_P9_0:GPIO_OUT[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:E" "CoreGPIO_P9_0:GPIO_OE[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:PAD" "PAD_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:Y" "CoreGPIO_P9_0:GPIO_IN[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:D" "CoreGPIO_P9_0:GPIO_OUT[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:E" "CoreGPIO_P9_0:GPIO_OE[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:PAD" "PAD_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:Y" "CoreGPIO_P9_0:GPIO_IN[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:D" "CoreGPIO_P9_0:GPIO_OUT[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:E" "CoreGPIO_P9_0:GPIO_OE[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:PAD" "PAD_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:Y" "CoreGPIO_P9_0:GPIO_IN[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:PRESETN" "PRESETN" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P9_0:INT" "INT" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_bif" "CoreGPIO_P9_0:APB_bif" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign P9_GPIO
generate_component -component_name ${sd_name}
