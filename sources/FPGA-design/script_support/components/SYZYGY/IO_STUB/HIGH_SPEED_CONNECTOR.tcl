
# Creating SmartDesign HIGH_SPEED_INTERFACE
set sd_name {HIGH_SPEED_INTERFACE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO70_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO70_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO73_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO73_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO82_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO82_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCS_PMA_ARST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX2_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX2_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX3_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX3_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO71_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO71_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO81_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO81_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO83_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO83_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX2_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX2_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX3_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX3_P} -port_direction {OUT} -port_is_pad {1}


# Add PF_IO_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C0} -instance_name {PF_IO_C0_0}



# Add PF_IO_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C1} -instance_name {PF_IO_C1_0}



# Add PF_IO_C2_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C2} -instance_name {PF_IO_C2_0}



# Add PF_IO_C3_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C3} -instance_name {PF_IO_C3_0}



# Add PF_IO_C4_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C4} -instance_name {PF_IO_C4_0}



# Add PF_IO_C5_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C5} -instance_name {PF_IO_C5_0}



# Add PF_IO_C6_0 instance
#<CJ>sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C6} -instance_name {PF_IO_C6_0}



# Add PF_IO_C7_0 instance
#>CJ>sd_instantiate_component -sd_name ${sd_name} -component_name {PF_IO_C7} -instance_name {PF_IO_C7_0}



# Add PF_TX_PLL_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_C0} -instance_name {PF_TX_PLL_C0_0}



# Add PF_XCVR_ERM_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_ERM_C0} -instance_name {PF_XCVR_ERM_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_TX_CLK_R}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_RX_CLK_R}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_RX_SLIP} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_TX_CLK_STABLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_RX_BYPASS_DATA}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_LOS} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C0_0:LANE0_RX_VAL}



# Add PF_XCVR_ERM_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_ERM_C1} -instance_name {PF_XCVR_ERM_C1_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_TX_CLK_R}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_RX_CLK_R}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_RX_SLIP} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_RX_IDLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_TX_CLK_STABLE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_RX_BYPASS_DATA}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_LOS} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_RX_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_ERM_C1_0:LANE0_RX_VAL}



# Add PF_XCVR_REF_CLK_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_C0} -instance_name {PF_XCVR_REF_CLK_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO70_N" "PF_IO_C0_0:PADIN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO70_P" "PF_IO_C0_0:PADIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO71_N" "PF_IO_C1_0:PADON" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO71_P" "PF_IO_C1_0:PADOP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO73_N" "PF_IO_C2_0:PADIN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO73_P" "PF_IO_C2_0:PADIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO81_N" "PF_IO_C3_0:PADON" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO81_P" "PF_IO_C3_0:PADOP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO82_N" "PF_IO_C4_0:PADIN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO82_P" "PF_IO_C4_0:PADIP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO83_N" "PF_IO_C5_0:PADON" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO83_P" "PF_IO_C5_0:PADOP" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PCS_PMA_ARST_N" "PF_XCVR_ERM_C0_0:CTRL_ARST_N" "PF_XCVR_ERM_C0_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C0_0:LANE0_PMA_ARST_N" "PF_XCVR_ERM_C1_0:CTRL_ARST_N" "PF_XCVR_ERM_C1_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C1_0:LANE0_PMA_ARST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_IO_C0_0:QF" "PF_IO_C1_0:DF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_IO_C0_0:QR" "PF_IO_C1_0:DR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_IO_C2_0:QF" "PF_IO_C3_0:DF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_IO_C2_0:QR" "PF_IO_C3_0:DR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_IO_C4_0:QF" "PF_IO_C5_0:DF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_IO_C4_0:QR" "PF_IO_C5_0:DR" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLK_125" "PF_XCVR_ERM_C0_0:CTRL_CLK" "PF_XCVR_ERM_C1_0:CTRL_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:REF_CLK" "PF_XCVR_ERM_C0_0:LANE0_CDR_REF_CLK_0" "PF_XCVR_ERM_C1_0:LANE0_CDR_REF_CLK_0" "PF_XCVR_REF_CLK_C0_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C0_0:LANE0_RXD_N" "XCVR_RX2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C0_0:LANE0_RXD_P" "XCVR_RX2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C0_0:LANE0_TXD_N" "XCVR_TX2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C0_0:LANE0_TXD_P" "XCVR_TX2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C1_0:LANE0_RXD_N" "XCVR_RX3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C1_0:LANE0_RXD_P" "XCVR_RX3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C1_0:LANE0_TXD_N" "XCVR_TX3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C1_0:LANE0_TXD_P" "XCVR_TX3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_N" "XCVR_0B_REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_P" "XCVR_0B_REFCLK_P" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C0_0:LANE0_RX_DATA" "PF_XCVR_ERM_C1_0:LANE0_TX_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_ERM_C0_0:LANE0_TX_DATA" "PF_XCVR_ERM_C1_0:LANE0_RX_DATA" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_XCVR_ERM_C0_0:CLKS_FROM_TXPLL_0" "PF_XCVR_ERM_C1_0:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign HIGH_SPEED_INTERFACE
generate_component -component_name ${sd_name}
