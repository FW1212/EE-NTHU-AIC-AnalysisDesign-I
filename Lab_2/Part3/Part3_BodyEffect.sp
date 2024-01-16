

****Lab_2 Part3 Body Effect****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

****Main Circuit****
Mb VDD Vin Vout GND n_18 w=1u l=1u m=1
V1 VDD GND 1.8
V2 Vin GND 1.6
V3 Vout GND 0.8


****DC Analysis****
.op

.end
