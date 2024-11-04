
puts "======== Add High Speed Connector option: BOARD_VALIDATION_SEEED_STUDIO ========"

# Import source files
import_files -hdl_source {script_support/HDL/XCVR_LOOPBACK/pattern_chk.v}
import_files -hdl_source {script_support/HDL/XCVR_LOOPBACK/pattern_gen.v}
import_files -hdl_source {script_support/HDL/XCVR_LOOPBACK/startup.v}

build_design_hierarchy
create_hdl_core -file $project_dir/hdl/startup.v -module {STARTUP} -library {work} -package {}
create_hdl_core -file $project_dir/hdl/pattern_chk.v -module {PATTERN_CHK} -library {work} -package {}
create_hdl_core -file $project_dir/hdl/pattern_gen.v -module {PATTERN_GEN} -library {work} -package {}


source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/PF_CLK_DIV_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/PF_TX_PLL_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/PF_CCC_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/PF_XCVR_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/PF_XCVR_REF_CLK_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/Reset_sync_rx.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/Reset_sync_tx.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/Reset_Block.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/XCVR_LOOPBACK/XCVR_LOOPBACK.tcl



source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/PF_CCC_C1.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/PF_XCVR_REF_CLK_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/PF_TX_PLL_XCVR1.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/HSIO_CoreGPIO_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_SEEED_STUDIO/HIGH_SPEED_INTERFACE.tcl




set sd_name ${top_level_name}

sd_instantiate_component -sd_name ${sd_name} -component_name {HIGH_SPEED_INTERFACE} -instance_name {HIGH_SPEED_INTERFACE_0} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MSS_RESET_N_M2F" "HIGH_SPEED_INTERFACE_0:EXT_RST_N"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DEVICE_INIT_DONE" "HIGH_SPEED_INTERFACE_0:DEVICE_INIT_DONE"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:XCVR_INIT_DONE" "HIGH_SPEED_INTERFACE_0:XCVR_INIT_DONE"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RCOSC_160MHZ_GL" "HIGH_SPEED_INTERFACE_0:RCOSC_160MHZ_GL"}


#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN3_USER_LED_0} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN4_USER_LED_1} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN5_USER_LED_2} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN6_USER_LED_3} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN7_USER_LED_4} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN8_USER_LED_5} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN9_USER_LED_6} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN10_USER_LED_7} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN11_USER_LED_8} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN12_USER_LED_9} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN13_USER_LED_10} -port_direction {OUT} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN14_USER_LED_11} -port_direction {OUT} 
#
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR1_RX_VALID" "P8_PIN3_USER_LED_0"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR1_LOCK" "P8_PIN4_USER_LED_1"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR1_ERROR" "P8_PIN5_USER_LED_2"} 
#
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR2_RX_VALID" "P8_PIN6_USER_LED_3"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR2_LOCK" "P8_PIN7_USER_LED_4"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR2_ERROR" "P8_PIN8_USER_LED_5"} 
#
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR3_RX_VALID" "P8_PIN9_USER_LED_6"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR3_LOCK" "P8_PIN10_USER_LED_7"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR3_ERROR" "P8_PIN11_USER_LED_8"} 
#
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR_0B_REF_CLK_PLL_LOCK" "P8_PIN12_USER_LED_9"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:XCVR_0C_REF_CLK_PLL_LOCK" "P8_PIN13_USER_LED_10"} 
#
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {P8_PIN14_USER_LED_11} -value {GND} 


sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:TEST_MODE_3_LED} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:TEST_MODE_2_LED} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:TEST_MODE_1_LED} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO82P} -port_name {} 
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDI_F2M} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MAC_1_MDI_F2M" "HIGH_SPEED_INTERFACE_0:MAC_1_MDI_F2M"} 
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDO_M2F} 
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDO_OE_M2F} 
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDC_M2F} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MAC_1_MDC_M2F" "HIGH_SPEED_INTERFACE_0:MAC_1_MDC_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MAC_1_MDO_OE_M2F" "HIGH_SPEED_INTERFACE_0:MAC_1_MDO_OE_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MAC_1_MDO_M2F" "HIGH_SPEED_INTERFACE_0:MAC_1_MDO_M2F"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "HIGH_SPEED_INTERFACE_0:PCLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "HIGH_SPEED_INTERFACE_0:PRESETN"} 
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET" "HIGH_SPEED_INTERFACE_0:APB_TARGET"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_0_FABRIC_RESET_N" "HIGH_SPEED_INTERFACE_0:SYS_RESET_N"} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO83N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO70P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO71P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO73P_C2P_CLKP} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO81N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO83P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO70N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO71N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO73N_C2P_CLKN} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:B0_HSIO81P} -port_name {} 

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR_0C_REF_CLK_PLL_LOCK} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR1_ERROR} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR1_LOCK} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR1_RX_VALID} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR2_ERROR} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR2_LOCK} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR2_RX_VALID} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR3_ERROR} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR3_LOCK} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR3_RX_VALID} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {HIGH_SPEED_INTERFACE_0:XCVR_0B_REF_CLK_PLL_LOCK} 

# Override software control of VIO.
sd_delete_nets -sd_name ${sd_name} -net_names {VIO_ENABLE} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:VIO_ENABLE} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VIO_ENABLE} -value {GND} 

