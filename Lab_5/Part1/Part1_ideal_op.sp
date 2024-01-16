

****Lab_5 Part1 Ideal Operational Amplifier Simulation****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

.parameter op_gain = 1000

****Main Circuit****
Eopamp Vout GND Vplus Vminus op_gain
VBS Vplus GND 1
Vi Vi Vplus 1
R1 Vi Vminus 100k
R2 Vminus Vout 1000k
CL Vout GND 2p


****DC Analysis****
.op
.dc op_gain 100 1000 1

****TF Analysis****
.tf V(Vout) Vi

.end
