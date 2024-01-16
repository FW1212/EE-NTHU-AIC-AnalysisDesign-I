

****Final Project 2 Stage Opamp Circuit Testing****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl = 6
+ captable

.parameter voltage = 1.8

.include "stage2_opamp.spi"


****Main Circuit****

xstage2_opamp Vip Vin Vout VDD GND / stage2_opamp

VDD VDD GND voltage

Vcm Vcm GND dc = 0.65
Vdiff Vdiff GND dc = 0 ac = 1
Ep Vip Vcm Vdiff GND 0.5
En Vin Vcm Vdiff GND -0.5


****DC Analysis****
.op


****TF Analysis****
.tf V(Vout) Vdiff


.end