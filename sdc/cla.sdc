###############################################################################
# Created by write_sdc
# Mon Dec  5 07:24:06 2022
###############################################################################
current_design cla
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 24.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {cin}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {S[0]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {S[1]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {S[2]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {S[3]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {cout}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {cout}]
set_load -pin_load 0.0729 [get_ports {S[3]}]
set_load -pin_load 0.0729 [get_ports {S[2]}]
set_load -pin_load 0.0729 [get_ports {S[1]}]
set_load -pin_load 0.0729 [get_ports {S[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cin}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 4.0000 [current_design]
