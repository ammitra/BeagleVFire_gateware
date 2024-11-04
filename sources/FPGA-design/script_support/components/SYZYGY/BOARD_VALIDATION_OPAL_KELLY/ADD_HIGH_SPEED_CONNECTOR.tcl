
puts "======== Add High Speed Connector option: BOARD_VALIDATION_OPAL_KELLY ========"

# Import source files
import_files -hdl_source {script_support/HDL/XCVR_LOOPBACK/pattern_chk.v}
import_files -hdl_source {script_support/HDL/XCVR_LOOPBACK/pattern_gen.v}
import_files -hdl_source {script_support/HDL/XCVR_LOOPBACK/startup.v}

build_design_hierarchy
create_hdl_core -file $project_dir/hdl/startup.v -module {STARTUP} -library {work} -package {}
create_hdl_core -file $project_dir/hdl/pattern_chk.v -module {PATTERN_CHK} -library {work} -package {}
create_hdl_core -file $project_dir/hdl/pattern_gen.v -module {PATTERN_GEN} -library {work} -package {}

#source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/INIT_MONITOR.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/PF_CLK_DIV_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/PF_OSC_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/PF_TX_PLL_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/PF_CCC_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/PF_XCVR_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/PF_XCVR_REF_CLK_0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/Reset_sync_rx.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/Reset_sync_tx.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/Reset_Block.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/XCVR_LOOPBACK/XCVR_LOOPBACK.tcl





source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/HSIO_PWM_C0.tcl
#source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/PF_TX_PLL_C0.tcl
#source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/PF_XCVR_ERM_C0.tcl
#source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/PF_XCVR_ERM_C1.tcl
#source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/PF_XCVR_REF_CLK_C0.tcl
source script_support/components/SYZYGY/BOARD_VALIDATION_OPAL_KELLY/HIGH_SPEED_INTERFACE.tcl






set sd_name ${top_level_name}

sd_instantiate_component -sd_name ${sd_name} -component_name {HIGH_SPEED_INTERFACE} -instance_name {HIGH_SPEED_INTERFACE_0} 

#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO83_N} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO83_P} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO71_N} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO70_N} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO73_P} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO81_N} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO71_P} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO73_N} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO82_P} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO81_P} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO82_N} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO70_P} -port_name {} 


sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MSS_RESET_N_M2F" "HIGH_SPEED_INTERFACE_0:EXT_RST_N"} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:rx_val_o} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:TEST_MODE_0_LED} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:TEST_MODE_1_LED} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:TEST_MODE_2_LED} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:TEST_MODE_3_LED} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:error_o} -port_name {} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:lock_o} -port_name {} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DEVICE_INIT_DONE" "HIGH_SPEED_INTERFACE_0:DEVICE_INIT_DONE"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:XCVR_INIT_DONE" "HIGH_SPEED_INTERFACE_0:XCVR_INIT_DONE"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RCOSC_160MHZ_GL" "HIGH_SPEED_INTERFACE_0:RCOSC_160MHZ_GL"}

#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_2_FABRIC_RESET_N"} 

#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "HIGH_SPEED_INTERFACE_0:PCLK"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "HIGH_SPEED_INTERFACE_0:PRESETN"} 
#sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET" "HIGH_SPEED_INTERFACE_0:APBslave"} 




sd_delete_nets -sd_name ${sd_name} -net_names {BVF_RISCV_SUBSYSTEM_USER_LED_GPIO_OUT} 
sd_delete_nets -sd_name ${sd_name} -net_names {BVF_RISCV_SUBSYSTEM_USER_LED_GPIO_OE} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:USER_LED_GPIO_OUT} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:USER_LED_GPIO_OE} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {USER_LED_PADS_0:USER_LED_GPIO_OE} -value {VCC} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {USER_LED_PADS_0:USER_LED_GPIO_OUT} -pin_slices {"[0:0]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:rx_val_o" "USER_LED_PADS_0:USER_LED_GPIO_OUT[0:0]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:lock_o" "USER_LED_PADS_0:USER_LED_GPIO_OUT[1:1]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:error_o" "USER_LED_PADS_0:USER_LED_GPIO_OUT[2:2]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:TEST_MODE_3_LED" "USER_LED_PADS_0:USER_LED_GPIO_OUT[11:11]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:TEST_MODE_2_LED" "USER_LED_PADS_0:USER_LED_GPIO_OUT[10:10]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:TEST_MODE_1_LED" "USER_LED_PADS_0:USER_LED_GPIO_OUT[9:9]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"HIGH_SPEED_INTERFACE_0:TEST_MODE_0_LED" "USER_LED_PADS_0:USER_LED_GPIO_OUT[8:8]"} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {USER_LED_PADS_0:USER_LED_GPIO_OUT[3:3]} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {USER_LED_PADS_0:USER_LED_GPIO_OUT[7:7]} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {USER_LED_PADS_0:USER_LED_GPIO_OUT[6:6]} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {USER_LED_PADS_0:USER_LED_GPIO_OUT[5:5]} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {USER_LED_PADS_0:USER_LED_GPIO_OUT[4:4]} -value {GND} 
