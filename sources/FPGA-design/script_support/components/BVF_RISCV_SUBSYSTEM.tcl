#source script_support/components/BVF_RISCV_SUBSYSTEM/USER_LED_GPIO.tcl

# Creating SmartDesign BVF_RISCV_SUBSYSTEM
set sd_name {BVF_RISCV_SUBSYSTEM}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_NXT} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_STP} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA7} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_OCn} -port_direction {IN} 

sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_RXD} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_RTS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_CTS} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PCLK} -port_direction {IN}

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {USER_BUTTON} -port_direction {IN} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CARD_CS} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DET} -port_direction {IN} 


sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TXBUS} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TX_EBL} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_RXBUS} -port_direction {IN} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TXBUS} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TX_EBL} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_RXBUS} -port_direction {IN} 

sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_2_M2F} -port_direction {OUT} -port_range {[27:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_2_OE_M2F} -port_direction {OUT} -port_range {[27:0]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_2_F2M} -port_direction {IN} -port_range {[27:0]} 

#-------------------------------------------------------------------------------
# Analog to Digital Converter pins (for cape analog inputs)
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_CSn} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_SCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MOSI} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MISO} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_IRQn} -port_direction {IN}


#-------------------------------------------------------------------------------
# Cape pins
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SCL} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SDA} -port_direction {INOUT}


#-------------------------------------------------------------------------------
# Ethernet PHY top level ports
#-------------------------------------------------------------------------------
#sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_RSTn} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_INTn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDIO} -port_direction {INOUT}


#-------------------------------------------------------------------------------
# Fabric interrupts
#-------------------------------------------------------------------------------
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_3_7} -port_direction {IN} -port_range {[7:3]} 


sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_A} -port_direction {IN} -port_range {[15:8]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_B} -port_direction {IN} -port_range {[23:16]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_C} -port_direction {IN} -port_range {[31:24]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_D} -port_direction {IN} -port_range {[39:32]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_E} -port_direction {IN} -port_range {[47:40]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_F} -port_direction {IN} -port_range {[55:48]} 

sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_56_58} -port_direction {IN} -port_range {[58:56]} 

#-------------------------------------------------------------------------------
# User LEDs
#-------------------------------------------------------------------------------
#sd_create_bus_port -sd_name ${sd_name} -port_name {USER_LED_GPIO_OUT} -port_direction {OUT} -port_range {[11:0]} 
#sd_create_bus_port -sd_name ${sd_name} -port_name {USER_LED_GPIO_OE} -port_direction {OUT} -port_range {[11:0]} 
#sd_create_bus_port -sd_name ${sd_name} -port_name {USER_LED_GPIO_IN} -port_direction {IN} -port_range {[11:0]} 



# Add FIC3_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC3_INITIATOR} -instance_name {FIC3_INITIATOR}



# Add APB_ARBITER instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {APB_ARBITER} -instance_name {} 



# Add I2C0_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SCL_BIBUF:D} -value {GND}



# Add I2C0_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SDA_BIBUF:D} -value {GND}



# Add IHC_SUBSYSTEM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IHC_SUBSYSTEM} -instance_name {IHC_SUBSYSTEM_0} 

# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_SOC_MSS} -instance_name {PF_SOC_MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[7:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[15:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[23:16]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[31:24]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[39:32]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[47:40]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[55:48]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {"[58:56]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[59]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[60]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[61]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[62]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[63]}

sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_3_7" "PF_SOC_MSS:MSS_INT_F2M[7:3]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_A" "PF_SOC_MSS:MSS_INT_F2M[15:8]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_B" "PF_SOC_MSS:MSS_INT_F2M[23:16]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_C" "PF_SOC_MSS:MSS_INT_F2M[31:24]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_D" "PF_SOC_MSS:MSS_INT_F2M[39:32]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_E" "PF_SOC_MSS:MSS_INT_F2M[47:40]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_F" "PF_SOC_MSS:MSS_INT_F2M[55:48]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_56_58" "PF_SOC_MSS:MSS_INT_F2M[58:56]"} 

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MSS_INT_M2F}
#sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:FIC_2_AXI4_TARGET}


# Add AND_DLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND_DLL_LOCKS}


