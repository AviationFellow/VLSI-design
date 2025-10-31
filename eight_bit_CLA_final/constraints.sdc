# ====================================================
# SDC constraints for 8-bit Carry Lookahead Adder (CLA)
# ====================================================

# Define a virtual clock (system clock, 100 MHz -> 10 ns period)
create_clock -name clk -period 10 [get_ports clk]

# Assume primary inputs arrive 2 ns after the clock edge
# (input delay accounts for upstream logic + IO delay)
set_input_delay 2 -clock clk [all_inputs]

# Assume outputs must be ready 2 ns before next clock edge
# (output delay models downstream setup requirement)
set_output_delay 2 -clock clk [all_outputs]

# Optional: Set input transition (slew) assumption
set_input_transition 0.1 [all_inputs]

# Optional: Set load capacitance on outputs
set_load 0.05 [all_outputs]
