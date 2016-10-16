# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/DESIGN/viva/74LSXX_LIB/74LS161/74LS161.cache/wt [current_project]
set_property parent.project_path D:/DESIGN/viva/74LSXX_LIB/74LS161/74LS161.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/DESIGN/viva/74LSXX_LIB/74LS161/74LS161.srcs/sources_1/new/four_bit_hex_counter.v
catch { write_hwdef -file counter_74LS161.hwdef }
synth_design -top counter_74LS161 -part xc7a35tcpg236-1
write_checkpoint -noxdef counter_74LS161.dcp
catch { report_utilization -file counter_74LS161_utilization_synth.rpt -pb counter_74LS161_utilization_synth.pb }