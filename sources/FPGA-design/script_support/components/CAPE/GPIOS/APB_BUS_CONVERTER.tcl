# Creating SmartDesign APB_BUS_CONVERTER
set sd_name {APB_BUS_CONVERTER}
create_smartdesign -sd_name ${sd_name} 

sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE_PADDR} -port_direction {IN} -port_range {[31:0]} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE_PENABLE} -port_direction {IN} 
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE_PRDATA} -port_direction {OUT} -port_range {[31:0]} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE_PSEL} -port_direction {IN} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE_PSLVERR} -port_direction {OUT} 
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE_PWDATA} -port_direction {IN} -port_range {[31:0]} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE_PWRITE} -port_direction {IN} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE_PREADY} -port_direction {OUT} 

sd_create_bus_port -sd_name ${sd_name} -port_name {MASTER_PADDR} -port_direction {OUT} -port_range {[31:0]} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {MASTER_PENABLE} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {MASTER_PWRITE} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {MASTER_PSEL} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {MASTER_PSLVERR} -port_direction {IN} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MASTER_PWDATA} -port_direction {OUT} -port_range {[31:0]} 
sd_create_bus_port -sd_name ${sd_name} -port_name {MASTER_PRDATA} -port_direction {IN} -port_range {[31:0]} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {MASTER_PREADY} -port_direction {IN} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PADDR" "SLAVE_PADDR"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PENABLE" "SLAVE_PENABLE"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PWRITE" "SLAVE_PWRITE"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PSEL" "SLAVE_PSEL"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PSLVERR" "SLAVE_PSLVERR"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PWDATA" "SLAVE_PWDATA"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PRDATA" "SLAVE_PRDATA"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MASTER_PREADY" "SLAVE_PREADY"} 





sd_create_bif_port -sd_name ${sd_name} -port_name {APB_SLAVE} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\ "PADDR:SLAVE_PADDR" \
"PSELx:SLAVE_PSEL" \ "PENABLE:SLAVE_PENABLE" \
"PWRITE:SLAVE_PWRITE" \ "PRDATA:SLAVE_PRDATA" \ "PWDATA:SLAVE_PWDATA" \ "PREADY:SLAVE_PREADY" \
"PSLVERR:SLAVE_PSLVERR" }

sd_create_bif_port -sd_name ${sd_name} -port_name {APB_MASTER} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {master} -port_bif_mapping {\ "PADDR:MASTER_PADDR" \
"PSELx:MASTER_PSEL" \ "PENABLE:MASTER_PENABLE" \
"PWRITE:MASTER_PWRITE" \ "PRDATA:MASTER_PRDATA" \ "PWDATA:MASTER_PWDATA" \ "PREADY:MASTER_PREADY" \
"PSLVERR:MASTER_PSLVERR" }

save_smartdesign -sd_name ${sd_name} 
generate_component -component_name ${sd_name} -recursive 0 
