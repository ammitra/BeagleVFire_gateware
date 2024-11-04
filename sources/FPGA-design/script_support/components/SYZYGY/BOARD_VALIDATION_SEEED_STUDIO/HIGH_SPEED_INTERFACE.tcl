# Creating SmartDesign HIGH_SPEED_INTERFACE
set sd_name {HIGH_SPEED_INTERFACE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO70P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO71P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO73P_C2P_CLKP} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO81N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO83P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDC_M2F} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDO_M2F} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDO_OE_M2F} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RCOSC_160MHZ_GL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SYS_RESET_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REFCLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0C_REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0C_REFCLK_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX2_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX2_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX3_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_RX3_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO70N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO71N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO73N_C2P_CLKN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO81P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO82P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO83N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDI_F2M} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_0_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_1_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_2_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TEST_MODE_3_LED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR1_ERROR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR1_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR1_RX_VALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR2_ERROR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR2_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR2_RX_VALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR3_ERROR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR3_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR3_RX_VALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0B_REF_CLK_PLL_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0C_REF_CLK_PLL_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX2_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX2_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX3_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_TX3_P} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {B0_HSIO82N} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PADDR} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PWDATA} -port_direction {IN} -port_range {[31:0]}

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



# Add AND2_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_1}



# Add BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_0}



# Add HSIO_CoreGPIO_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {HSIO_CoreGPIO_C0} -instance_name {HSIO_CoreGPIO_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[0:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_IN[0:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[1:1]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_IN[1:1]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[2:2]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_IN[2:2]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[3:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_IN[3:3]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_IN} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[10:10]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[11:11]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[12:12]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[13:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[14:14]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[15:15]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[16:16]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[17:17]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[18:18]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[19:19]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[4:4]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[5:5]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[6:6]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[8:8]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {HSIO_CoreGPIO_C0_0:GPIO_OUT} -pin_slices {[9:9]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:GPIO_OUT[9:9]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HSIO_CoreGPIO_C0_0:INT}



# Add PF_CCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {PF_CCC_C0_0}



# Add PF_CCC_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C1} -instance_name {PF_CCC_C1_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_CCC_C1_0:PLL_POWERDOWN_N_0} -value {VCC}



# Add PF_CLK_DIV_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CLK_DIV_C0} -instance_name {PF_CLK_DIV_C0_0}



# Add PF_TX_PLL_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_0} -instance_name {PF_TX_PLL_0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_TX_PLL_0_0:CLK_125}



# Add PF_TX_PLL_XCVR1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_XCVR1} -instance_name {PF_TX_PLL_XCVR1_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_TX_PLL_XCVR1_0:CLK_125}



# Add PF_XCVR_REF_CLK_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_0} -instance_name {PF_XCVR_REF_CLK_0_0}



# Add PF_XCVR_REF_CLK_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_C0} -instance_name {PF_XCVR_REF_CLK_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_XCVR_REF_CLK_C0_0:REF_CLK}



# Add XCVR_LOOPBACK_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {XCVR_LOOPBACK} -instance_name {XCVR_LOOPBACK_0}



# Add XCVR_LOOPBACK_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {XCVR_LOOPBACK} -instance_name {XCVR_LOOPBACK_1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_1:TEST_MODE_0_LED}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_1:TEST_MODE_1_LED}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_1:TEST_MODE_2_LED}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_1:TEST_MODE_3_LED}



