

****Lab_2 Part2 Common Gate****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

.param Resistance = 52000

****Main Circuit****
Mb Vout Vb Vin GND n_18 w=3u l=0.5u m=1
V1 VDD GND 1.8
V2 Vin GND 0.16
V3 Vb GND 0.75
RD VDD Vout "Resistance"


****DC Analysis****
.op
.dc V2 0 1.8 0.01
.dc Resistance 50000 60000 100
.probe dc 
+ V(Vout) 
+ I(RD)
+ deriv("V(Vout)")

****TF Analysis****
.tf V(Vout) V2

.end
