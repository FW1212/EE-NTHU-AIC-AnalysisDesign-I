

****Lab_4 Part4 Voltage Adder + Integrator****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl=6
+ captable


****Adder Circuit****
E1 Vout1 GND GND Vminus1 60dB
Vin Vx GND PULSE 0 1 5 1n 1n 10
R1 Vx Vminus1 2030
R2 Vy Vminus1 1000
R3 Vout1 Vminus1 31000

****5x Integrator Circuit****
E2 Vout2 GND GND Vminus2 60dB
R4 Vout1 Vminus2 100k
C1 Vout2 Vminus2 2u

****8x Integrator Circuit****
E3 Vy GND GND Vminus3 60dB
R5 Vout2 Vminus3 100k
C2 Vy Vminus3 1.25u


****Analysis****
.op
.tran 1m 15
.probe V(Vy)

.end
