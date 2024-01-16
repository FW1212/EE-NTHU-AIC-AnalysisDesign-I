

****Lab_5 Part1 Operational Amplifier Design****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Main Circuit****
MB Vvirtual_ground Vb GND GND n_18 w=12u l=1u m=1

M1 VDrain1 Vip Vvirtual_ground GND n_18 w=6u l=1u m=1
M2 VDrain2 Vin Vvirtual_ground GND n_18 w=6u l=1u m=1

M3 VGate78 VcasN VDrain1 GND n_18 w=6u l=1u m=1
M4 Vout VcasN VDrain2 GND n_18 w=6u l=1u m=1

M5 VGate78 VcasP VDrain7 VDD p_18 w=1.41u l=0.18u m=1
M6 Vout VcasP VDrain8 VDD p_18 w=1.41u l=0.18u m=1

M7 VDrain7 VGate78 VDD VDD p_18 w=1.41u l=0.18u m=1
M8 VDrain8 VGate78 VDD VDD p_18 w=1.41u l=0.18u m=1

VDD VDD GND 1.8
VcasN VcasN GND 0.7
VcasP VcasP GND 1.05
Vb Vb GND 0.4

Vcm Vcm GND dc = 0.55
Vdiff Vdiff GND dc = 0 ac = 1
Ep Vip Vcm Vdiff GND 0.5
En Vin Vcm Vdiff GND -0.5

CL Vout GND 2p

****DC Analysis****
.op 

****TF Analysis****
.tf V(Vout) Vdiff

****PZ Analysis****
.AC DEC 10 1 1G
.pz V(Vout) Vdiff
.probe AC Vdb(Vout) Vp(Vout)
.meas AC gain_db MAX Vdb(Vout)
.meas AC Bandwidth when Vdb(Vout) = "gain_db - 3"

.end