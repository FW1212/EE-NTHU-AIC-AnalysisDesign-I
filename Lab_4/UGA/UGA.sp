

****Lab_4 Part1 Unity-gain Amplifier****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
E1 Vout GND Vin Vout 60dB
V1 Vin GND 2.5


****DC Analysis****
.op
.dc V1 0 5 0.01
.probe dc 
+ V(Vout) 
+ deriv("V(Vout)")

****TF Analysis****
.tf V(Vout) V1

.end
