

****Lab_1 Part3_3****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

****Main Circuit****
Mbn VDD VG VS VS n_18 w=3.6u l=2u m=1    * length = 2u (long channel), W/L ratio = 1.8
V1 VDD GND 1.8
V2 VS GND 0
V3 VG VS 0.7


****Analysis****
.op
.dc V2 0 1 0.001
.probe dc 
+ Id_VB-VS=par("LX4(Mbn)") 
+ Vth_VB-VS=par("LV9(Mbn)")
+ gm_VB-VS=par("LX7(Mbn)") 

.end