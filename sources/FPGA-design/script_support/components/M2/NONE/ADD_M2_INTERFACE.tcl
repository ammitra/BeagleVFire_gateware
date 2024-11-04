#===============================================================================
# Tie off and unused signals when no M.2 interface is included.
#===============================================================================

puts "======== Add M.2 option: NONE ========"
set sd_name ${top_level_name}

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:FIC_0_AXI4_TARGET} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_APB_MTARGET} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:PCIE_INT} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_RXD} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_CTS} -value {GND} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_TXD} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_RTS} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:FIC_0_AXI4_INITIATOR} 

