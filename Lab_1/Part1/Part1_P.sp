

****Lab_1 Part1 Pmos****

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
Mthp VDS VDS VDD VDD p_18 w="3*length" l="length" m=1
I1 VDS GND 30u
V1 VDD GND 1.8


****TT Analysis****
.op
.dc length 0.18u 10u 0.01u
.probe dc 
+ p_Vth=par("LV9(Mthp)") 
+ p_gm=par("LX7(Mthp)") 
+ p_gds=par("LX8(Mthp)")  
+ p_Vdsat=par("LV10(Mthp)") 
+ p_gain=par("LX7(Mthp)/LX8(Mthp)")
+ p_power_eff=par("LX7(Mthp)/LX4(Mthp)")
+ p_speed=par("LX7(Mthp)/LX18(Mthp)")

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