

****Lab_2 Part2 Body Effect****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

****Main Circuit****
Mb VDD Vb Vin GND n_18 w=1u l=0.5u m=1
V1 VDD GND 1.8
V2 Vin GND 0.16
V3 Vb GND 0.75


****DC Analysis****
.op

.end
