v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 350 290 350 {
lab=Vout}
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
N 40 510 40 530 {
lab=GND}
N 40 430 40 450 {
lab=Vp}
N 290 350 290 450 {
lab=Vout}
N 110 450 290 450 {
lab=Vout}
N 110 390 110 450 {
lab=Vout}
N 110 390 120 390 {
lab=Vout}
N 40 310 120 310 {
lab=Vp}
N 40 310 40 430 {
lab=Vp}
C {devices/lab_wire.sym} 180 290 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 370 120 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/sky130.lib.spice CACE\{corner\}
.include CACE\{DUT_path\}
.include /foss/designs/Chipathon2024/ota-5t-buf/xschem/sizing_ota-5t-buf.spice
.temp CACE\{temperature\}
"}
C {devices/lab_wire.sym} 290 350 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} 50 140 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 140 0 0 {name=V2 value=CACE\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 40 480 0 0 {name=Vp value="dc CACE\{vcm\} ac 1" savecurrent=false}
C {devices/gnd.sym} 40 530 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 130 70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 410 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {ota-5t-buf.sym} 190 350 0 0 {name=x1}
C {devices/code_shown.sym} 370 300 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false
value="
.control
    noise v(Vout) Vp dec 20 1k 100e9
    setplot noise2
    let NOI = onoise_total/1e-6
    echo $&NOI > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/lab_wire.sym} 60 310 0 1 {name=p3 sig_type=std_logic lab=Vp}