# Clocks and resets
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "IHC_SUBSYSTEM_0:pclk" "PF_SOC_MSS:FIC_3_PCLK"}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "PF_SOC_MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "PF_SOC_MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "PF_SOC_MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "PF_SOC_MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:I2C_0_SCL_F2M" "I2C0_SCL_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:I2C_0_SDA_F2M" "I2C0_SDA_BIBUF:Y" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SDA_BIBUF:PAD" "I2C0_SDA"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SCL_BIBUF:PAD" "I2C0_SCL"}

sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_W_DISABLE1} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_W_DISABLE2} -port_direction {OUT} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_W_DISABLE1" "PF_SOC_MSS:GPIO_2_M2F_28"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_W_DISABLE2" "PF_SOC_MSS:GPIO_2_M2F_29"} 


sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:I2C_1_SCL" "I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:I2C_1_SDA" "I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_0_RXD" "UART0_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_0_TXD" "UART0_TXD" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_1_RXD_F2M" "M2_UART_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_1_TXD_M2F" "M2_UART_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_1_RTS_M2F" "M2_UART_RTS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_1_CTS_F2M" "M2_UART_CTS" }
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_DCD_F2M} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_DSR_F2M} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_RI_F2M} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_DTR_M2F}

sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:A" "PF_SOC_MSS:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:B" "PF_SOC_MSS:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:C" "PF_SOC_MSS:FIC_2_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:D" "PF_SOC_MSS:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:Y" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:I2C_0_SCL_OE_M2F" "I2C0_SCL_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:I2C_0_SDA_OE_M2F" "I2C0_SDA_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "PF_SOC_MSS:ODT" }

#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_0_13_IN" "USER_BUTTON"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_0_12_OUT" "SD_CARD_CS"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_F2M_31" "SD_DET"} 

#-------------------------------------------------------------------------------
# Connect ADC.
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:QSPI_CLK" "ADC_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:QSPI_SS0" "ADC_CSn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:QSPI_DATA0" "ADC_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:QSPI_DATA1" "ADC_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_IRQn" "PF_SOC_MSS:GPIO_1_20_IN" }

#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "PF_SOC_MSS:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "PF_SOC_MSS:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "PF_SOC_MSS:RESET_N" }

#-------------------------------------------------------------------------------
# Ethernet PHY connections
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_MDIO" "PF_SOC_MSS:MAC_0_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_MDC" "PF_SOC_MSS:MAC_0_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_INTn" "PF_SOC_MSS:MSS_INT_F2M[2:2]" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_N" "PF_SOC_MSS:SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_P" "PF_SOC_MSS:SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_N" "PF_SOC_MSS:SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_P" "PF_SOC_MSS:SGMII_TX0_P" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_N" "PF_SOC_MSS:SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_P" "PF_SOC_MSS:SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_N" "PF_SOC_MSS:SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_P" "PF_SOC_MSS:SGMII_TX1_P" }

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MAC_1_MDI_F2M} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MAC_1_MDO_OE_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MAC_1_MDC_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MAC_1_MDO_M2F} -port_name {} 

#-------------------------------------------------------------------------------
# OTG USB
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_OCn" "PF_SOC_MSS:GPIO_1_23_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_CLK" "USB_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA0" "USB_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA1" "USB_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA2" "USB_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA3" "USB_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA4" "USB_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA5" "USB_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA6" "USB_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA7" "USB_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DIR" "USB_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_NXT" "USB_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_STP" "USB_STP" }

#-------------------------------------------------------------------------------

sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:presetn" "PRESETN"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MSS_INT_F2M[63]" "IHC_SUBSYSTEM_0:E51_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MSS_INT_F2M[62]" "IHC_SUBSYSTEM_0:U54_1_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MSS_INT_F2M[61]" "IHC_SUBSYSTEM_0:U54_2_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MSS_INT_F2M[60]" "IHC_SUBSYSTEM_0:U54_3_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MSS_INT_F2M[59]" "IHC_SUBSYSTEM_0:U54_4_IRQ" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:CA" "CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "PF_SOC_MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "PF_SOC_MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "PF_SOC_MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "PF_SOC_MSS:DQS_N" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APB3mmaster" "APB_ARBITER_0:APB_MASTER_low" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MMASTER" "PF_SOC_MSS:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:APB3mmaster" "APB_ARBITER_0:APB_MASTER_high" }

#-------------------------------------------------------------------------------
# eMMC.
#-------------------------------------------------------------------------------
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:EMMC} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:EMMC_IN} -port_name {}

