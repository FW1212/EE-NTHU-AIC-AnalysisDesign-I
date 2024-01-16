

****Lab_3 Part1 (e) Cascade Amplifier****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
MN1 Vx Vin GND GND n_18 w=2u l=2u m=1
MP1 Vx Vb1 VDD VDD p_18 w=5.8u l=2u m=1
MN2 Vout Vb2 Vx GND n_18 w=8u l=1u m=1
V1 VDD GND 1.8
V2 Vin GND 0.45
V3 Vb1 GND 1.2
V4 Vb2 GND 1.05
RD VDD Vout 100k
I1 Vx GND 10u


****DC Analysis****
.op

****TF Analysis****
.tf V(Vout) V2

.end
