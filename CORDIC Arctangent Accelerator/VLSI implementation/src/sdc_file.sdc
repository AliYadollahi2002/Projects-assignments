###################################################################

# Created by write_sdc on Thu Feb  6 02:44:30 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 0.35  -waveform {0 0.175}
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports {x_in[8]}]
set_input_delay -clock clk  0  [get_ports {x_in[7]}]
set_input_delay -clock clk  0  [get_ports {x_in[6]}]
set_input_delay -clock clk  0  [get_ports {x_in[5]}]
set_input_delay -clock clk  0  [get_ports {x_in[4]}]
set_input_delay -clock clk  0  [get_ports {x_in[3]}]
set_input_delay -clock clk  0  [get_ports {x_in[2]}]
set_input_delay -clock clk  0  [get_ports {x_in[1]}]
set_input_delay -clock clk  0  [get_ports {x_in[0]}]
set_input_delay -clock clk  0  [get_ports {y_in[8]}]
set_input_delay -clock clk  0  [get_ports {y_in[7]}]
set_input_delay -clock clk  0  [get_ports {y_in[6]}]
set_input_delay -clock clk  0  [get_ports {y_in[5]}]
set_input_delay -clock clk  0  [get_ports {y_in[4]}]
set_input_delay -clock clk  0  [get_ports {y_in[3]}]
set_input_delay -clock clk  0  [get_ports {y_in[2]}]
set_input_delay -clock clk  0  [get_ports {y_in[1]}]
set_input_delay -clock clk  0  [get_ports {y_in[0]}]
set_input_delay -clock clk  0  [get_ports {z_in[8]}]
set_input_delay -clock clk  0  [get_ports {z_in[7]}]
set_input_delay -clock clk  0  [get_ports {z_in[6]}]
set_input_delay -clock clk  0  [get_ports {z_in[5]}]
set_input_delay -clock clk  0  [get_ports {z_in[4]}]
set_input_delay -clock clk  0  [get_ports {z_in[3]}]
set_input_delay -clock clk  0  [get_ports {z_in[2]}]
set_input_delay -clock clk  0  [get_ports {z_in[1]}]
set_input_delay -clock clk  0  [get_ports {z_in[0]}]
