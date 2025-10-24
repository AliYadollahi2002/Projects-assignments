###################################################################

# Created by write_sdc on Sat Feb  8 23:51:49 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk1]  -period 10  -waveform {0 5}
create_clock [get_ports clk2]  -period 10  -waveform {0 5}
set_input_delay -clock clk1  0  [get_ports clk1]
set_input_delay -clock clk1  0  [get_ports clk2]
set_input_delay -clock clk1  0  [get_ports rst1]
set_input_delay -clock clk1  0  [get_ports ff1_D]
