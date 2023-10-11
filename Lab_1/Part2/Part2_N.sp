

****Lab_1 Part2 Nmos****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

.param length=0.18u

****Main Circuit****
Mthn VDD VG GND GND n_18 w="3*length" l="length" m=1
V1 VDD GND 1.8
V2 VG GND 0.9


****Analysis****
.op
.dc V2 0 1.8 0.01 sweep length 1.8u 10u 1.8u
.probe dc n_Id=par("LX4(Mthn)") 

.end