################################################################################
#
# Design name:  full_adder
#
# Created by icc2 write_sdc on Sun Apr  5 16:19:06 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 9
create_clock -name clk -period 10 -waveform {0 5} [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency 3.8147e-05 [get_clocks {clk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_uncertainty 0.2 [get_clocks {clk}]
set_clock_transition 0.1 [get_clocks {clk}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 15
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {clk}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 16
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[7]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 17
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[6]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 18
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[5]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 19
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[4]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 20
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[3]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 21
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[2]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 22
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[1]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 23
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {X[0]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 24
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {Y[2]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 25
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {Y[1]}]
# /home/student/Music/RTL2GDSII/Workshop/DC/outputs/full_adder.sdc, line 26
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {Y[0]}]