#-------------------------------------------------------------------------------
# PCIe interrupt.
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INT} -port_direction {IN}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INT" "PF_SOC_MSS:MSS_INT_F2M[1:1]" }


#-------------------------------------------------------------------------------
# Cape
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_2_TXD_M2F" "MMUART_2_TXD"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_2_RXD_F2M" "MMUART_2_RXD"}

sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_3_TXD_M2F" "MMUART_3_TXD"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_3_RXD_F2M" "MMUART_3_RXD"}

sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_4_TXD_M2F" "MMUART_4_TXD"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_4_RXD_F2M" "MMUART_4_RXD"}

#-------------------------------------------------------------------------------
# User LEDs
#-------------------------------------------------------------------------------
#sd_instantiate_component -sd_name ${sd_name} -component_name {USER_LED_GPIO} -instance_name {}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APBmslave0" "USER_LED_GPIO_0:APB_bif"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"USER_LED_GPIO_0:PRESETN" "PRESETN"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "USER_LED_GPIO_0:PCLK"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"USER_LED_GPIO_0:GPIO_OE" "USER_LED_GPIO_OE"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"USER_LED_GPIO_0:GPIO_OUT" "USER_LED_GPIO_OUT"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"USER_LED_GPIO_0:GPIO_IN" "USER_LED_GPIO_IN"}
#sd_mark_pins_unused -sd_name ${sd_name} -pin_names {USER_LED_GPIO_0:INT}

#-------------------------------------------------------------------------------
# High speed connector VIO_ENABLE.
#-------------------------------------------------------------------------------
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:GPIO_2_M2F_30} -port_name {} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_30} -new_port_name {VIO_ENABLE} 

#-------------------------------------------------------------------------------
# Promote signals to module's top level
#-------------------------------------------------------------------------------
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_2_AXI4_TARGET} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_1_AXI4_TARGET} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_0_AXI4_TARGET} -port_name {} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {FIC3_INITIATOR:APBmslave1} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {FIC3_INITIATOR:APBmslave2} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {FIC3_INITIATOR:APBmslave4} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {FIC3_INITIATOR:APBmslave16} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_0_ACLK} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_1_ACLK} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_2_ACLK} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_RESET_N_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_3_APB_M_PSTRB} -port_name {}

#-------------------------------------------------------------------------------

#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[30:30]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[29:29]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[28:28]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[27:27]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[26:26]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[25:25]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[24:24]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[23:23]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[20:20]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {"[0:0]"} 

#sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[30:30]" "PF_SOC_MSS:GPIO_2_F2M_30"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[29:29]" "PF_SOC_MSS:GPIO_2_F2M_29"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[28:28]" "PF_SOC_MSS:GPIO_2_F2M_28"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[27:27]" "PF_SOC_MSS:GPIO_2_F2M_27"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[26:26]" "PF_SOC_MSS:GPIO_2_F2M_26"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[25:25]" "PF_SOC_MSS:GPIO_2_F2M_25"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[24:24]" "PF_SOC_MSS:GPIO_2_F2M_24"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[23:23]" "PF_SOC_MSS:GPIO_2_F2M_23"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[22:22]" "PF_SOC_MSS:GPIO_2_F2M_22"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[21:21]" "PF_SOC_MSS:GPIO_2_F2M_21"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[20:20]" "PF_SOC_MSS:GPIO_2_F2M_20"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[19:19]" "PF_SOC_MSS:GPIO_2_F2M_19"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[18:18]" "PF_SOC_MSS:GPIO_2_F2M_18"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[17:17]" "PF_SOC_MSS:GPIO_2_F2M_17"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[16:16]" "PF_SOC_MSS:GPIO_2_F2M_16"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[15:15]" "PF_SOC_MSS:GPIO_2_F2M_15"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[14:14]" "PF_SOC_MSS:GPIO_2_F2M_14"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[13:13]" "PF_SOC_MSS:GPIO_2_F2M_13"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[12:12]" "PF_SOC_MSS:GPIO_2_F2M_12"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[11:11]" "PF_SOC_MSS:GPIO_2_F2M_11"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[10:10]" "PF_SOC_MSS:GPIO_2_F2M_10"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[9:9]" "PF_SOC_MSS:GPIO_2_F2M_9"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[8:8]" "PF_SOC_MSS:GPIO_2_F2M_8"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[7:7]" "PF_SOC_MSS:GPIO_2_F2M_7"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[6:6]" "PF_SOC_MSS:GPIO_2_F2M_6"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[5:5]" "PF_SOC_MSS:GPIO_2_F2M_5"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[4:4]" "PF_SOC_MSS:GPIO_2_F2M_4"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[3:3]" "PF_SOC_MSS:GPIO_2_F2M_3"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[2:2]" "PF_SOC_MSS:GPIO_2_F2M_2"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[1:1]" "PF_SOC_MSS:GPIO_2_F2M_1"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[0:0]" "PF_SOC_MSS:GPIO_2_F2M_0"} 


