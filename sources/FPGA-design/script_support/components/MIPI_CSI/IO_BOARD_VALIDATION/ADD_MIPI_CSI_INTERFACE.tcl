puts "======== Add MIPI CSI option: IO_BOARD_VALIDATION ========"

source script_support/components/MIPI_CSI/IO_BOARD_VALIDATION/CSI_TEST_PWM.tcl
source script_support/components/MIPI_CSI/IO_BOARD_VALIDATION/MIPI_CSI_INTERFACE.tcl

set sd_name ${top_level_name}

sd_instantiate_component -sd_name ${sd_name} -component_name {MIPI_CSI_INTERFACE} -instance_name {MIPI_CSI_INTERFACE_0} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "MIPI_CSI_INTERFACE_0:PCLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "MIPI_CSI_INTERFACE_0:PRESETN"} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CAM_D_P} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CSI1_PWND} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CAM_D_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CAM_C_N} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CAM_C_P} -port_name {} 
