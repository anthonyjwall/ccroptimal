v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -30 40 30 {
lab=OUT}
N 0 -60 0 60 {
lab=IN}
N 40 -0 120 -0 {
lab=OUT}
N -20 -0 -0 -0 {
lab=IN}
N 40 -60 80 -60 {
lab=nwell}
N 40 60 80 60 {
lab=pwell}
N 40 120 60 120 {
lab=vss}
N 40 90 40 120 {
lab=vss}
N 40 -110 70 -110 {
lab=vss}
N 40 -110 40 -90 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 20 60 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -60 0 0 {name=M2
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
C {devices/ipin.sym} -20 0 0 0 {name=p1 lab=IN}
C {devices/opin.sym} 120 0 0 0 {name=p2 lab=OUT}
C {devices/iopin.sym} 70 -60 0 0 {name=p3 lab=nwell}
C {devices/iopin.sym} 70 60 0 0 {name=p4 lab=pwell}
C {devices/iopin.sym} 50 120 0 0 {name=p5 lab=vss}
C {devices/iopin.sym} 60 -110 0 0 {name=p6 lab=vdd}
