puts "======== Add cape option: NONE ========"

set sd_name ${top_level_name}

#-------------------------------------------------------------------------------
# Cape pins
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_11} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_13} -port_direction {OUT}


#-------------------------------------------------------------------------------
# Instantiate.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Connections.
#-------------------------------------------------------------------------------


# Clocks and resets
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "CAPE:PCLK"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "CAPE:PRESETN" }


sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_4_TXD" "P9_13"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_4_RXD" "P9_11"}



#-------------------------------------------------------------------------------

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAPE_APB_MTARGET} 

#-------------------------------------------------------------------------------

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M} -value {GND} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:FIC_1_AXI4_INITIATOR} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:FIC_1_AXI4_TARGET} 

sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[27:27]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[26:26]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[25:25]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[24:24]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[23:23]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[20:20]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {"[0:0]"} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[14:14]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[12:12]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[13:13]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[22:22]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[27:27]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[26:26]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[25:25]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[24:24]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[23:23]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[15:15]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[21:21]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[20:20]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[19:19]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[18:18]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[17:17]} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[16:16]} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[6:6]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[0:0]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[1:1]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[2:2]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[3:3]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[4:4]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[5:5]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[7:7]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[8:8]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[9:9]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[10:10]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F[11:11]} -port_name {} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_0} -new_port_name {P8_3_USER_LED_0} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_1} -new_port_name {P8_4_USER_LED_1} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_2} -new_port_name {P8_5_USER_LED_2} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_3} -new_port_name {P8_6_USER_LED_3} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_4} -new_port_name {P8_7_USER_LED_4} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_5} -new_port_name {P8_8_USER_LED_5} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F} -new_port_name {P8_9_USER_LED_6} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_6} -new_port_name {P8_10_USER_LED_7} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_7} -new_port_name {P8_11_USER_LED_8} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_8} -new_port_name {P8_12_USER_LED_9} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_9} -new_port_name {P8_13_USER_LED_10} 
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_M2F_10} -new_port_name {P8_14_USER_LED_11} 
