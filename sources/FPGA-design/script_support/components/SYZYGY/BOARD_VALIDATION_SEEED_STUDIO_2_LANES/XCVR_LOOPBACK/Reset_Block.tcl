puts "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
puts "vvvvvvvvvvvvvvvvvvvvvv Create Transceivers Reset Block vvvvvvvvvvvvvvvvvvvvvvv"
puts "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"

# Creating SmartDesign Reset_Block
set sd_name {Reset_Block}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {BANK_x_VDDI_STATUS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BANK_y_VDDI_STATUS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_clk} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_ready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX_clk_stable} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX_clk} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {Pattern_chk_rst_n} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Pattern_gen_rst_n} -port_direction {OUT}



# Add Reset_sync_rx_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Reset_sync_rx} -instance_name {Reset_sync_rx_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_sync_rx_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_sync_rx_0:FF_US_RESTORE} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_sync_rx_0:FPGA_POR_N} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Reset_sync_rx_0:PLL_POWERDOWN_B}



# Add Reset_sync_tx_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {Reset_sync_tx} -instance_name {Reset_sync_tx_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_sync_tx_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_sync_tx_0:FF_US_RESTORE} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {Reset_sync_tx_0:FPGA_POR_N} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {Reset_sync_tx_0:PLL_POWERDOWN_B}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BANK_x_VDDI_STATUS" "Reset_sync_rx_0:BANK_x_VDDI_STATUS" "Reset_sync_tx_0:BANK_x_VDDI_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BANK_y_VDDI_STATUS" "Reset_sync_rx_0:BANK_y_VDDI_STATUS" "Reset_sync_tx_0:BANK_y_VDDI_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "Reset_sync_rx_0:EXT_RST_N" "Reset_sync_tx_0:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_DONE" "Reset_sync_rx_0:INIT_DONE" "Reset_sync_tx_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Pattern_chk_rst_n" "Reset_sync_rx_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Pattern_gen_rst_n" "Reset_sync_tx_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RX_clk" "Reset_sync_rx_0:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RX_ready" "Reset_sync_rx_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Reset_sync_tx_0:CLK" "TX_clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Reset_sync_tx_0:PLL_LOCK" "TX_clk_stable" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign Reset_Block
generate_component -component_name ${sd_name}

puts "^^^^^^^^^^^^^^^^^ Create Transceivers Reset Block Complete ^^^^^^^^^^^^^^^^^^^"
