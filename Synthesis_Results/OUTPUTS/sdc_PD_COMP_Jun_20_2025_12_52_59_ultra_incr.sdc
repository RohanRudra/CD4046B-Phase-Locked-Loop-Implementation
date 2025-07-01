###################################################################

# Created by write_sdc on Fri Jun 20 12:53:11 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -name CLK_100KHz  -period 8000  -waveform {0 4000}
set_clock_latency -source 1  [get_clocks CLK_100KHz]
set_clock_uncertainty -setup 2  [get_clocks CLK_100KHz]
set_clock_uncertainty -hold 1.2  [get_clocks CLK_100KHz]
set_clock_transition -max -fall 1.5 [get_clocks CLK_100KHz]
set_clock_transition -max -rise 1.5 [get_clocks CLK_100KHz]
set_clock_transition -min -fall 1 [get_clocks CLK_100KHz]
set_clock_transition -min -rise 1 [get_clocks CLK_100KHz]
set_input_delay -clock CLK_100KHz  -max 5  [get_ports rst]
set_input_delay -clock CLK_100KHz  -min 0.5  [get_ports rst]
set_input_delay -clock CLK_100KHz  -max 5  [get_ports sig_ip]
set_input_delay -clock CLK_100KHz  -min 1.3  [get_ports sig_ip]
set_input_delay -clock CLK_100KHz  -max 5  [get_ports comp_ip]
set_input_delay -clock CLK_100KHz  -min 1.3  [get_ports comp_ip]
set_output_delay -clock CLK_100KHz  -max 5  [get_ports p_out]
set_output_delay -clock CLK_100KHz  -min 0.5  [get_ports p_out]
set_output_delay -clock CLK_100KHz  -max 5  [get_ports n_out]
set_output_delay -clock CLK_100KHz  -min 0.5  [get_ports n_out]
