# Creating SmartDesign CAPE_PWM
set sd_name {CAPE_PWM}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PWM_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PWM_1} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PWDATA} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PRDATA} -port_direction {OUT} -port_range {[31:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APBslave} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:APBslave_PADDR" \
"PSELx:APBslave_PSEL" \
"PENABLE:APBslave_PENABLE" \
"PWRITE:APBslave_PWRITE" \
"PRDATA:APBslave_PRDATA" \
"PWDATA:APBslave_PWDATA" \
"PREADY:APBslave_PREADY" \
"PSLVERR:APBslave_PSLVERR" } 

# Add corepwm_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {corepwm_C1} -instance_name {corepwm_C1_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {[1:1]}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCLK" "corepwm_C1_0:PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PRESETN" "corepwm_C1_0:PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PWM_0" "corepwm_C1_0:PWM[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PWM_1" "corepwm_C1_0:PWM[1:1]" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APBslave" "corepwm_C1_0:APBslave" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CAPE_PWM
generate_component -component_name ${sd_name}
