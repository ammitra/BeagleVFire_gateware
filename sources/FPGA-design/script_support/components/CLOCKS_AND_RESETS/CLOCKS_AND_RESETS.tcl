# Creating SmartDesign CLOCKS_AND_RESETS
set sd_name {CLOCKS_AND_RESETS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MCLK_4_915MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_ACLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_ACLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_ACLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PCLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RCOSC_160MHZ_GL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_INIT_DONE} -port_direction {OUT}



# Add FIC_0_RESET instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_0_RESET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:FF_US_RESTORE} -value {GND}



# Add FIC_1_RESET instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_1_RESET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_1_RESET:PLL_POWERDOWN_B}



# Add FIC_2_RESET_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_2_RESET_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:PLL_POWERDOWN_B}



# Add FIC_3_RESET_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_3_RESET_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:PLL_POWERDOWN_B}



# Add FIC_PLL_LOCKs instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {FIC_PLL_LOCKs}



# Add FPGA_CCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FPGA_CCC_C0} -instance_name {FPGA_CCC_C0_0}



# Add INIT_MONITOR_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {INIT_MONITOR} -instance_name {INIT_MONITOR_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:PCIE_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:AUTOCALIB_DONE}



# Add OSCILLATOR_160MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {OSCILLATOR_160MHz} -instance_name {OSCILLATOR_160MHz}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {OSCILLATOR_160MHz:RCOSC_160MHZ_CLK_DIV}



# Add PF_CCC_ADC_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_ADC} -instance_name {PF_CCC_ADC_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_CCC_ADC_0:PLL_LOCK_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_CCC_ADC_0:PLL_POWERDOWN_N_0} -value {VCC}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MCLK_4_915MHz" "PF_CCC_ADC_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVICE_INIT_DONE" "FIC_0_RESET:INIT_DONE" "FIC_1_RESET:INIT_DONE" "FIC_2_RESET_0:INIT_DONE" "FIC_3_RESET_0:INIT_DONE" "INIT_MONITOR_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "FIC_0_RESET:EXT_RST_N" "FIC_1_RESET:EXT_RST_N" "FIC_2_RESET_0:EXT_RST_N" "FIC_3_RESET_0:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_ACLK" "FIC_0_RESET:CLK" "FPGA_CCC_C0_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_FABRIC_RESET_N" "FIC_0_RESET:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:FPGA_POR_N" "FIC_1_RESET:FPGA_POR_N" "FIC_2_RESET_0:FPGA_POR_N" "FIC_3_RESET_0:FPGA_POR_N" "INIT_MONITOR_0:FABRIC_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:PLL_LOCK" "FIC_1_RESET:PLL_LOCK" "FIC_2_RESET_0:PLL_LOCK" "FIC_3_RESET_0:PLL_LOCK" "FIC_PLL_LOCKs:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:PLL_POWERDOWN_B" "FPGA_CCC_C0_0:PLL_POWERDOWN_N_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_ACLK" "FIC_1_RESET:CLK" "FPGA_CCC_C0_0:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_FABRIC_RESET_N" "FIC_1_RESET:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_ACLK" "FIC_2_RESET_0:CLK" "FPGA_CCC_C0_0:OUT2_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_FABRIC_RESET_N" "FIC_2_RESET_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_FABRIC_RESET_N" "FIC_3_RESET_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "FIC_3_RESET_0:CLK" "FPGA_CCC_C0_0:OUT3_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_PLL_LOCKs:A" "FPGA_CCC_C0_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_PLL_LOCKs:B" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FPGA_CCC_C0_0:REF_CLK_0" "OSCILLATOR_160MHz:RCOSC_160MHZ_GL" "PF_CCC_ADC_0:REF_CLK_0" "RCOSC_160MHZ_GL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR_0:XCVR_INIT_DONE" "XCVR_INIT_DONE" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CLOCKS_AND_RESETS
generate_component -component_name ${sd_name}
