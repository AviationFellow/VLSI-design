# Load technology
tech load /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech

# Read LEF files
lef read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
lef read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef

# Read routed DEF
def read /home/arumukamganesmoorthe/ME/digital_design/eight_bit_CLA/layout/eight_bit_CLA_routed.def

# Load design
load eight_bit_CLA

# Extract for LVS
extract all
ext2spice lvs
ext2spice -o /home/arumukamganesmoorthe/ME/digital_design/eight_bit_CLA/layout/eight_bit_CLA_layout.spice

quit -noprompt
