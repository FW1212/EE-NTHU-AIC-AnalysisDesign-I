

****Lab_2 Part1 Commom Source****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

.param Resistance = 64000

****Main Circuit****
Ms Vout Vin GND GND n_18 w=0.75u l=1u m=1
V1 VDD GND 1.8
V2 Vin GND 0.8
RD VDD Vout "Resistance"


****DC Analysis****
.op
.dc V2 0 1.8 0.01
.dc Resistance 50000 70000 100
.probe dc 
+ V(Vout) 
+ I(RD)
+ deriv("V(Vout)")

****TF Analysis****
.tf V(Vout) V2

.end
