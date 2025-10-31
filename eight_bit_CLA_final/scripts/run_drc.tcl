# Load technology
tech load /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech

# Read LEF files
lef read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
lef read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef

# Read routed DEF
def read /home/arumukamganesmoorthe/ME/digital_design/eight_bit_CLA/layout/eight_bit_CLA_routed.def

# Load design
load eight_bit_CLA

# Run DRC
drc on
drc check

# Wait for DRC to complete
drc catchup

# Get DRC violations
set drc_count [drc list count total]
puts "Total DRC violations: $drc_count"

# List all violations
if {$drc_count > 0} {
    puts "DRC Violations found:"
    set drc_why [drc listall why]
    puts $drc_why
}

# Save DRC report
set drc_count [drc list count total]
if { > 0} {
    drc why > /home/arumukamganesmoorthe/ME/digital_design/eight_bit_CLA/reports/drc_violations.rpt
}

quit -noprompt
