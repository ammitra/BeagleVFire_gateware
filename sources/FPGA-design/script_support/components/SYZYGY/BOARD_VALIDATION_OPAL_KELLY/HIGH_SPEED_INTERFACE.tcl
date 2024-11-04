# Creating SmartDesign HIGH_SPEED_INTERFACE
set sd_name {HIGH_SPEED_INTERFACE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RCOSC_160MHZ_GL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX1_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_0_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_1_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_2_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_3_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {error_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {lock_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {rx_val_o} -port_direction {OUT}



# Add XCVR_LOOPBACK_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {XCVR_LOOPBACK} -instance_name {XCVR_LOOPBACK_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVICE_INIT_DONE" "XCVR_LOOPBACK_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "XCVR_LOOPBACK_0:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RCOSC_160MHZ_GL" "XCVR_LOOPBACK_0:RCOSC_160MHZ_GL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_0_LED" "XCVR_LOOPBACK_0:TEST_MODE_0_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_1_LED" "XCVR_LOOPBACK_0:TEST_MODE_1_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_2_LED" "XCVR_LOOPBACK_0:TEST_MODE_2_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_3_LED" "XCVR_LOOPBACK_0:TEST_MODE_3_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_0B_REFCLK_N" "XCVR_LOOPBACK_0:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_0B_REFCLK_P" "XCVR_LOOPBACK_0:REF_CLK_PAD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_INIT_DONE" "XCVR_LOOPBACK_0:XCVR_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_RXD_N" "XCVR_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_RXD_P" "XCVR_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_TXD_N" "XCVR_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_TXD_P" "XCVR_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:error_o" "error_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:lock_o" "lock_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:rx_val_o" "rx_val_o" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign HIGH_SPEED_INTERFACE
generate_component -component_name ${sd_name}
