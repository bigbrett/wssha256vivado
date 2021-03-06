connect -url tcp:127.0.0.1:3121
source /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248799584"} -index 0
loadhw /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248799584"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248799584"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248799584"} -index 0
dow /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/sha256test-app/Debug/sha256test-app.elf
bpadd -addr &main
