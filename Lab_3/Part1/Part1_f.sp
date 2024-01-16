

****Lab_3 Part1 (f) Cascade Amplifier Frequency Response****

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
V2 Vin GND 0.45 + ac 1
V3 Vb1 GND 1.2
V4 Vb2 GND 1.05
RD VDD Vout 100k
I1 Vx GND 10u


****PZ Analysis****
.ac dec 10 1 200G
.pz V(Vout) V2
.probe Vdb(Vout) Vp(Vout)
.meas ac dcgain_in_db max Vdb(Vout) $ find max ac gain
.meas ac BW when Vdb(Vout) = "dcgain_in_db - 3"
.meas ac UGB when Vdb(Vout) = 0 

.end
