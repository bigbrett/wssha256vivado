webtalk_init -webtalk_dir /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2017-04-27 05:37:02" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2016.4" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2016.4" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "211211418_1777518465_210655444_567" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "q2sk0l0t46bah57eb52qtku8re" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2016.4_7" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "7" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 16.04.2 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "1620.445 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "33.000 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1493220623000" -context "sdk\\\\bsp/1493220623000"
webtalk_add_data -client sdk -key hwid -value "1491490180000" -context "sdk\\\\bsp/1493220623000"
webtalk_add_data -client sdk -key os -value "device_tree" -context "sdk\\\\bsp/1493220623000"
webtalk_add_data -client sdk -key apptemplate -value "null" -context "sdk\\\\bsp/1493220623000"
webtalk_add_data -client sdk -key RecordType -value "BSPCreation" -context "sdk\\\\bsp/1493220623000"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key DebugCount -value "0" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1493285822616"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1493285822616"
webtalk_transmit -clientid 4280956358 -regid "211211418_1777518465_210655444_567" -xml /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/webtalk/usage_statistics_ext_sdk.xml -html /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /home/brett/Thesis/Vivado_WS/sha256test/sha256test.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate