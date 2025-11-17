# ====================================================
# SDC constraints
# ====================================================

# Define a real system clock (10 ns = 100 MHz)
create_clock -name clk -period 10 [get_ports clk_in]

# Set realistic input delays and output delays per IO
set_input_delay 1.2 -clock clk [get_ports {multiplicand multiplier mrst}]
set_output_delay 0.8 -clock clk [get_ports {op read busy}]

# Worst-case cell/technology values
set_input_transition 0.12 [get_ports {multiplicand multiplier mrst}]
set_load 0.07 [get_ports {op read busy}]

# Clock uncertainty (modeling jitter, PVT variation)
set_clock_uncertainty 0.05 [get_clocks clk]

# Exclude asynchronous resets (optional, advanced)
set_false_path -from [get_ports {mrst}]

