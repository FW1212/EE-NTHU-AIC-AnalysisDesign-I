

****Lab_3 Part1 (a) Parameter Measure****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
MN1 Vout Vin GND GND n_18 w=2u l=2u m=1
MP1 Vout Vb1 VDD VDD p_18 w=2u l=2u m=1
V1 VDD GND 1.8
V2 Vin GND 0.9
V3 Vb1 GND 0.9


****DC Analysis****
.op

.end