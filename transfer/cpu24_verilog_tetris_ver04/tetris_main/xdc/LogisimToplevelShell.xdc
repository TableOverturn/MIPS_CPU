
##Clock signal

set_property -dict { PACKAGE_PIN E3   IOSTANDARD LVCMOS33 } [get_ports { FPGA_GlobalClock }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {FPGA_GlobalClock}];

##Switches

#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[3] }];
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[2] }];
#set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[1] }];
#set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[0] }];
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { set_second }];
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_0[4] }];
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_0[5] }];
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_0[6] }];
#set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVCMOS18 } [get_ports { set_minute }];
#set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS18 } [get_ports { FPGA_INPUT_PIN_0[7] }];
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_0[8] }];
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_1[0] }];
#set_property -dict { PACKAGE_PIN H6   IOSTANDARD LVCMOS33 } [get_ports { set_hour }];
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_1[1] }];
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { FPGA_INPUT_PIN_1[2] }];
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { rst }];

##LEDs

#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { done }];
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }];
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }];
#set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }];
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { second_led }];
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }];
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }];
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }];
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { minute_led }];
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }];
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }];
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }];
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { hour_led }];
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }];
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }];
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { time_tick }];
#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { LED16_B }];
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED16_G }];
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LED16_R }];
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED17_B }];
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { LED17_G }];
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED17_R }];

##7 segment display

set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { seg[7] }];
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { seg[6] }];
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { seg[5] }];
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { seg[4] }];
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { seg[3] }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { seg[2] }];
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { seg[1] }];
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { seg[0] }];
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { na[0] }];
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { na[1] }];
set_property -dict { PACKAGE_PIN T9   IOSTANDARD LVCMOS33 } [get_ports { na[2] }];
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { na[3] }];
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { na[4] }];
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { na[5] }];
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports { na[6] }];
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { na[7] }];

##Buttons

#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { rst_n }];
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { go }];
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[0] }]; #W
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[1] }]; #D
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[2] }]; #S
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { keyboard_in[3] }]; #A

##VGA
set_property -dict { PACKAGE_PIN B7   IOSTANDARD LVCMOS33 } [get_ports { rgb[0] }];
set_property -dict { PACKAGE_PIN C7   IOSTANDARD LVCMOS33 } [get_ports { rgb[1] }];
set_property -dict { PACKAGE_PIN D7   IOSTANDARD LVCMOS33 } [get_ports { rgb[2] }];
set_property -dict { PACKAGE_PIN D8   IOSTANDARD LVCMOS33 } [get_ports { rgb[3] }];
set_property -dict { PACKAGE_PIN C6   IOSTANDARD LVCMOS33 } [get_ports { rgb[4] }];
set_property -dict { PACKAGE_PIN A5   IOSTANDARD LVCMOS33 } [get_ports { rgb[5] }];
set_property -dict { PACKAGE_PIN B6   IOSTANDARD LVCMOS33 } [get_ports { rgb[6] }];
set_property -dict { PACKAGE_PIN A6   IOSTANDARD LVCMOS33 } [get_ports { rgb[7] }];
set_property -dict { PACKAGE_PIN A3   IOSTANDARD LVCMOS33 } [get_ports { rgb[8] }];
set_property -dict { PACKAGE_PIN B4   IOSTANDARD LVCMOS33 } [get_ports { rgb[9] }];
set_property -dict { PACKAGE_PIN C5   IOSTANDARD LVCMOS33 } [get_ports { rgb[10] }];
set_property -dict { PACKAGE_PIN A4   IOSTANDARD LVCMOS33 } [get_ports { rgb[11] }];
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { hsync }];
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { vsync }];