#-------------------------------------------------------------------------------
# MIPI CSI interface
# This is currently a glitch generator for the purpose of IO placement.
#-------------------------------------------------------------------------------



# Creating SmartDesign MIPI_CSI_INTERFACE
set sd_name {MIPI_CSI_INTERFACE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CSI1_PWND} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_D_N} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_D_P} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}


# Add AND2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_0}



# Add AND2_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_1}



# Add AND2_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_2}



# Add AND2_3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_3}



# Add AND2_4 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_4}



# Add AND4_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_0}



# Add MIPI_CSI2_RX_IOD_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MIPI_CSI2_RX_IOD} -instance_name {MIPI_CSI2_RX_IOD_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L0_RXD_DATA} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L0_RXD_DATA} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L1_RXD_DATA} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L1_RXD_DATA} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L2_RXD_DATA} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L2_RXD_DATA} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L3_RXD_DATA} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI2_RX_IOD_0:L3_RXD_DATA} -pin_slices {[1:1]}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:A" "AND4_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:B" "MIPI_CSI2_RX_IOD_0:RX_CLK_G" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:Y" "CSI1_PWND" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_1:A" "MIPI_CSI2_RX_IOD_0:L0_RXD_DATA[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_1:B" "MIPI_CSI2_RX_IOD_0:L0_RXD_DATA[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_1:Y" "AND4_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_2:A" "MIPI_CSI2_RX_IOD_0:L1_RXD_DATA[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_2:B" "MIPI_CSI2_RX_IOD_0:L1_RXD_DATA[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_2:Y" "AND4_0:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_3:A" "MIPI_CSI2_RX_IOD_0:L2_RXD_DATA[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_3:B" "MIPI_CSI2_RX_IOD_0:L2_RXD_DATA[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_3:Y" "AND4_0:C" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_4:A" "MIPI_CSI2_RX_IOD_0:L3_RXD_DATA[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_4:B" "MIPI_CSI2_RX_IOD_0:L3_RXD_DATA[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_4:Y" "AND4_0:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIPI_CSI2_RX_IOD_0:RX_CLK_N" "CAM_C_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIPI_CSI2_RX_IOD_0:RX_CLK_P" "CAM_C_P" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIPI_CSI2_RX_IOD_0:RXD" "CAM_D_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIPI_CSI2_RX_IOD_0:RXD_N" "CAM_D_N" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MIPI_CSI_INTERFACE
generate_component -component_name ${sd_name}
