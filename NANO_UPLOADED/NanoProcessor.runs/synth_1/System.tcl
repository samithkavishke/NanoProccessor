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
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.cache/wt [current_project]
set_property parent.project_path C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.2 [current_project]
set_property ip_output_repo c:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/ASUnit.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/Adder_3_bit.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/Decoder_2_to_4.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/Decoder_3_to_8.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/FA.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/HA.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/InstructionDecoderNew.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/LUT_16_7.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/MUX2_1_4bit.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/imports/new/Mux_2_to_1_3bit.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/imports/new/Mux_8_to_1.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/NanoProcessor.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/REG_3_BIT.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/REG_4_BIT.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/ROMNew.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/RegisterBank.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/SlowClock.vhd
  C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/sources_1/new/System.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/constrs_1/imports/Downloads/Basys3Labs.xdc
set_property used_in_implementation false [get_files C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.srcs/constrs_1/imports/Downloads/Basys3Labs.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top System -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef System.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file System_utilization_synth.rpt -pb System_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
