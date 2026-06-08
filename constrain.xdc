//I have mapped all 14 ports to the 8 onboard LEDs. Since we only have 8 LEDs and you have 12 light signals

# ----------------------------------------------------------------------------
# Clock and Reset
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN P16 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# ----------------------------------------------------------------------------
# light_M1 (Main 1) -> LD0, LD1, LD2
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN T22 [get_ports {light_M1[0]}]
set_property PACKAGE_PIN T21 [get_ports {light_M1[1]}]
set_property PACKAGE_PIN U22 [get_ports {light_M1[2]}]

# ----------------------------------------------------------------------------
# light_S (Side Road) -> LD3, LD4, LD5
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN U21 [get_ports {light_S[0]}]
set_property PACKAGE_PIN V22 [get_ports {light_S[1]}]
set_property PACKAGE_PIN W22 [get_ports {light_S[2]}]

# ----------------------------------------------------------------------------
# light_MT (Main Turn) -> LD6 and PMOD Pins
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN U19 [get_ports {light_MT[0]}]
# Assigning MT[1] and MT[2] to PMOD pins to resolve DRC error
set_property PACKAGE_PIN Y11  [get_ports {light_MT[1]}] 
set_property PACKAGE_PIN AA11 [get_ports {light_MT[2]}] 

# ----------------------------------------------------------------------------
# light_M2 (Main 2) -> LD7 and PMOD Pins
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN U14 [get_ports {light_M2[0]}]
# Assigning M2[1] and M2[2] to PMOD pins to resolve DRC error
set_property PACKAGE_PIN Y10  [get_ports {light_M2[1]}]
set_property PACKAGE_PIN AA9  [get_ports {light_M2[2]}]

# ----------------------------------------------------------------------------
# IO Standards (Apply to all bits)
# ----------------------------------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports {light_M1[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {light_S[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {light_MT[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {light_M2[*]}]
