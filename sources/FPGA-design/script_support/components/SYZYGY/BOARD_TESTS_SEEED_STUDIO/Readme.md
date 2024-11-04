# SYZYGY Board Tests

This SYZYGY gateware option is intended for use with the Seeed Studio SYZYGY loopback test board.

Transceivers are expected to be looped back on the SYZYGY loopback board. This gateware includes a traffic generator and traffic checker for each transceiver pair. The outcome of the checker test is routed to a set of GPIOs allowing software to check that each tranceiver operates correctly.
A set of GPIOs is used to loopback non-transceiver signals.

| GPIO # | GPIO Type | Connected Signal Name    | Description                                                                                                |
|--------|-----------|--------------------------|------------------------------------------------------------------------------------------------------------|
|  0     | output    | B0_HSIO70N               | Looped back to B0_HSIO70P. Changes to this output should be reflected on GPIO[4].                          |
|  1     | output    | B0_HSIO71N               | Looped back to B0_HSIO71P. Changes to this output should be reflected on GPIO[5].                          |
|  2     | output    | B0_HSIO83N               | Looped back to B0_HSIO83P. Changes to this output should be reflected on GPIO[6].                          |
|  3     | output    | B0_HSIO73N_C2P_CLKN      | Looped back to B0_HSIO73N_C2P_CLKP. Changes to this output should be reflected on GPIO[7].                 |
|  4     | input     | B0_HSIO70P               | State of this input should match output GPIO[0] (B0_HSIO70N).                                              |
|  5     | input     | B0_HSIO71P               | State of this input should match output GPIO[1] (B0_HSIO71N).                                              |
|  6     | input     | B0_HSIO83P               | State of this input should match output GPIO[2] (B0_HSIO83N).                                              |
|  7     | input     | B0_HSIO73N_C2P_CLKP      | State of this input should match output GPIO[3] (B0_HSIO73N_C2P_CLKN).                                     |
|  8     | input     | XCVR1_RX_VALID           | Indicates valid received data on transceiver 1. Must be 1 for success.                                     |
|  9     | input     | XCVR1_LOCK               | Indicates receive clock lock on transceiver 1. Must be 1 for success.                                      |
| 10     | input     | XCVR1_ERROR              | Indicates errors on date received by transceiver 1. Must be 0 for success.                                 |
| 11     | input     | XCVR2_RX_VALID           | Indicates valid received data on transceiver 2. Must be 1 for success.                                     |
| 12     | input     | XCVR2_LOCK               | Indicates receive clock lock on transceiver 2. Must be 1 for success.                                      |
| 13     | input     | XCVR2_ERROR              | Indicates errors on date received by transceiver 2. Must be 0 for success.                                 |
| 14     | input     | XCVR3_RX_VALID           | Indicates valid received data on transceiver 3. Must be 1 for success.                                     |
| 15     | input     | XCVR3_LOCK               | Indicates receive clock lock on transceiver 3. Must be 1 for success.                                      |
| 16     | input     | XCVR3_ERROR              | Indicates errors on date received by transceiver 3. Must be 0 for success.                                 |
| 17     | input     | XCVR_0B_REF_CLK_PLL_LOCK | Indicates that a PLL locked on the XCVR_0B Reference clock from the loopback board. Must be 1 for success. |
| 18     | input     | XCVR_0C_REF_CLK_PLL_LOCK | Indicates that a PLL locked on the XCVR_0C Reference clock from the loopback board. Must be 1 for success. |
| 19     | input     | B0_HSIO81N               | Interrupt from Ethernet PHY.                                                                               |

The GPIO block used is accessibble from address 0x44000000.