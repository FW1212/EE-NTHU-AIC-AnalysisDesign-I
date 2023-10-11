

****Lab_1 Part1 Nmos****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable

.param length=0.18u

****Main Circuit****
Mthn VDS VDS GND GND n_18 w="3*length" l="length" m=1
I1 VDD VDS 30u
V1 VDD GND 1.8


****TT Analysis****
.op
.dc length 0.18u 10u 0.01u
.probe dc 
+ n_Vth=par("LV9(Mthn)") 
+ n_gm=par("LX7(Mthn)") 
+ n_gds=par("LX8(Mthn)")  
+ n_Vdsat=par("LV10(Mthn)") 
+ n_gain=par("LX7(Mthn)/LX8(Mthn)")
+ n_power_eff=par("LX7(Mthn)/LX4(Mthn)")
+ n_speed=par("LX7(Mthn)/LX18(Mthn)")

****SS Analysis****
.alter
.protect
.lib "./cic018.l" SS
.unprotect

****FF Analysis****
.alter
.protect
.lib "./cic018.l" FF
.unprotect

.end