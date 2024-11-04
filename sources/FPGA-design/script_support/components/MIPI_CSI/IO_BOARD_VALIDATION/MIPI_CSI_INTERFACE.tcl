# Creating SmartDesign MIPI_CSI_INTERFACE
set sd_name {MIPI_CSI_INTERFACE}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CSI1_PWND} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PWDATA} -port_direction {IN} -port_range {[15:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PRDATA} -port_direction {OUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_D_N} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_D_P} -port_direction {OUT} -port_range {[3:0]}


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

sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_N} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_N} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_N} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_N} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_P} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_P} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_P} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CAM_D_P} -pin_slices {[3:3]}
# Add CSI_TEST_PWM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CSI_TEST_PWM} -instance_name {CSI_TEST_PWM_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI_TEST_PWM_0:PWM} -pin_slices {[9:9]}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_N" "CSI_TEST_PWM_0:PWM[8:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_P" "CSI_TEST_PWM_0:PWM[9:9]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_N[0:0]" "CSI_TEST_PWM_0:PWM[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_N[1:1]" "CSI_TEST_PWM_0:PWM[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_N[2:2]" "CSI_TEST_PWM_0:PWM[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_N[3:3]" "CSI_TEST_PWM_0:PWM[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_P[0:0]" "CSI_TEST_PWM_0:PWM[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_P[1:1]" "CSI_TEST_PWM_0:PWM[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_P[2:2]" "CSI_TEST_PWM_0:PWM[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_P[3:3]" "CSI_TEST_PWM_0:PWM[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI1_PWND" "CSI_TEST_PWM_0:PWM[10:10]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI_TEST_PWM_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI_TEST_PWM_0:PRESETN" "PRESETN" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APBslave" "CSI_TEST_PWM_0:APBslave" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MIPI_CSI_INTERFACE
generate_component -component_name ${sd_name}
