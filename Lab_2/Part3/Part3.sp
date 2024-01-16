

****Lab_2 Part3 Source Follower****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

****Main Circuit****
Md VDD Vin Vout GND n_18 w=1u l=1u m=1
V1 VDD GND 1.8
V2 Vin GND 1.6
RS Vout GND 79000


****DC Analysis****
.op
.dc V2 0 1.8 0.01
.probe dc 
+ V(Vout) 
+ I(RS)
+ deriv("V(Vout)")

****TF Analysis****
.tf V(Vout) V2

.end
