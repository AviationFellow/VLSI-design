# Load technology
tech load /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech

# Read LEF files
lef read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
lef read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef

# Read routed DEF
def read /home/arumukamganesmoorthe/ME/digital_design/vedic_mul/layout/vedic_routed.def

# Load design
load vedic

# GDS configuration
gds readonly true
gds rescale false

# Read standard cell library GDS
gds read /home/arumukamganesmoorthe/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds

# Write final GDSII
gds write /home/arumukamganesmoorthe/ME/digital_design/vedic_mul/layout/vedic_final.gds

puts "GDSII file generated: /home/arumukamganesmoorthe/ME/digital_design/vedic_mul/layout/vedic_final.gds"

quit -noprompt
