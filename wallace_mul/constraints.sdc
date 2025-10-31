# ====================================================
# SDC constraints
# ====================================================

# Define a virtual clock (system clock, 100 MHz -> 10 ns period)
create_clock -name clk -period 1000 [get_ports clk]

# Assume primary inputs arrive 1 ns after the clock edge
# (input delay accounts for upstream logic + IO delay)
set_input_delay 1 -clock clk [all_inputs]

# Assume outputs must be ready 1 ns before next clock edge
# (output delay models downstream setup requirement)
set_output_delay 1 -clock clk [all_outputs]

# Optional: Set input transition (slew) assumption
set_input_transition 0.15 [all_inputs]

# Optional: Set load capacitance on outputs
set_load 0.05 [all_outputs]
