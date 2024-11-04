puts "======== Add MIPI CSI option: IO_STUB ========"

#auto_promote_pad_pins -promote_all 0


source script_support/components/MIPI_CSI/IO_STUB/MIPI_CSI2_RX_IOD.tcl
source script_support/components/MIPI_CSI/IO_STUB/MIPI_CSI_INTERFACE.tcl

set sd_name ${top_level_name}

#auto_promote_pad_pins -promote_all 0
sd_instantiate_component -sd_name ${sd_name} -component_name {MIPI_CSI_INTERFACE} -instance_name {MIPI_CSI_INTERFACE_0} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CSI1_PWND} -port_name {}

#auto_promote_pad_pins -promote_all 1

#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_N} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_P} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D0_N} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D0_P} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D1_N} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D1_P} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D2_N} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D2_P} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D3_N} -port_direction {IN} 
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D3_P} -port_direction {IN} 

#sd_instantiate_component -sd_name ${sd_name} -component_name {MIPI_CSI_INTERFACE} -instance_name {MIPI_CSI_INTERFACE_0} 
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CSI1_PWND} -port_name {} 

#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD_N} -pin_slices {"[3:3]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD_N} -pin_slices {"[2:2]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD_N} -pin_slices {"[1:1]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD_N} -pin_slices {"[0:0]"} 
#
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD} -pin_slices {"[3:3]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD} -pin_slices {"[2:2]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD} -pin_slices {"[1:1]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {RXD} -pin_slices {"[0:0]"}
#

#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[3:3]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[2:2]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[1:1]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[0:0]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[3:3]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[2:2]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[1:1]"} 
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[0:0]"}
#
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_N" "MIPI_CSI_INTERFACE_0:RX_CLK_N"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_P" "MIPI_CSI_INTERFACE_0:RX_CLK_P"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D0_P" "MIPI_CSI_INTERFACE_0:RXD[0:0]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D0_N" "MIPI_CSI_INTERFACE_0:RXD_N[0:0]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D1_P" "MIPI_CSI_INTERFACE_0:RXD[1:1]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D1_N" "MIPI_CSI_INTERFACE_0:RXD_N[1:1]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D2_N" "MIPI_CSI_INTERFACE_0:RXD_N[2:2]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D2_P" "MIPI_CSI_INTERFACE_0:RXD[2:2]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D3_P" "MIPI_CSI_INTERFACE_0:RXD[3:3]"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D3_N" "MIPI_CSI_INTERFACE_0:RXD_N[3:3]"} 
