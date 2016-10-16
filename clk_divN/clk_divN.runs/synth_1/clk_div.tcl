# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/DESIGN/viva/74LSXX_LIB/clk_divN/clk_divN.cache/wt [current_project]
set_property parent.project_path D:/DESIGN/viva/74LSXX_LIB/clk_divN/clk_divN.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/DESIGN/viva/74LSXX_LIB/clk_divN/clk_divN.srcs/sources_1/new/clk_divN.v
catch { write_hwdef -file clk_div.hwdef }
synth_design -top clk_div -part xc7a35tcpg236-1
write_checkpoint -noxdef clk_div.dcp
catch { report_utilization -file clk_div_utilization_synth.rpt -pb clk_div_utilization_synth.pb }