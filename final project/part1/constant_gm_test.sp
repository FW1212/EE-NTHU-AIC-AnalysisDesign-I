

****Final Project Constant gm Circuit Testing****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl = 6
+ captable

.parameter voltage = 1.8

.include "constant_gm.spi"


****Main Circuit****

xconstant_gm Vbias VDD GND / constant_gm

VDD VDD GND voltage
*VDD VDD GND pulse 0 1.98 1ms 0.1u 0.1u 10m 10 


****DC Analysis****
.op
.dc voltage 1.62 1.98 0.02


****TRAN Analysis****
*.tran 100us 10ms


.end