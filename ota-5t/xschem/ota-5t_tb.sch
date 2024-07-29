v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 660 860 1060 {flags=graph
y1=-43
y2=39
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=3
x2=11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color="4 7"
node="\\"Vout db20()\\"
\\"Vout_buf db20()\\""
rawfile=$netlist_dir/ota-5t_tb.raw
sim_type=ac
autoload=1}
B 2 60 1060 860 1460 {flags=graph
y1=-180
y2=-0.06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ph(Vout)"
color=4
dataset=-1
unitx=1
logx=1
logy=0
autoload=1
sim_type=ac
rawfile=$netlist_dir/ota-5t_tb.raw}
B 2 1160 660 1960 1060 {flags=graph
y1=-11
y2=-6.3
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=3
x2=11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=1


rawfile=$netlist_dir/ota-5t_tb.raw
sim_type=noise
color=7
node=onoise_spectrum
autoload=1}
B 2 1160 1060 1960 1460 {flags=graph
y1=0
y2=0.00014
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=3
x2=11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=4
node="\\"onoise_spectrum 2 ** integ() sqrt()\\""
rawfile=$netlist_dir/ota-5t_tb.raw
sim_type=noise
autoload=1}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]]
sets: [xschem raw datasets]
)} 880 1050 0 0 0.6 0.6 {floater=1}
N 560 150 580 150 {
lab=Vout}
N 580 150 580 170 {
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
N 210 70 210 110 {
lab=VDD}
N 210 170 210 190 {
lab=Ib1}
N 210 190 210 210 {
lab=Ib1}
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
N 770 420 790 420 {
lab=Vout_buf}
N 790 420 790 440 {
lab=Vout_buf}
N 280 70 280 110 {
lab=VDD}
N 280 170 280 190 {
lab=Ib2}
N 280 190 280 210 {
lab=Ib2}
N 700 420 770 420 {
lab=Vout_buf}
N 730 420 730 530 {
lab=Vout_buf}
N 500 530 730 530 {
lab=Vout_buf}
N 500 460 550 460 {
lab=Vout_buf}
N 500 460 500 530 {
lab=Vout_buf}
N 390 540 390 560 {
lab=GND}
N 390 380 390 480 {
lab=Vin_buf}
N 390 380 550 380 {
lab=Vin_buf}
C {devices/isource.sym} 210 140 0 0 {name=I0 value=\{ib\}}
C {devices/lab_wire.sym} 470 90 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 580 200 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 230 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 410 110 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 410 190 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 410 150 0 0 {name=p7 sig_type=std_logic lab=Ib1}
C {devices/code_shown.sym} 870 50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.param vdd=1.8
.param vcm=0.9
.include ../sizing_ota-5t.spice

.control
    save all
    save @m.x1.xm2a.msky130_fd_pr__pfet_01v8[id] @m.x1.xm2a.msky130_fd_pr__pfet_01v8[gm] @m.x1.xm2a.msky130_fd_pr__pfet_01v8[gds]
    save @m.x1.xm2b.msky130_fd_pr__pfet_01v8[id] @m.x1.xm2b.msky130_fd_pr__pfet_01v8[gm] @m.x1.xm2b.msky130_fd_pr__pfet_01v8[gds]
    save @m.x1.xm1a.msky130_fd_pr__nfet_01v8[id] @m.x1.xm1a.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm1a.msky130_fd_pr__nfet_01v8[gds]
    save @m.x1.xm1b.msky130_fd_pr__nfet_01v8[id] @m.x1.xm1b.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm1b.msky130_fd_pr__nfet_01v8[gds]
    save @m.x1.xm0a.msky130_fd_pr__nfet_01v8[id] @m.x1.xm0a.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm0a.msky130_fd_pr__nfet_01v8[gds]
    save @m.x1.xm0b.msky130_fd_pr__nfet_01v8[id] @m.x1.xm0b.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm0b.msky130_fd_pr__nfet_01v8[gds]

    op
    show
    
    noise v(Vout_buf) Vibuf dec 20 1k 100e9
    setplot noise2
    print onoise_total
 
    ac dec 20 1k 100e9
    let vout_mag = abs(v(Vout))
    let vout_phase_margin = phase(v(Vout)) * 180/pi + 180
    meas ac A0 find vout_mag at=1k
    meas ac UGF when vout_mag=1 fall=1
    meas ac PM find vout_phase_margin when vout_mag=1

    echo $plots
    write ota-5t_tb.raw op1.all noise1.all noise2.all ac2.all
.endc
"}
C {devices/launcher.sym} 950 930 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 950 990 0 0 {name=h27
descr="Load raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac

"
}
C {devices/lab_wire.sym} 580 150 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {ota-5t.sym} 480 150 0 0 {name=x1}
C {devices/vsource.sym} 50 140 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 140 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 210 2 0 {name=p8 sig_type=std_logic lab=Ib1}
C {devices/vcvs.sym} 150 390 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 310 390 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 50 510 0 0 {name=Vdm value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 230 510 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 50 560 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 230 560 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 230 430 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 150 280 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 310 280 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 130 70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 470 210 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 700 120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_wire.sym} 610 360 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 790 470 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 790 500 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 550 420 0 0 {name=p16 sig_type=std_logic lab=Ib2}
C {devices/lab_wire.sym} 790 420 0 1 {name=p17 sig_type=std_logic lab=Vout_buf}
C {ota-5t.sym} 620 420 0 0 {name=x2}
C {devices/lab_wire.sym} 610 480 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 280 140 0 0 {name=I1 value=\{ib\}}
C {devices/lab_wire.sym} 280 210 2 0 {name=p19 sig_type=std_logic lab=Ib2}
C {devices/lab_wire.sym} 280 70 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 390 510 0 0 {name=Vibuf value="dc \{vcm\} ac 1" savecurrent=false}
C {devices/gnd.sym} 390 560 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 440 380 0 1 {name=p14 sig_type=std_logic lab=Vin_buf}
