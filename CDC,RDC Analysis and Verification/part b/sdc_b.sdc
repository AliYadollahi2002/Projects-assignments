###################################################################

# Created by write_sdc on Fri Feb  7 18:33:10 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst]
set_input_delay -clock clk  0  [get_ports ff1_D]
set_output_delay -clock clk  0  [get_ports ff2_Q]
