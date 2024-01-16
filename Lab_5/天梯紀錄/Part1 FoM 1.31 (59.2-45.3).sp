

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
MB Vvirtual_ground Vb GND GND n_18 w=4u l=1u m=1

M1 VDrain1 Vip Vvirtual_ground GND n_18 w=2u l=1u m=1
M2 VDrain2 Vin Vvirtual_ground GND n_18 w=2u l=1u m=1

M3 VGate78 VcasN VDrain1 GND n_18 w=2u l=1u m=1
M4 Vout VcasN VDrain2 GND n_18 w=2u l=1u m=1

M5 VGate78 VcasP VDrain7 VDD p_18 w=8u l=1u m=1
M6 Vout VcasP VDrain8 VDD p_18 w=8u l=1u m=1

M7 VDrain7 VGate78 VDD VDD p_18 w=8u l=1u m=1
M8 VDrain8 VGate78 VDD VDD p_18 w=8u l=1u m=1

VDD VDD GND 1.8
VcasN VcasN GND 1.2
VcasP VcasP GND 0.5
Vb Vb GND 0.6

Vcm Vcm GND dc = 0.9
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