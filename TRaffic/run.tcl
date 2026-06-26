read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl traffic.v
elaborate
read_sdc traffic_constraints.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > TRAFFIC_NETLIST.v
write_sdc > TRAFFIC_TOOL.sdc
report_area > traffic_area.txt
report_power > traffic_power.txt
report_timing > traffic_timing.txt
