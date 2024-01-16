

****Lab_2 Part1 Parameter Measure****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

****Main Circuit****
Ms VOUT Vin GND GND n_18 w=1u l=1u m=1
V1 Vin GND 0.8
V2 VOUT GND 0.8


****DC Analysis****
.op

.end
