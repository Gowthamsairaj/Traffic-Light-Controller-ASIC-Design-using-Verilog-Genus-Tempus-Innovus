create_clock -name clk -period 1 -waveform {0 0.5} [get_ports "clk"]

set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]

set_clock_uncertainty 0.01 [get_clocks "clk"]

set_input_delay -max 0.4 [get_ports "rst"] -clock [get_clocks "clk"]

set_output_delay -max 0.4 [get_ports "{LED_NS[0] LED_NS[1] LED_NS[2]}"] -clock [get_clocks "clk"]
set_output_delay -max 0.4 [get_ports "{LED_WE[0] LED_WE[1] LED_WE[2]}"] -clock [get_clocks "clk"]

set_false_path -from [get_ports "rst"]
