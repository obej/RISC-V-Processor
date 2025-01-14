# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/Dumps_and_Assembly/Dumps/newPrintMaze.coe}}
add_files {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/Dumps_and_Assembly/Dumps/rockpaperscissors.coe}}
add_files {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/Dumps_and_Assembly/Dumps/BenchmarkBar.coe}}
add_files {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/Dumps_and_Assembly/Dumps/draw.coe}}
read_vhdl -library xil_defaultlib {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/hdl/RV32I_pipelined_wrapper.vhd}}
add_files {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/RV32I_pipelined.bd}}
set_property used_in_implementation false [get_files -all {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_blk_mem_gen_0_0/RV32I_pipelined_blk_mem_gen_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_clk_wiz_0_0/RV32I_pipelined_clk_wiz_0_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_clk_wiz_0_0/RV32I_pipelined_clk_wiz_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_clk_wiz_0_0/RV32I_pipelined_clk_wiz_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_blk_mem_gen_1_0/RV32I_pipelined_blk_mem_gen_1_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/RV32I_pipelined_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/constrs_1/imports/new/ZYBO_MASTER.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Oz Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/constrs_1/imports/new/ZYBO_MASTER.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top RV32I_pipelined_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef RV32I_pipelined_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file RV32I_pipelined_wrapper_utilization_synth.rpt -pb RV32I_pipelined_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
