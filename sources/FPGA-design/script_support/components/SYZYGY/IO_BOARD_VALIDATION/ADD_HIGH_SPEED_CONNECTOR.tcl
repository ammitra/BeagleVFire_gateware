
puts "======== Add High Speed Connector option: IO_BOARD_VALIDATION ========"


source script_support/components/SYZYGY/IO_BOARD_VALIDATION/HSIO_PWM_C0.tcl

#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_IO_C0.tcl
#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_IO_C1.tcl
#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_IO_C2.tcl
#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_IO_C3.tcl
#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_IO_C4.tcl
#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_IO_C5.tcl
source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_TX_PLL_C0.tcl
source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_XCVR_ERM_C0.tcl
source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_XCVR_ERM_C1.tcl
source script_support/components/SYZYGY/IO_BOARD_VALIDATION/PF_XCVR_REF_CLK_C0.tcl

source script_support/components/SYZYGY/IO_BOARD_VALIDATION/HIGH_SPEED_INTERFACE.tcl

#source script_support/components/SYZYGY/IO_BOARD_VALIDATION/HIGH_SPEED_CONNECTOR.tcl

set sd_name ${top_level_name}

sd_instantiate_component -sd_name ${sd_name} -component_name {HIGH_SPEED_INTERFACE} -instance_name {HIGH_SPEED_INTERFACE_0} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO83_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO83_P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO71_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO70_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO73_P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO81_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO71_P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO73_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO82_P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO81_P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO82_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {HIGH_SPEED_INTERFACE_0:HSIO70_P} -port_name {} 



sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_2_FABRIC_RESET_N" "HIGH_SPEED_INTERFACE_0:PCS_PMA_ARST_N"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "HIGH_SPEED_INTERFACE_0:PCLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "HIGH_SPEED_INTERFACE_0:PRESETN"} 
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET" "HIGH_SPEED_INTERFACE_0:APBslave"} 
