# Creating SmartDesign HIGH_SPEED_INTERFACE
set sd_name {HIGH_SPEED_INTERFACE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCS_PMA_ARST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX2_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX2_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX3_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX3_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APBslave_PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO70_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO70_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO71_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO71_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO73_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO73_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO81_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO81_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO82_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO82_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO83_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSIO83_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX2_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX2_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX3_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX3_P} -port_direction {OUT} -port_is_pad {1}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PWDATA} -port_direction {IN} -port_range {[15:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APBslave_PRDATA} -port_direction {OUT} -port_range {[15:0]}


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

# Add HSIO_PWM_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HSIO_PWM_C0} -instance_name {HSIO_PWM_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_PWM_C0_0:PWM} -pin_slices {[9:9]}



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
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO70_N" "HSIO_PWM_C0_0:PWM[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO70_P" "HSIO_PWM_C0_0:PWM[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO71_N" "HSIO_PWM_C0_0:PWM[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO71_P" "HSIO_PWM_C0_0:PWM[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO73_N" "HSIO_PWM_C0_0:PWM[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO73_P" "HSIO_PWM_C0_0:PWM[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO81_N" "HSIO_PWM_C0_0:PWM[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO81_P" "HSIO_PWM_C0_0:PWM[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO82_N" "HSIO_PWM_C0_0:PWM[8:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO82_P" "HSIO_PWM_C0_0:PWM[9:9]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO83_N" "HSIO_PWM_C0_0:PWM[10:10]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO83_P" "HSIO_PWM_C0_0:PWM[11:11]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_PWM_C0_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_PWM_C0_0:PRESETN" "PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCS_PMA_ARST_N" "PF_XCVR_ERM_C0_0:CTRL_ARST_N" "PF_XCVR_ERM_C0_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C0_0:LANE0_PMA_ARST_N" "PF_XCVR_ERM_C1_0:CTRL_ARST_N" "PF_XCVR_ERM_C1_0:LANE0_PCS_ARST_N" "PF_XCVR_ERM_C1_0:LANE0_PMA_ARST_N" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"APBslave" "HSIO_PWM_C0_0:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_XCVR_ERM_C0_0:CLKS_FROM_TXPLL_0" "PF_XCVR_ERM_C1_0:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign HIGH_SPEED_INTERFACE
generate_component -component_name ${sd_name}
