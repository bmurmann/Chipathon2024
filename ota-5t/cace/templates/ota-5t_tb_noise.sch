v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 170 50 190 {
lab=GND}
N 50 70 50 110 {
lab=VSS}
N 130 170 130 190 {
lab=GND}
N 50 190 50 210 {
lab=GND}
N 130 70 130 110 {
lab=VDD}
N 50 190 130 190 {
lab=GND}
N 230 370 270 370 {
lab=#net1}
N 50 320 50 480 {
lab=#net1}
N 50 320 230 320 {
lab=#net1}
N 50 540 50 560 {
lab=GND}
N 230 540 230 560 {
lab=GND}
N 230 460 310 460 {
lab=#net2}
N 230 460 230 480 {
lab=#net2}
N 230 410 270 410 {
lab=GND}
N 230 410 230 430 {
lab=GND}
N 150 420 150 460 {
lab=#net2}
N 310 420 310 460 {
lab=#net2}
N 230 320 230 370 {
lab=#net1}
N 310 280 310 360 {
lab=Vn}
N 150 280 150 360 {
lab=Vp}
N 150 460 230 460 {
lab=#net2}
N 190 410 230 410 {
lab=GND}
N 190 370 230 370 {
lab=#net1}
N 750 100 770 100 {
lab=Vout_buf}
N 770 100 770 120 {
lab=Vout_buf}
N 680 100 750 100 {
lab=Vout_buf}
N 710 100 710 210 {
lab=Vout_buf}
N 480 210 710 210 {
lab=Vout_buf}
N 480 140 530 140 {
lab=Vout_buf}
N 480 140 480 210 {
lab=Vout_buf}
N 370 220 370 240 {
lab=GND}
N 370 60 370 160 {
lab=Vin_buf}
N 370 60 530 60 {
lab=Vin_buf}
N 220 70 220 110 {
lab=VDD}
N 220 170 220 190 {
lab=Ib}
N 220 190 220 210 {
lab=Ib}
C {devices/code_shown.sym} 430 300 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib \{PDK_ROOT\}/\{PDK\}/libs.tech/combined/sky130.lib.spice \{corner\}
.include \{DUT_path\}
.include /foss/designs/Chipathon2024/ota-5t/xschem/sizing_ota-5t.spice
.temp \{temperature\}
"}
C {devices/vsource.sym} 50 140 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 140 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/vcvs.sym} 150 390 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 310 390 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 50 510 0 0 {name=Vdm value="ac 1" savecurrent=false}
C {devices/vsource.sym} 230 510 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 50 560 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 230 560 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 230 430 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 150 280 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 310 280 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 130 70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 430 450 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false
value="
.control
    noise v(Vout_buf) Vibuf dec 20 1k 100e9
    setplot noise2
    let NOI = onoise_total/1e-6
    echo $&NOI > \{simpath\}/\{filename\}_\{N\}.data
    quit
.endc
"}
C {devices/lab_wire.sym} 590 40 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 770 150 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 180 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 530 100 0 0 {name=p16 sig_type=std_logic lab=Ib}
C {devices/lab_wire.sym} 770 100 0 1 {name=p17 sig_type=std_logic lab=Vout_buf}
C {ota-5t.sym} 600 100 0 0 {name=x2}
C {devices/lab_wire.sym} 590 160 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 370 190 0 0 {name=Vibuf value="dc \{vcm\} ac 1" savecurrent=false}
C {devices/gnd.sym} 370 240 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 420 60 0 1 {name=p14 sig_type=std_logic lab=Vin_buf}
C {devices/isource.sym} 220 140 0 0 {name=I1 value=\{ib\}}
C {devices/lab_wire.sym} 220 210 2 0 {name=p15 sig_type=std_logic lab=Ib}
C {devices/lab_wire.sym} 220 70 0 0 {name=p19 sig_type=std_logic lab=VDD}
