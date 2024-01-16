

****Lab_6 Part1 Parameter Measure****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
MN1 Vout Vinn GND GND n_18 w=1.1u l=1.1u m=1
MP1 Vout Vinp VDD VDD p_18 w=1.1u l=1.1u m=1
V1 VDD GND 1.8
V2 Vinn GND 0.5
V3 Vinp GND 1.2
V4 Vout GND 0.9


****DC Analysis****
.op

.end
