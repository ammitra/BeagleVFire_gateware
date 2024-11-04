# Creating SmartDesign M2_INTERFACE
set sd_name {M2_INTERFACE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_BIT_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_PLL_LOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_PLL_REF_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_0_TL_CLK_125MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_REF_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_TARGET_PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_PERST0n} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INTERRUPT} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PADDR} -port_direction {IN} -port_range {[25:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PWDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_BID} -port_direction {IN} -port_range {[4:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_BUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RID} -port_direction {IN} -port_range {[4:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_RUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_WUSER} -port_direction {IN} -port_range {[0:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_TARGET_PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARID} -port_direction {OUT} -port_range {[4:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARLOCK} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARREGION} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_ARUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWID} -port_direction {OUT} -port_range {[4:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWLOCK} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWREGION} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_AWUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_SLAVE0_WUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI_TARGET_MASTER0_RUSER} -port_direction {OUT} -port_range {[0:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"AWID:AXI4_INITIATOR_SLAVE0_AWID" \
"AWADDR:AXI4_INITIATOR_SLAVE0_AWADDR" \
"AWLEN:AXI4_INITIATOR_SLAVE0_AWLEN" \
"AWSIZE:AXI4_INITIATOR_SLAVE0_AWSIZE" \
"AWBURST:AXI4_INITIATOR_SLAVE0_AWBURST" \
"AWLOCK:AXI4_INITIATOR_SLAVE0_AWLOCK" \
"AWCACHE:AXI4_INITIATOR_SLAVE0_AWCACHE" \
"AWPROT:AXI4_INITIATOR_SLAVE0_AWPROT" \
"AWQOS:AXI4_INITIATOR_SLAVE0_AWQOS" \
"AWREGION:AXI4_INITIATOR_SLAVE0_AWREGION" \
"AWVALID:AXI4_INITIATOR_SLAVE0_AWVALID" \
"AWREADY:AXI4_INITIATOR_SLAVE0_AWREADY" \
"WDATA:AXI4_INITIATOR_SLAVE0_WDATA" \
"WSTRB:AXI4_INITIATOR_SLAVE0_WSTRB" \
"WLAST:AXI4_INITIATOR_SLAVE0_WLAST" \
"WVALID:AXI4_INITIATOR_SLAVE0_WVALID" \
"WREADY:AXI4_INITIATOR_SLAVE0_WREADY" \
"BID:AXI4_INITIATOR_SLAVE0_BID" \
"BRESP:AXI4_INITIATOR_SLAVE0_BRESP" \
"BVALID:AXI4_INITIATOR_SLAVE0_BVALID" \
"BREADY:AXI4_INITIATOR_SLAVE0_BREADY" \
"ARID:AXI4_INITIATOR_SLAVE0_ARID" \
"ARADDR:AXI4_INITIATOR_SLAVE0_ARADDR" \
"ARLEN:AXI4_INITIATOR_SLAVE0_ARLEN" \
"ARSIZE:AXI4_INITIATOR_SLAVE0_ARSIZE" \
"ARBURST:AXI4_INITIATOR_SLAVE0_ARBURST" \
"ARLOCK:AXI4_INITIATOR_SLAVE0_ARLOCK" \
"ARCACHE:AXI4_INITIATOR_SLAVE0_ARCACHE" \
"ARPROT:AXI4_INITIATOR_SLAVE0_ARPROT" \
"ARQOS:AXI4_INITIATOR_SLAVE0_ARQOS" \
"ARREGION:AXI4_INITIATOR_SLAVE0_ARREGION" \
"ARVALID:AXI4_INITIATOR_SLAVE0_ARVALID" \
"ARREADY:AXI4_INITIATOR_SLAVE0_ARREADY" \
"RID:AXI4_INITIATOR_SLAVE0_RID" \
"RDATA:AXI4_INITIATOR_SLAVE0_RDATA" \
"RRESP:AXI4_INITIATOR_SLAVE0_RRESP" \
"RLAST:AXI4_INITIATOR_SLAVE0_RLAST" \
"RVALID:AXI4_INITIATOR_SLAVE0_RVALID" \
"RREADY:AXI4_INITIATOR_SLAVE0_RREADY" \
"AWUSER:AXI4_INITIATOR_SLAVE0_AWUSER" \
"WUSER:AXI4_INITIATOR_SLAVE0_WUSER" \
"BUSER:AXI4_INITIATOR_SLAVE0_BUSER" \
"ARUSER:AXI4_INITIATOR_SLAVE0_ARUSER" \
"RUSER:AXI4_INITIATOR_SLAVE0_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {AXI_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:AXI_TARGET_MASTER0_AWID" \
"AWADDR:AXI_TARGET_MASTER0_AWADDR" \
"AWLEN:AXI_TARGET_MASTER0_AWLEN" \
"AWSIZE:AXI_TARGET_MASTER0_AWSIZE" \
"AWBURST:AXI_TARGET_MASTER0_AWBURST" \
"AWLOCK:AXI_TARGET_MASTER0_AWLOCK" \
"AWCACHE:AXI_TARGET_MASTER0_AWCACHE" \
"AWPROT:AXI_TARGET_MASTER0_AWPROT" \
"AWQOS:AXI_TARGET_MASTER0_AWQOS" \
"AWREGION:AXI_TARGET_MASTER0_AWREGION" \
"AWVALID:AXI_TARGET_MASTER0_AWVALID" \
"AWREADY:AXI_TARGET_MASTER0_AWREADY" \
"WDATA:AXI_TARGET_MASTER0_WDATA" \
"WSTRB:AXI_TARGET_MASTER0_WSTRB" \
"WLAST:AXI_TARGET_MASTER0_WLAST" \
"WVALID:AXI_TARGET_MASTER0_WVALID" \
"WREADY:AXI_TARGET_MASTER0_WREADY" \
"BID:AXI_TARGET_MASTER0_BID" \
"BRESP:AXI_TARGET_MASTER0_BRESP" \
"BVALID:AXI_TARGET_MASTER0_BVALID" \
"BREADY:AXI_TARGET_MASTER0_BREADY" \
"ARID:AXI_TARGET_MASTER0_ARID" \
"ARADDR:AXI_TARGET_MASTER0_ARADDR" \
"ARLEN:AXI_TARGET_MASTER0_ARLEN" \
"ARSIZE:AXI_TARGET_MASTER0_ARSIZE" \
"ARBURST:AXI_TARGET_MASTER0_ARBURST" \
"ARLOCK:AXI_TARGET_MASTER0_ARLOCK" \
"ARCACHE:AXI_TARGET_MASTER0_ARCACHE" \
"ARPROT:AXI_TARGET_MASTER0_ARPROT" \
"ARQOS:AXI_TARGET_MASTER0_ARQOS" \
"ARREGION:AXI_TARGET_MASTER0_ARREGION" \
"ARVALID:AXI_TARGET_MASTER0_ARVALID" \
"ARREADY:AXI_TARGET_MASTER0_ARREADY" \
"RID:AXI_TARGET_MASTER0_RID" \
"RDATA:AXI_TARGET_MASTER0_RDATA" \
"RRESP:AXI_TARGET_MASTER0_RRESP" \
"RLAST:AXI_TARGET_MASTER0_RLAST" \
"RVALID:AXI_TARGET_MASTER0_RVALID" \
"RREADY:AXI_TARGET_MASTER0_RREADY" \
"AWUSER:AXI_TARGET_MASTER0_AWUSER" \
"WUSER:AXI_TARGET_MASTER0_WUSER" \
"BUSER:AXI_TARGET_MASTER0_BUSER" \
"ARUSER:AXI_TARGET_MASTER0_ARUSER" \
"RUSER:AXI_TARGET_MASTER0_RUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {APB_TARGET} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:APB_TARGET_PADDR" \
"PSELx:APB_TARGET_PSEL" \
"PENABLE:APB_TARGET_PENABLE" \
"PWRITE:APB_TARGET_PWRITE" \
"PRDATA:APB_TARGET_PRDATA" \
"PWDATA:APB_TARGET_PWDATA" \
"PREADY:APB_TARGET_PREADY" \
"PSLVERR:APB_TARGET_PSLVERR" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {CLKS_FROM_TXPLL_TO_PCIE_0} -port_bif_vlnv {Actel:busdef.clock:PF_TXPLL_XCVR_CLK:1.0} -port_bif_role {slave} -port_bif_mapping {\
"LOCK:CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_PLL_LOCK" \
"BIT_CLK:CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_BIT_CLK" \
"REF_CLK_TO_LANE:CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_PLL_REF_CLK" } 

# Add AXI_ADDRESS_SHIM_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AXI_ADDRESS_SHIM} -instance_name {AXI_ADDRESS_SHIM_0}



# Add FIC1_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_1_INITIATOR} -instance_name {FIC1_INITIATOR}



# Add PCIE instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_PCIE_C0} -instance_name {PCIE}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_INTERRUPT} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_M_RDERR} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_S_WDERR} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_LTSSM}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_M_WDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_S_RDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_HOT_RST_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_DLUP_EXIT}



# Add PCIE_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_INITIATOR} -instance_name {PCIE_INITIATOR}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ACLK" "FIC1_INITIATOR:ACLK" "PCIE:AXI_CLK" "PCIE_INITIATOR:ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ARESETN" "AXI_ADDRESS_SHIM_0:RESETN" "FIC1_INITIATOR:ARESETN" "PCIE:AXI_CLK_STABLE" "PCIE_INITIATOR:ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_PERST0n" "PCIE:PCIE_0_PERST_OUT_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:APB_S_PCLK" "PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:APB_S_PRESET_N" "PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:INIT_DONE" "PCIE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE0_CDR_REF_CLK_0" "PCIE_REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE_RXD0_N" "PCIESS_LANE_RXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE_RXD0_P" "PCIESS_LANE_RXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE_TXD0_N" "PCIESS_LANE_TXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE_TXD0_P" "PCIESS_LANE_TXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIE_0_INTERRUPT_OUT" "PCIE_INTERRUPT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIE_0_TL_CLK_125MHz" "PCIE_0_TL_CLK_125MHz" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_TARGET" "PCIE:PCIE_APB_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI4_INITIATOR" "PCIE_INITIATOR:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_ADDRESS_SHIM_0:AXI4_INITIATOR" "PCIE_INITIATOR:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_ADDRESS_SHIM_0:AXI4_TARGET" "PCIE:AXI_0_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_TARGET" "FIC1_INITIATOR:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKS_FROM_TXPLL_TO_PCIE_0" "PCIE:CLKS_FROM_TXPLL_TO_PCIE_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC1_INITIATOR:AXI4mslave0" "PCIE:AXI_0_SLAVE" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign M2_INTERFACE
generate_component -component_name ${sd_name}
