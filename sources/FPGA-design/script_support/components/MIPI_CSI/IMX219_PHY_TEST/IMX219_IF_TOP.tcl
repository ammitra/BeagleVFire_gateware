# Creating SmartDesign IMX219_IF_TOP
set sd_name {IMX219_IF_TOP}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TRNG_RST_N} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAMCLK_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAMERA_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FRAME_START} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FRAME_VALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LINE_VALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PARALLEL_CLOCK} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PWDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_D_N} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {CAM_D_P} -port_direction {IN} -port_range {[3:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PRDATA} -port_direction {OUT} -port_range {[31:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APB_TARGET} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:APB_TARGET_PADDR" \
"PSELx:APB_TARGET_PSEL" \
"PENABLE:APB_TARGET_PENABLE" \
"PWRITE:APB_TARGET_PWRITE" \
"PRDATA:APB_TARGET_PRDATA" \
"PWDATA:APB_TARGET_PWDATA" \
"PREADY:APB_TARGET_PREADY" \
"PSLVERR:APB_TARGET_PSLVERR" } 

# Add AND2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_0}



# Add CoreGPIO_MIPI_CSI_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreGPIO_MIPI_CSI} -instance_name {CoreGPIO_MIPI_CSI_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[10:10]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[10:10]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[3:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[3:3]} -value {VCC}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[4:4]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[4:4]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[5:5]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[5:5]} -value {VCC}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[6:6]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[6:6]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[7:7]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[7:7]} -value {VCC}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[8:8]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[8:8]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_MIPI_CSI_0:GPIO_IN} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_IN[9:9]} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:INT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_OUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_MIPI_CSI_0:GPIO_OE}



# Add CORERESET_PF_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C1} -instance_name {CORERESET_PF_C1_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C1_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C1_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C1_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C1_0:FF_US_RESTORE} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C1_0:FPGA_POR_N} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_PF_C1_0:PLL_POWERDOWN_B}



# Add CORERESET_PF_C2_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C2} -instance_name {CORERESET_PF_C2_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C2_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C2_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C2_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C2_0:FF_US_RESTORE} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C2_0:FPGA_POR_N} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_PF_C2_0:PLL_POWERDOWN_B}



# Add CSI2_RXDecoder_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {mipicsi2rxdecoderPF_C0} -instance_name {CSI2_RXDecoder_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CSI2_RXDecoder_0:DATA_O} -pin_slices {[9:2]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:FRAME_END_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:LINE_START_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:LINE_END_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:ECC_ERROR_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:CRC_ERROR_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:EBD_VALID_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:VIRTUAL_CHANNEL_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:DATA_TYPE_O}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CSI2_RXDecoder_0:WORD_COUNT_O}



# Add PF_CCC_C2_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C2} -instance_name {PF_CCC_C2_0}



# Add PF_IOD_GENERIC_RX_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CAM_IOD_TIP_TOP} -instance_name {PF_IOD_GENERIC_RX_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_IOD_GENERIC_RX_C0_0:HS_IO_CLK_PAUSE} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_IOD_GENERIC_RX_C0_0:HS_SEL} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_IOD_GENERIC_RX_C0_0:RESTART_TRNG} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_IOD_GENERIC_RX_C0_0:SKIP_TRNG} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_IOD_GENERIC_RX_C0_0:CLK_TRAIN_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_IOD_GENERIC_RX_C0_0:CLK_TRAIN_ERROR}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:A" "TRNG_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:B" "CORERESET_PF_C1_0:PLL_LOCK" "CORERESET_PF_C2_0:PLL_LOCK" "PF_CCC_C2_0:PLL_LOCK_0" "PF_IOD_GENERIC_RX_C0_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:Y" "PF_IOD_GENERIC_RX_C0_0:TRAINING_RESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMCLK_RESET_N" "CORERESET_PF_C1_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAMERA_CLK" "CORERESET_PF_C2_0:CLK" "CSI2_RXDecoder_0:CAM_CLOCK_I" "PF_CCC_C2_0:REF_CLK_0" "PF_IOD_GENERIC_RX_C0_0:RX_CLK_G" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_N" "PF_IOD_GENERIC_RX_C0_0:RX_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_P" "PF_IOD_GENERIC_RX_C0_0:RX_CLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C1_0:CLK" "CSI2_RXDecoder_0:PARALLEL_CLOCK_I" "PARALLEL_CLOCK" "PF_CCC_C2_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C1_0:EXT_RST_N" "CORERESET_PF_C2_0:EXT_RST_N" "PF_IOD_GENERIC_RX_C0_0:training_done_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C1_0:INIT_DONE" "CORERESET_PF_C2_0:INIT_DONE" "INIT_DONE" "PF_IOD_GENERIC_RX_C0_0:ARST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C2_0:FABRIC_RESET_N" "CSI2_RXDecoder_0:RESET_N_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:FRAME_START_O" "CoreGPIO_MIPI_CSI_0:GPIO_IN[1:1]" "FRAME_START" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:FRAME_VALID_O" "CoreGPIO_MIPI_CSI_0:GPIO_IN[0:0]" "FRAME_VALID" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L0_LP_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L0_LP_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L0_LP_DATA_N_I" "PF_IOD_GENERIC_RX_C0_0:L0_LP_DATA_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L1_LP_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L1_LP_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L1_LP_DATA_N_I" "PF_IOD_GENERIC_RX_C0_0:L1_LP_DATA_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L2_LP_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L2_LP_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L2_LP_DATA_N_I" "PF_IOD_GENERIC_RX_C0_0:L2_LP_DATA_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L3_LP_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L3_LP_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L3_LP_DATA_N_I" "PF_IOD_GENERIC_RX_C0_0:L3_LP_DATA_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:LINE_VALID_O" "CoreGPIO_MIPI_CSI_0:GPIO_IN[2:2]" "LINE_VALID" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_MIPI_CSI_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_MIPI_CSI_0:PRESETN" "PRESETN" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_N" "PF_IOD_GENERIC_RX_C0_0:RXD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D_P" "PF_IOD_GENERIC_RX_C0_0:RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L0_HS_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L0_RXD_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L1_HS_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L1_RXD_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L2_HS_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L2_RXD_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CSI2_RXDecoder_0:L3_HS_DATA_I" "PF_IOD_GENERIC_RX_C0_0:L3_RXD_DATA" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_TARGET" "CoreGPIO_MIPI_CSI_0:APB_bif" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign IMX219_IF_TOP
generate_component -component_name ${sd_name}
