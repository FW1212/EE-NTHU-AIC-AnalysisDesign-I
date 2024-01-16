

****Final Project Bandgap Reference Circuit Testing****

.protect
.lib "./cic018.l" TT
.temp temperature
.unprotect
.option 
+ post
+ runlvl = 6
+ captable

.parameter voltage = 1.8
.parameter temperature = 27

.include "bgr.spi"


****Main Circuit****

xbgr VDD GND Vref / bgr

VDD VDD GND voltage
*VDD VDD GND pwl(0 0 10u 0 100u 2)
*VDD VDD GND 1.8 ac = 1


****DC Analysis****
.op
*.dc voltage 0 1.98 0.02 sweep temperature -40 125 5
*.dc temperature -40 125 1

****TRAN Analysis****
*.tran 0.01u 110u


****AC Analysis****
*.ac DEC 10 1 100k
*.ac DEC 10 1 100k sweep temperature -40 125 5
*.probe AC Vdb(Vref) Vp(Vref)


*.alter
*.parameter voltage = 1.98

*.alter
*.parameter voltage = 1.62


.end
