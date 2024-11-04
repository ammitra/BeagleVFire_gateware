#===============================================================================
# Add clocks for PCIe subsubsystem.
#===============================================================================
set sd_name {CLOCKS_AND_RESETS}

open_smartdesign -sd_name ${sd_name} 

#-------------------------------------------------------------------------------
# Create top level Scalar Ports
#-------------------------------------------------------------------------------


sd_create_scalar_port -sd_name ${sd_name} -port_name {BIT_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LOCK} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIe_CLK_125MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIe_REFERENCE_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_TO_LANE} -port_direction {OUT}

#-------------------------------------------------------------------------------
# Create top level Bus interface Ports
#-------------------------------------------------------------------------------
sd_create_bif_port -sd_name ${sd_name} -port_name {CLKS_TO_XCVR} -port_bif_vlnv {Actel:busdef.clock:PF_TXPLL_XCVR_CLK:1.0} -port_bif_role {master} -port_bif_mapping {\
"LOCK:LOCK" \
"BIT_CLK:BIT_CLK" \
"REF_CLK_TO_LANE:REF_CLK_TO_LANE" } 

#-------------------------------------------------------------------------------
# Add instances.
#-------------------------------------------------------------------------------

# Add CLK_160MHz_to_CLK_80MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLK_DIV} -instance_name {CLK_160MHz_to_CLK_80MHz}

# Add PCIE_REF_CLK_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_REF_CLK} -instance_name {PCIE_REF_CLK_0}

# Add TRANSMIT_PLL_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {TRANSMIT_PLL} -instance_name {TRANSMIT_PLL_0}

# Add PCIe_CLK_LOCK instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {PCIe_CLK_LOCK}

# Add GLITCHLESS_MUX instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GLITCHLESS_MUX} -instance_name {GLITCHLESS_MUX}


#-------------------------------------------------------------------------------
# Add bus interface net connections.
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKS_TO_XCVR" "TRANSMIT_PLL_0:CLKS_TO_XCVR" }

#-------------------------------------------------------------------------------
# Connections
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_160MHz_to_CLK_80MHz:CLK_IN" "OSCILLATOR_160MHz:RCOSC_160MHZ_CLK_DIV" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_160MHz_to_CLK_80MHz:CLK_OUT" "GLITCHLESS_MUX:CLK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK1" "TRANSMIT_PLL_0:CLK_125" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK_OUT" "PCIe_CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:SEL" "PCIe_CLK_LOCK:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIe_CLK_LOCK:A" "TRANSMIT_PLL_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR_0:PCIE_INIT_DONE" "PCIe_CLK_LOCK:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_REF_CLK_0:REF_CLK" "PCIe_REFERENCE_CLK" "TRANSMIT_PLL_0:REF_CLK" }
sd_rename_port -sd_name ${sd_name} -current_port_name {REF_CLK_PAD_N} -new_port_name {XCVR_0A_REFCLK_N}
sd_rename_port -sd_name ${sd_name} -current_port_name {REF_CLK_PAD_P} -new_port_name {XCVR_0A_REFCLK_P}
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {INIT_MONITOR_0:PCIE_INIT_DONE} -port_name {}

#-------------------------------------------------------------------------------
# Save the SmartDesign
#-------------------------------------------------------------------------------
save_smartdesign -sd_name ${sd_name}

#-------------------------------------------------------------------------------
# Generate SmartDesign CLOCKS_AND_RESETS
#-------------------------------------------------------------------------------
generate_component -component_name ${sd_name}
