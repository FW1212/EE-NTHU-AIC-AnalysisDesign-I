

****Lab_4 Part3 Inverting Amplifier****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
E1 Vout GND GND Vminus 60dB
V1 Vin GND 2.5
R1 Vout Vminus 31000
R2 Vin Vminus 1000


****DC Analysis****
.op
.dc V1 0 5 0.01
.probe dc 
+ V(Vout) 
+ deriv("V(Vout)")

****TF Analysis****
.tf V(Vout) V1

.end
