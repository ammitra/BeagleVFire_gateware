#-------------------------------------------------------------------------------
# Build the Cape module
#-------------------------------------------------------------------------------
source script_support/components/CAPE/DEFAULT/ADD_CAPE.tcl
puts "======== Add cape option: COMMS_CAPE ========"
set sd_name ${top_level_name}

#-------------------------------------------------------------------------------
# RS485 pins
#-------------------------------------------------------------------------------
sd_disconnect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_2_TXD" "BVF_RISCV_SUBSYSTEM:MMUART_2_RXD" }
sd_delete_ports -sd_name ${sd_name} -port_names {P9_24}
sd_delete_ports -sd_name ${sd_name} -port_names {P9_26}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MMUART_2_RXD} -value {GND} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MMUART_2_TXD} 

#-------------------------------------------------------------------------------
# CAN pins
#-------------------------------------------------------------------------------

sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_1_RXBUS}
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_1_TXBUS}
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:CAN_1_RXBUS} -port_name {}
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:CAN_1_TXBUS} -port_name {}
sd_rename_port -sd_name ${sd_name} -current_port_name {CAN_1_RXBUS} -new_port_name {P9_24}
sd_rename_port -sd_name ${sd_name} -current_port_name {CAN_1_TXBUS} -new_port_name {P9_26}
sd_clear_pin_attributes -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_1_TX_EBL}
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:CAN_1_TX_EBL} -port_name {}
sd_rename_port -sd_name ${sd_name} -current_port_name {CAN_1_TX_EBL} -new_port_name {P9_25}