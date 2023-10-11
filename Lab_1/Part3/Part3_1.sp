

****Lab_1 Part3_1****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

.param ratio=1

****Main Circuit****
Mbn VDD VG GND GND n_18 w="ratio*2u" l=2u m=1
V1 VDD GND 1.8
V2 VG GND 0.7


****Analysis****
.op
.dc ratio 1 3 0.01
.probe dc Id=par("LX4(Mbn)") 

.end