v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -0 -250 -0 -190 {
lab=#net1}
N -0 -130 0 -60 {
lab=Va}
N -60 -160 -40 -160 {
lab=Ph_IN}
N -60 -160 -60 -30 {
lab=Ph_IN}
N -60 -30 -40 -30 {
lab=Ph_IN}
N 0 -90 170 -90 {
lab=Va}
N 290 -90 380 -90 {
lab=Vb}
N 500 -90 530 -90 {
lab=Ph_OUT}
N 210 -170 210 -150 {
lab=vdd}
N 230 -170 230 -150 {
lab=nwell}
N 210 -170 210 -150 {
lab=vdd}
N 230 -170 230 -150 {
lab=nwell}
N 210 -30 210 -10 {
lab=vss}
N 230 -30 230 -10 {
lab=pwell}
N 420 -170 420 -150 {
lab=vdd}
N 440 -170 440 -150 {
lab=nwell}
N 420 -170 420 -150 {
lab=vdd}
N 440 -170 440 -150 {
lab=nwell}
N 420 -30 420 -10 {
lab=vss}
N 440 -30 440 -10 {
lab=pwell}
N 110 -250 140 -250 {
lab=nwell}
N 180 -250 310 -250 {
lab=Vb}
N 310 -250 310 -90 {
lab=Vb}
N 140 -220 140 -90 {
lab=Va}
N 140 -300 140 -280 {
lab=vdd}
N 140 -300 140 -280 {
lab=vdd}
N 0 -0 0 20 {
lab=vss}
N 0 -460 0 -410 {
lab=I_IN}
N -30 -380 0 -380 {
lab=nwell}
N -0 -30 30 -30 {
lab=pwell}
N 0 -350 0 -250 {
lab=#net1}
N 40 -380 520 -380 {
lab=Ph_OUT}
N 520 -380 520 -90 {
lab=Ph_OUT}
N -120 -90 -60 -90 {
lab=Ph_IN}
N -0 -160 30 -160 {
lab=#net2}
C {sky130_fd_pr/pfet_01v8.sym} -20 -160 0 0 {name=M_PA
L=L_A
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 -30 0 0 {name=M_NA
L=L_A
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -220 -300 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -220 -280 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} -290 -300 0 0 {name=p3 lab=nwell}
C {devices/iopin.sym} -290 -280 0 0 {name=p4 lab=pwell}
C {devices/opin.sym} 530 -90 0 0 {name=p5 lab=Ph_OUT}
C {devices/ipin.sym} 0 -460 1 0 {name=p6 lab=I_IN}
C {devices/ipin.sym} -120 -90 0 0 {name=p7 lab=Ph_IN}
C {devices/lab_pin.sym} 210 -170 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 230 -170 1 0 {name=l2 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} 210 -170 1 0 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 230 -170 1 0 {name=l4 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} 210 -10 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 230 -10 3 0 {name=l6 sig_type=std_logic lab=pwell}
C {devices/lab_pin.sym} 420 -170 1 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 440 -170 1 0 {name=l8 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} 420 -170 1 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 440 -170 1 0 {name=l10 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} 420 -10 3 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 440 -10 3 0 {name=l12 sig_type=std_logic lab=pwell}
C {sky130_fd_pr/pfet_01v8.sym} 20 -380 0 1 {name=M_SW
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -250 0 1 {name=M_FB
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 140 -300 1 0 {name=l13 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 140 -300 1 0 {name=l15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 110 -250 2 1 {name=l14 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} 0 20 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -30 -380 2 1 {name=l17 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} 30 -30 2 0 {name=l18 sig_type=std_logic lab=pwell}
C {devices/lab_wire.sym} 70 -90 0 0 {name=l19 sig_type=std_logic lab=Va}
C {devices/lab_wire.sym} 350 -90 0 0 {name=l20 sig_type=std_logic lab=Vb}
C {core/sqar_inv/sqar_inv.sym} 170 -90 0 0 {name=x_M_B W_CN=1 W_CP=1 L_SQ=1}
C {core/sqar_inv/sqar_inv.sym} 380 -90 0 0 {name=x_M_C W_CN=1 W_CP=1 L_SQ=1}
C {devices/lab_pin.sym} 30 -160 2 0 {name=l21 sig_type=std_logic lab=nwell}
