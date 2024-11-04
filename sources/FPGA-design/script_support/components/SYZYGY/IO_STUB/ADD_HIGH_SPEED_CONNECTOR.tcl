
puts "======== Add High Speed Connector option: IO_STUB ========"


source script_support/components/SYZYGY/IO_STUB/PF_IO_C0.tcl
source script_support/components/SYZYGY/IO_STUB/PF_IO_C1.tcl
source script_support/components/SYZYGY/IO_STUB/PF_IO_C2.tcl
source script_support/components/SYZYGY/IO_STUB/PF_IO_C3.tcl
source script_support/components/SYZYGY/IO_STUB/PF_IO_C4.tcl
source script_support/components/SYZYGY/IO_STUB/PF_IO_C5.tcl
source script_support/components/SYZYGY/IO_STUB/PF_TX_PLL_C0.tcl
source script_support/components/SYZYGY/IO_STUB/PF_XCVR_ERM_C0.tcl
source script_support/components/SYZYGY/IO_STUB/PF_XCVR_ERM_C1.tcl
source script_support/components/SYZYGY/IO_STUB/PF_XCVR_REF_CLK_C0.tcl
source script_support/components/SYZYGY/IO_STUB/HIGH_SPEED_CONNECTOR.tcl

set sd_name ${top_level_name}

sd_instantiate_component -sd_name ${sd_name} -component_name {HIGH_SPEED_INTERFACE} -instance_name {HIGH_SPEED_INTERFACE_0} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_2_FABRIC_RESET_N" "HIGH_SPEED_INTERFACE_0:PCS_PMA_ARST_N"} 
