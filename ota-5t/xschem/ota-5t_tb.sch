v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 130 580 130 {
lab=Vout}
N 580 130 580 150 {
lab=Vout}
N 50 150 50 170 {
lab=GND}
N 50 50 50 90 {
lab=VSS}
N 130 150 130 170 {
lab=GND}
N 50 170 50 190 {
lab=GND}
N 130 50 130 90 {
lab=VDD}
N 50 170 130 170 {
lab=GND}
N 210 50 210 90 {
lab=VDD}
N 210 150 210 170 {
lab=Ib}
N 210 170 210 190 {
lab=Ib}
N 230 350 270 350 {
lab=#net1}
N 50 300 50 460 {
lab=#net1}
N 50 300 230 300 {
lab=#net1}
N 50 520 50 540 {
lab=GND}
N 230 520 230 540 {
lab=GND}
N 230 440 310 440 {
lab=#net2}
N 230 440 230 460 {
lab=#net2}
N 230 390 270 390 {
lab=GND}
N 230 390 230 410 {
lab=GND}
N 150 400 150 440 {
lab=#net2}
N 310 400 310 440 {
lab=#net2}
N 230 300 230 350 {
lab=#net1}
N 310 260 310 340 {
lab=Vn}
N 150 260 150 340 {
lab=Vp}
N 150 440 230 440 {
lab=#net2}
N 190 390 230 390 {
lab=GND}
N 190 350 230 350 {
lab=#net1}
C {devices/isource.sym} 210 120 0 0 {name=I0 value=\{ib\}}
C {devices/lab_wire.sym} 470 70 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 580 180 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 210 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 410 90 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 410 170 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 410 130 0 0 {name=p7 sig_type=std_logic lab=Ib}
C {devices/code_shown.sym} 660 80 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib \{PDK_ROOT\}/\{PDK\}/libs.tech/combined/sky130.lib.spice \{corner\}
.include \{DUT_path\}
.include /foss/designs/Chipathon2024/ota-5t/xschem/sizing_ota-5t.spice
.temp \{temperature\}
"}
C {devices/lab_wire.sym} 580 130 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {ota-5t.sym} 480 130 0 0 {name=x1}
C {devices/vsource.sym} 50 120 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 190 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 120 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 50 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 190 2 0 {name=p8 sig_type=std_logic lab=Ib}
C {devices/vcvs.sym} 150 370 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 310 370 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 50 490 0 0 {name=Vdm value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 230 490 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 50 540 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 230 540 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 230 410 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 150 260 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 310 260 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 130 50 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 50 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 470 190 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 430 360 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 660 260 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false
value="
.control
    ac dec 20 1k 100e6
    let vout_mag = abs(v(Vout))
    let vout_phase_margin = phase(v(Vout)) * 180/pi + 180
    meas ac A0 find vout_mag at=1k
    meas ac UGF when vout_mag=1 fall=1
    meas ac PM find vout_phase_margin when vout_mag=1
    echo $&A0 $&UGF $&PM > \{simpath\}/\{filename\}_\{N\}.data
    quit
.endc
"}