# Add XCVR_LOOPBACK_2 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {XCVR_LOOPBACK} -instance_name {XCVR_LOOPBACK_2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_2:TEST_MODE_0_LED}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_2:TEST_MODE_1_LED}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_2:TEST_MODE_2_LED}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {XCVR_LOOPBACK_2:TEST_MODE_3_LED}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:A" "HSIO_CoreGPIO_C0_0:GPIO_IN[17:17]" "PF_CCC_C0_0:PLL_LOCK_0" "XCVR_0B_REF_CLK_PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:B" "PF_TX_PLL_0_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_0:Y" "XCVR_LOOPBACK_0:XCVR_REF_CLK_LOCK" "XCVR_LOOPBACK_2:XCVR_REF_CLK_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_1:A" "PF_TX_PLL_XCVR1_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_1:B" "HSIO_CoreGPIO_C0_0:GPIO_IN[18:18]" "PF_CCC_C1_0:PLL_LOCK_0" "XCVR_0C_REF_CLK_PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_1:Y" "XCVR_LOOPBACK_1:XCVR_REF_CLK_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO70N" "HSIO_CoreGPIO_C0_0:GPIO_OUT[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO70P" "HSIO_CoreGPIO_C0_0:GPIO_IN[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO71N" "HSIO_CoreGPIO_C0_0:GPIO_OUT[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO71P" "HSIO_CoreGPIO_C0_0:GPIO_IN[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO73N_C2P_CLKN" "HSIO_CoreGPIO_C0_0:GPIO_OUT[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO73P_C2P_CLKP" "HSIO_CoreGPIO_C0_0:GPIO_IN[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO81N" "HSIO_CoreGPIO_C0_0:GPIO_IN[19:19]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO81P" "SYS_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO82N" "BIBUF_0:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO82P" "MAC_1_MDC_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO83N" "HSIO_CoreGPIO_C0_0:GPIO_OUT[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"B0_HSIO83P" "HSIO_CoreGPIO_C0_0:GPIO_IN[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:D" "MAC_1_MDO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:E" "MAC_1_MDO_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:Y" "MAC_1_MDI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVICE_INIT_DONE" "XCVR_LOOPBACK_0:DEVICE_INIT_DONE" "XCVR_LOOPBACK_1:DEVICE_INIT_DONE" "XCVR_LOOPBACK_2:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "XCVR_LOOPBACK_0:EXT_RST_N" "XCVR_LOOPBACK_1:EXT_RST_N" "XCVR_LOOPBACK_2:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[10:10]" "XCVR1_ERROR" "XCVR_LOOPBACK_1:error_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[11:11]" "XCVR2_RX_VALID" "XCVR_LOOPBACK_2:rx_val_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[12:12]" "XCVR2_LOCK" "XCVR_LOOPBACK_2:lock_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[13:13]" "XCVR2_ERROR" "XCVR_LOOPBACK_2:error_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[14:14]" "XCVR3_RX_VALID" "XCVR_LOOPBACK_0:rx_val_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[15:15]" "XCVR3_LOCK" "XCVR_LOOPBACK_0:lock_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[16:16]" "XCVR3_ERROR" "XCVR_LOOPBACK_0:error_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[8:8]" "XCVR1_RX_VALID" "XCVR_LOOPBACK_1:rx_val_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:GPIO_IN[9:9]" "XCVR1_LOCK" "XCVR_LOOPBACK_1:lock_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSIO_CoreGPIO_C0_0:PRESETN" "PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "PF_TX_PLL_0_0:FAB_REF_CLK" "XCVR_LOOPBACK_0:XCVR_REF_CLK" "XCVR_LOOPBACK_2:XCVR_REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_C0_0:REF_CLK_0" "PF_XCVR_REF_CLK_0_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_C1_0:OUT0_FABCLK_0" "PF_TX_PLL_XCVR1_0:FAB_REF_CLK" "XCVR_LOOPBACK_1:XCVR_REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC_C1_0:REF_CLK_0" "PF_XCVR_REF_CLK_C0_0:FAB_REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_IN" "RCOSC_160MHZ_GL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_OUT" "XCVR_LOOPBACK_0:RCOSC_160MHZ_GL" "XCVR_LOOPBACK_1:RCOSC_160MHZ_GL" "XCVR_LOOPBACK_2:RCOSC_160MHZ_GL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_0_0:REF_CLK_PAD_N" "XCVR_0B_REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_0_0:REF_CLK_PAD_P" "XCVR_0B_REFCLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_N" "XCVR_0C_REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_P" "XCVR_0C_REFCLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_0_LED" "XCVR_LOOPBACK_0:TEST_MODE_0_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_1_LED" "XCVR_LOOPBACK_0:TEST_MODE_1_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_2_LED" "XCVR_LOOPBACK_0:TEST_MODE_2_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TEST_MODE_3_LED" "XCVR_LOOPBACK_0:TEST_MODE_3_LED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_INIT_DONE" "XCVR_LOOPBACK_0:XCVR_INIT_DONE" "XCVR_LOOPBACK_1:XCVR_INIT_DONE" "XCVR_LOOPBACK_2:XCVR_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_RXD_N" "XCVR_RX3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_RXD_P" "XCVR_RX3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_TXD_N" "XCVR_TX3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_0:LANE0_TXD_P" "XCVR_TX3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_1:LANE0_RXD_N" "XCVR_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_1:LANE0_RXD_P" "XCVR_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_1:LANE0_TXD_N" "XCVR_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_1:LANE0_TXD_P" "XCVR_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_2:LANE0_RXD_N" "XCVR_RX2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_2:LANE0_RXD_P" "XCVR_RX2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_2:LANE0_TXD_N" "XCVR_TX2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_LOOPBACK_2:LANE0_TXD_P" "XCVR_TX2_P" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_TARGET" "HSIO_CoreGPIO_C0_0:APB_bif" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_0_0:CLKS_TO_XCVR" "XCVR_LOOPBACK_0:CLKS_FROM_TXPLL_0" "XCVR_LOOPBACK_2:CLKS_FROM_TXPLL_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_XCVR1_0:CLKS_TO_XCVR" "XCVR_LOOPBACK_1:CLKS_FROM_TXPLL_0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign HIGH_SPEED_INTERFACE
generate_component -component_name ${sd_name}
