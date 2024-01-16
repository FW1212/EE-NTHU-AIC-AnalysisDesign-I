

****Lab_6 Part1 Amplifier Design****

.protect
.lib "./cic018.l" SS
.temp 27
.unprotect
.option 
+ post
+ runlvl = 6
+ captable

.parameter Vcm_dc = 0.8


****CMFB Opamp Circuit****

.SUBCKT CMFB_omp Vplus Vminus Vo VDD VSS

MB Vvirtual_ground Vb VDD VDD p_18 w=1u l=0.18u m=1

M1 Vo Vplus Vvirtual_ground VDD p_18 w=0.5u l=0.18u m=1
M2 VcasN Vminus Vvirtual_ground VDD p_18 w=0.5u l=0.18u m=1

M3 Vo VcasN VSS VSS n_18 w=0.25u l=0.18u m=1
M4 VcasN VcasN VSS VSS n_18 w=0.25u l=0.18u m=1

Vb Vb GND 1.2

.ENDS


****2 Stage Amp Circuit****

.SUBCKT AMP Vfb Vip Vin Vop Von VDD VSS

M1 Vcon145 Vbp VDD VDD p_18 w=8u l=1.1u m=1

M2 Vop Vbp VDD VDD p_18 w=4u l=1.1u m=1
M3 Von Vbp VDD VDD p_18 w=4u l=1.1u m=1

M4 Vcon46 Vip Vcon145 VDD p_18 w=4u l=1.1u m=1 
M5 Vcon57 Vin Vcon145 VDD p_18 w=4u l=1.1u m=1

M6 Vcon46 Vfb GND GND n_18 w=1u l=1.1u m=1 
M7 Vcon57 Vfb GND GND n_18 w=1u l=1.1u m=1

M8 Vop Vcon46 GND GND n_18 w=1u l=1.1u m=1 
M9 Von Vcon57 GND GND n_18 w=1u l=1.1u m=1

Rc1 Vcon46 VconRC1 250k
Cc1 Vop VconRC1 1p
Rc2 Vcon57 VconRC2 250k
Cc2 Von VconRC2 1p

CL1 Vop GND 1p
CL2 Von GND 1p

Vbp Vbp GND 1.2

.ENDS


****Main Circuit****

xAMP Vfb Vip Vin Vop Von VDD GND / AMP
xCMFB_omp Vocm Vref Vfb VDD GND / CMFB_omp

Rsense1 Vop Vocm 100g
Rsense2 Von Vocm 100g

VDD VDD GND 1.8
Vref Vref GND 0.9

Vcm Vcm GND dc = Vcm_dc
Vdiff Vdiff GND dc = 0 ac = 1
Ep Vip Vcm Vdiff GND 0.5
En Vin Vcm Vdiff GND -0.5


****DC Analysis****
.op
.dc Vcm_dc 0 1.1 0.1
.probe power


****TF Analysis****
.tf V(Vop, Von) Vdiff


****PZ Analysis****
.AC DEC 10 1 1G sweep Vcm_dc 0 1.1 0.1
.pz V(Vop, Von) Vdiff

.probe AC Vdb(Vop, Von) Vp(Vop, Von)
.meas AC gain_db MAX Vdb(Vop, Von)
.meas AC Unit_gain_width when Vdb(Vop, Von) = "0"
.meas AC Phase_margin find"Vp(Vop, Von) + 180" when Vdb(Vop, Von) = "0"


.alter
.protect
.lib "./cic018.l" TT
.unprotect

.alter
.protect
.lib "./cic018.l" FF
.unprotect


.end