#-------------------------------------------------------------------------------

#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[30:30]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[29:29]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[28:28]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[27:27]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[26:26]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[25:25]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[24:24]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[23:23]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[20:20]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {"[0:0]"} 

#sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_30" "GPIO_2_M2F[30:30]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_29" "GPIO_2_M2F[29:29]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_28" "GPIO_2_M2F[28:28]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_27" "GPIO_2_M2F[27:27]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_26" "GPIO_2_M2F[26:26]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_25" "GPIO_2_M2F[25:25]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_24" "GPIO_2_M2F[24:24]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_23" "GPIO_2_M2F[23:23]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_22" "GPIO_2_M2F[22:22]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_21" "GPIO_2_M2F[21:21]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_20" "GPIO_2_M2F[20:20]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_19" "GPIO_2_M2F[19:19]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_18" "GPIO_2_M2F[18:18]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_17" "GPIO_2_M2F[17:17]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_16" "GPIO_2_M2F[16:16]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_15" "GPIO_2_M2F[15:15]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_14" "GPIO_2_M2F[14:14]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_13" "GPIO_2_M2F[13:13]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_12" "GPIO_2_M2F[12:12]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_11" "GPIO_2_M2F[11:11]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_10" "GPIO_2_M2F[10:10]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_9" "GPIO_2_M2F[9:9]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_8" "GPIO_2_M2F[8:8]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_7" "GPIO_2_M2F[7:7]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_6" "GPIO_2_M2F[6:6]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_5" "GPIO_2_M2F[5:5]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_4" "GPIO_2_M2F[4:4]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_3" "GPIO_2_M2F[3:3]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_2" "GPIO_2_M2F[2:2]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_1" "GPIO_2_M2F[1:1]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_0" "GPIO_2_M2F[0:0]"} 

#-------------------------------------------------------------------------------

#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[30:30]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[29:29]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[28:28]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[27:27]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[26:26]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[25:25]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[24:24]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[23:23]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[20:20]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {"[0:0]"} 


#sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[30:30]" "PF_SOC_MSS:GPIO_2_OE_M2F_30"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[29:29]" "PF_SOC_MSS:GPIO_2_OE_M2F_29"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[28:28]" "PF_SOC_MSS:GPIO_2_OE_M2F_28"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[27:27]" "PF_SOC_MSS:GPIO_2_OE_M2F_27"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[26:26]" "PF_SOC_MSS:GPIO_2_OE_M2F_26"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[25:25]" "PF_SOC_MSS:GPIO_2_OE_M2F_25"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[24:24]" "PF_SOC_MSS:GPIO_2_OE_M2F_24"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[23:23]" "PF_SOC_MSS:GPIO_2_OE_M2F_23"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[22:22]" "PF_SOC_MSS:GPIO_2_OE_M2F_22"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[21:21]" "PF_SOC_MSS:GPIO_2_OE_M2F_21"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[20:20]" "PF_SOC_MSS:GPIO_2_OE_M2F_20"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[19:19]" "PF_SOC_MSS:GPIO_2_OE_M2F_19"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[18:18]" "PF_SOC_MSS:GPIO_2_OE_M2F_18"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[17:17]" "PF_SOC_MSS:GPIO_2_OE_M2F_17"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[16:16]" "PF_SOC_MSS:GPIO_2_OE_M2F_16"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[15:15]" "PF_SOC_MSS:GPIO_2_OE_M2F_15"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[14:14]" "PF_SOC_MSS:GPIO_2_OE_M2F_14"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[13:13]" "PF_SOC_MSS:GPIO_2_OE_M2F_13"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[12:12]" "PF_SOC_MSS:GPIO_2_OE_M2F_12"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[11:11]" "PF_SOC_MSS:GPIO_2_OE_M2F_11"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[10:10]" "PF_SOC_MSS:GPIO_2_OE_M2F_10"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[9:9]" "PF_SOC_MSS:GPIO_2_OE_M2F_9"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[8:8]" "PF_SOC_MSS:GPIO_2_OE_M2F_8"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[7:7]" "PF_SOC_MSS:GPIO_2_OE_M2F_7"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[6:6]" "PF_SOC_MSS:GPIO_2_OE_M2F_6"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[5:5]" "PF_SOC_MSS:GPIO_2_OE_M2F_5"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[4:4]" "PF_SOC_MSS:GPIO_2_OE_M2F_4"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[3:3]" "PF_SOC_MSS:GPIO_2_OE_M2F_3"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[2:2]" "PF_SOC_MSS:GPIO_2_OE_M2F_2"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[1:1]" "PF_SOC_MSS:GPIO_2_OE_M2F_1"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[0:0]" "PF_SOC_MSS:GPIO_2_OE_M2F_0"} 


sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_0_AXI4_INITIATOR} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PF_SOC_MSS:FIC_1_AXI4_INITIATOR} -port_name {}

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_TXD_OE_M2F} 

sd_rename_port -sd_name ${sd_name} -current_port_name {APBmslave1} -new_port_name {CAPE_APB_MTARGET} 
sd_rename_port -sd_name ${sd_name} -current_port_name {APBmslave2} -new_port_name {CSI_APB_MTARGET} 
sd_rename_port -sd_name ${sd_name} -current_port_name {APBmslave4} -new_port_name {HSI_APB_MTARGET} 
sd_rename_port -sd_name ${sd_name} -current_port_name {APBmslave16} -new_port_name {M2_APB_MTARGET} 

#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_TXBUS" "PF_SOC_MSS:CAN_0_TXBUS_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_TX_EBL" "PF_SOC_MSS:CAN_0_TX_EBL_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_RXBUS" "PF_SOC_MSS:CAN_0_RXBUS_F2M"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_TXBUS" "PF_SOC_MSS:CAN_1_TXBUS_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_TX_EBL" "PF_SOC_MSS:CAN_1_TX_EBL_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_RXBUS" "PF_SOC_MSS:CAN_1_RXBUS_F2M"} 





#-------------------------------------------------------------------------------
# Additional cape peripherals WIP.
#-------------------------------------------------------------------------------

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_SS1_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_CLK_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_DO_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_CLK_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_DO_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_SS1_M2F} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_SS_F2M} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_CLK_F2M} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_SS_F2M} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_CLK_F2M} -value {GND} 

sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_0_DI_F2M} -port_name {} 
sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_1_DI_F2M} -port_name {} 
sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_0_CLK_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_0_DO_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_0_SS1_M2F} -port_name {} 

sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_0_DI_F2M} -new_port_name {SPI_0_DI} 
sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_1_DI_F2M} -new_port_name {SPI_1_DI} 

sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_0_CLK_M2F} -new_port_name {SPI_0_CLK} 
sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_0_DO_M2F} -new_port_name {SPI_0_DO} 
sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_0_SS1_M2F} -new_port_name {SPI_0_SS1}

sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_1_SS1_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_1_CLK_M2F} -port_name {} 
sd_connect_pin_to_port -sd_name {BVF_RISCV_SUBSYSTEM} -pin_name {PF_SOC_MSS:SPI_1_DO_M2F} -port_name {} 

sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_1_SS1_M2F} -new_port_name {SPI_1_SS1} 
sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_1_DO_M2F} -new_port_name {SPI_1_DO} 
sd_rename_port -sd_name {BVF_RISCV_SUBSYSTEM} -current_port_name {SPI_1_CLK_M2F} -new_port_name {SPI_1_CLK} 

#-------------------------------------------------------------------------------
# Temporary connections to allow running through complete flow.
#-------------------------------------------------------------------------------
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MSS_INT_F2M[0:0]} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MSS_RESET_N_F2M} -value {VCC}
#-------------------------------------------------------------------------------


# Mark pins unused
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:PLL_CPU_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:PLL_DDR_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:PLL_SGMII_LOCK_M2F}

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign BVF_RISCV_SUBSYSTEM
generate_component -component_name ${sd_name}

