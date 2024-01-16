

****Lab_4 Part2 Noninverting Amplifier****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
E1 Vout GND Vin1 Vin2 60dB
V1 Vin1 GND 2.5
R1 Vin2 Vout 30000
R2 Vin2 GND 1000


****DC Analysis****
.op
.dc V1 0 5 0.01
.probe dc 
+ V(Vout) 
+ deriv("V(Vout)")

****TF Analysis****
.tf V(Vout) V1

.end
