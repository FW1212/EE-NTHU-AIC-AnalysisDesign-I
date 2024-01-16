

****Lab_3 Part1 (c) Parameter Measure****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
MN2 Vout Vb2 Vin GND n_18 w=1u l=1u m=1
V1 VDD GND 1.8
V2 Vin GND 0.5
V3 Vb2 GND 1.2
RD VDD Vout 100k


****DC Analysis****
.op

.end
