

****Lab_5 Part2 Operational Amplifier with Resistive Feedback****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
VBS Vplus GND 0.7
Vi Vi Vplus dc = 0 ac = 1
R1 Vi Vminus 5x
R2 Vminus Vout 50x
CL Vout GND 2p


****Opamp Circuit****
MB Vvirtual_ground Vb GND GND n_18 w=11u l=0.9u m=1

M1 VDrain1 Vplus Vvirtual_ground GND n_18 w=5.5u l=0.9u m=1
M2 VDrain2 Vminus Vvirtual_ground GND n_18 w=5.5u l=0.9u m=1

M3 VGate78 VcasN VDrain1 GND n_18 w=5.5u l=0.9u m=1
M4 Vout VcasN VDrain2 GND n_18 w=5.5u l=0.9u m=1

M5 VGate78 VcasP VDrain7 VDD p_18 w=1.14u l=0.18u m=1
M6 Vout VcasP VDrain8 VDD p_18 w=1.14u l=0.18u m=1

M7 VDrain7 VGate78 VDD VDD p_18 w=1.14u l=0.18u m=1
M8 VDrain8 VGate78 VDD VDD p_18 w=1.14u l=0.18u m=1

VDD VDD GND 1.8
VcasN VcasN GND 1
VcasP VcasP GND 1.05
Vb Vb GND 0.4


****DC Analysis****
.op 

****TF Analysis****
.tf V(Vout) Vi

****PZ Analysis****
.AC DEC 10 1 1G
.pz V(Vout) Vi
.probe AC Vdb(Vout) Vp(Vout)
.meas AC gain_db MAX Vdb(Vout)
.meas AC Bandwidth when Vdb(Vout) = "gain_db - 3"
.meas AC Unit_gain_width when Vdb(Vout) = "0"

.end