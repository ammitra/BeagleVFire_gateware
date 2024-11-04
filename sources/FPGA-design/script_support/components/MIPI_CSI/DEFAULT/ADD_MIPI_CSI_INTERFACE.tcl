# Enable power to camera module:
sd_create_scalar_port -sd_name ${sd_name} -port_name {CSI1_PWND} -port_direction {OUT}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CSI1_PWND} -value {VCC}
