v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -60 0 0 0 {
lab=in}
N -200 0 -60 0 {
lab=in}
N -200 60 -200 80 {
lab=GND}
N 40 60 40 80 {
lab=GND}
N 40 80 60 80 {
lab=GND}
N 60 60 60 80 {
lab=GND}
N 40 -80 40 -60 {
lab=VDD}
N 40 -80 60 -80 {
lab=VDD}
N 60 -80 60 -60 {
lab=VDD}
N -400 60 -400 80 {
lab=GND}
N -400 -20 -400 0 {
lab=VDD}
N 40 -100 40 -80 {
lab=VDD}
N 40 80 40 100 {
lab=GND}
N 120 0 200 0 {
lab=out}
N 150 -0 150 20 {
lab=out}
N 150 80 150 100 {}
C {devices/code.sym} -380 -240 0 0 {name=SIM only_toplevel=false value="
.param temp=27



*.op
*.ac dec 10 1 10G
.tran 0.01n 50n


.save all 

"}
C {devices/code.sym} -140 -230 0 0 {name=TT_MODELS
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
C {devices/vsource.sym} -200 30 0 0 {name=V1 value="PULSE(0 1.8 0 0.1p 0.1p 10n 20n)"}
C {devices/gnd.sym} -200 80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -400 30 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} -400 -20 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -400 80 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 40 -100 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 40 100 0 0 {name=l5 lab=GND}
C {devices/opin.sym} 200 0 0 0 {name=p1 lab=out}
C {devices/lab_wire.sym} -110 0 0 0 {name=l6 sig_type=std_logic lab=in}
C {core/sqar_inv_c/sqar_inv_c.sym} 0 0 0 0 {name=x1}
C {devices/capa.sym} 150 50 0 0 {name=C1
m=1
value=10f
device="ceramic capacitor"}
C {devices/gnd.sym} 150 100 0 0 {name=l7 lab=GND}
