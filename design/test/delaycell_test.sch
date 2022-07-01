v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -220 -160 -220 -140 {
lab=VDD}
N -220 -80 -220 -60 {
lab=GND}
N 210 -180 210 -160 {
lab=VDD}
N 270 -180 270 -160 {
lab=VDD}
N 270 140 270 160 {
lab=GND}
N 210 140 210 160 {
lab=GND}
N -60 0 0 0 {
lab=in}
N -200 0 -60 0 {
lab=in}
N -200 60 -200 80 {
lab=GND}
N 580 -0 620 -0 {
lab=out}
N 610 0 610 20 {
lab=out}
N 610 80 610 100 {
lab=GND}
N 130 -200 130 -160 {
lab=CNTL}
N 130 -390 130 -370 {
lab=VDD}
N 60 -380 60 -370 {
lab=VDD}
N 60 -380 130 -380 {
lab=VDD}
N 60 -310 60 -300 {
lab=CNTL}
N 60 -300 130 -300 {
lab=CNTL}
N 130 -300 130 -200 {
lab=CNTL}
N 130 -310 130 -300 {
lab=CNTL}
C {devices/vsource.sym} -220 -110 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -220 -160 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -220 -60 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 210 -180 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 270 -180 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 210 160 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 270 160 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -200 30 0 0 {name=V2 value="PULSE(0 1.8 0 0.1p 0.1p 100n 200n)"}
C {devices/gnd.sym} -200 80 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -110 0 0 0 {name=l8 sig_type=std_logic lab=in}
C {devices/opin.sym} 620 0 0 0 {name=p1 lab=out}
C {devices/code.sym} -190 -580 0 0 {name=SIM only_toplevel=false value="
.param temp=27



*.op
*.ac dec 10 1 10G
*.tran 0.01n 5u


.save all 

"}
C {devices/code.sym} 50 -570 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.options wnflag=1
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
*.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
*.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice

* Manually adding standard cell models
.include /pdk/open_pdks/install/share/pdk/sky130A/libs.ref/sky130_fd_sc_hs/spice/sky130_fd_sc_hs.spice
"}
C {devices/capa.sym} 610 50 0 0 {name=C1
m=1
value=100f
device="ceramic capacitor"}
C {devices/gnd.sym} 610 100 0 0 {name=l9 lab=GND}
C {devices/isource.sym} 130 -340 0 0 {name=I0 value=10u}
C {devices/vdd.sym} 130 -390 0 0 {name=l10 lab=VDD}
C {core/delay_cell/delay_cell.sym} 0 0 0 0 {name=x1 L_A=0.15 W_SW=1 W_PA=1 W_NA=1 W_FB=1}
C {devices/res.sym} 60 -340 0 0 {name=R1
value=0.5M
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 130 -230 3 0 {name=l11 sig_type=std_logic lab=CNTL}
