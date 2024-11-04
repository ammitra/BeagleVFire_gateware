# Creating SmartDesign XCVR_LOOPBACK
set sd_name {XCVR_LOOPBACK}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_RXD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RCOSC_160MHZ_GL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_INIT_DONE} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LANE0_TXD_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_0_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_1_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_2_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_3_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {error_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {lock_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {rx_val_o} -port_direction {OUT}



# Add AND3_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND3} -instance_name {AND3_0}



# Add pattern_chk_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {PATTERN_CHK} -instance_name {pattern_chk_0}
# Exporting Parameters of instance pattern_chk_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {pattern_chk_0} -params {\
"g_DATA_WID:32" \
"STATE_0:0" \
"STATE_1:1" \
"STATE_2:2" \
"STATE_3:3" \
"STATE_4:4" \
"STATE_5:5" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {pattern_chk_0}
sd_update_instance -sd_name ${sd_name} -instance_name {pattern_chk_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {pattern_chk_0:s_count} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {pattern_chk_0:s_count} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {pattern_chk_0:s_count} -pin_slices {[2:2]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {pattern_chk_0:RESET_EN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {pattern_chk_0:generate_err} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {pattern_chk_0:LANE_ARST_N}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {pattern_chk_0:start_i} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {pattern_chk_0:clear_i} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {pattern_chk_0:error_count_o}



# Add pattern_gen_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {PATTERN_GEN} -instance_name {pattern_gen_0}
# Exporting Parameters of instance pattern_gen_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {pattern_gen_0} -params {\
"g_DATA_WID:32" \
"STATE_0:0" \
"STATE_1:1" \
"STATE_2:2" \
"STATE_3:3" \
"STATE_4:4" \
"STATE_5:5" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {pattern_gen_0}
sd_update_instance -sd_name ${sd_name} -instance_name {pattern_gen_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {pattern_gen_0:generate_err_i} -value {GND}



# Add PF_CCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {PF_CCC_C0_0}



# Add PF_CLK_DIV_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CLK_DIV_C0} -instance_name {PF_CLK_DIV_C0_0}



# Add PF_TX_PLL_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_0} -instance_name {PF_TX_PLL_0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_TX_PLL_0_0:CLK_125}



# Add PF_XCVR_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_0} -instance_name {PF_XCVR_0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_0_0:LANE0_RX_IDLE}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_0_0:LANE0_LOS} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_XCVR_0_0:LANE0_TX_DISPFNC} -value {GND}



# Add PF_XCVR_REF_CLK_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_0} -instance_name {PF_XCVR_REF_CLK_0_0}



# Add Reset_Block_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Reset_Block} -instance_name {Reset_Block_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_Block_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_Block_0:BANK_y_VDDI_STATUS} -value {VCC}



# Add startup_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {STARTUP} -instance_name {startup_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:A" "PF_CCC_C0_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:B" "PF_TX_PLL_0_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:C" "PF_XCVR_0_0:LANE0_TX_CLK_STABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:Y" "Reset_Block_0:TX_clk_stable" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVICE_INIT_DONE" "Reset_Block_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "Reset_Block_0:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_RXD_N" "PF_XCVR_0_0:LANE0_RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_RXD_P" "PF_XCVR_0_0:LANE0_RXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_TXD_N" "PF_XCVR_0_0:LANE0_TXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LANE0_TXD_P" "PF_XCVR_0_0:LANE0_TXD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "PF_TX_PLL_0_0:FAB_REF_CLK" "PF_XCVR_0_0:LANE0_CDR_REF_CLK_FAB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_C0_0:REF_CLK_0" "PF_XCVR_REF_CLK_0_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_IN" "RCOSC_160MHZ_GL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_OUT" "PF_XCVR_0_0:CTRL_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:CTRL_ARST_N" "PF_XCVR_0_0:LANE0_PCS_ARST_N" "PF_XCVR_0_0:LANE0_PMA_ARST_N" "XCVR_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_RX_CLK_R" "Reset_Block_0:RX_clk" "pattern_chk_0:clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_RX_READY" "Reset_Block_0:RX_ready" "pattern_chk_0:RX_READY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_RX_VAL" "pattern_chk_0:rx_val_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_TX_CLK_R" "Reset_Block_0:TX_clk" "pattern_gen_0:clk_i" "startup_0:tx_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_0_0:REF_CLK_PAD_N" "REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_0_0:REF_CLK_PAD_P" "REF_CLK_PAD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Reset_Block_0:Pattern_chk_rst_n" "TEST_MODE_3_LED" "pattern_chk_0:ARST_N" "pattern_chk_0:reset_n_i" "startup_0:pattern_chk_n_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Reset_Block_0:Pattern_gen_rst_n" "startup_0:pattern_gen_n_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_0_LED" "pattern_chk_0:s_count[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_1_LED" "pattern_chk_0:s_count[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_2_LED" "pattern_chk_0:s_count[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"error_o" "pattern_chk_0:error_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"lock_o" "pattern_chk_0:lock_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"pattern_chk_0:rx_val_o" "rx_val_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"pattern_gen_0:reset_n_i" "startup_0:start_gen_o" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_8B10B_RX_K" "pattern_chk_0:Rx_K_Char_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_8B10B_TX_K" "pattern_gen_0:Tx_K_Char_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_RX_CODE_VIOLATION" "pattern_chk_0:LCV_ERR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_RX_DATA" "pattern_chk_0:data_in_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_RX_DISPARITY_ERROR" "pattern_chk_0:DISP_ERR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_0_0:LANE0_TX_DATA" "pattern_gen_0:data_out_o" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_0_0:CLKS_TO_XCVR" "PF_XCVR_0_0:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign XCVR_LOOPBACK
generate_component -component_name ${sd_name}
