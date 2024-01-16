

****Final Project Comparater Circuit Testing****

.protect
.lib "./cic018.l" TT
.temp 25
.unprotect
.option 
+ post
+ runlvl = 6
+ captable

.param Fs=20k
.param Ts='1/Fs'
.param cnt_freq=1.594x
.param cnt_period='1/cnt_freq'
.param vindc = 0.7

.include "comparater.spi"


****Main Circuit****

xcomparater VDD GND Vb Vip Vin Vout / cmp

VDD VDD GND 1.37
Vb Vb GND 0.5
*Vip Vip GND pulse 0.3 1.3 10u 50u 0.2u 10u 2u
Vip Vip GND 0.7
Vin Vin GND vindc
VClk_CNT Clk_CNT gnd pulse(0 1.8 0.1n 0.1n 0.1n 'cnt_period/2' cnt_period)


****DC Analysis****
.op


****TRAN Analysis****
*.tran 0.01us 70us sweep vindc 0.3 1.3 0.1


.end