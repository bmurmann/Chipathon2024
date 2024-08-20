v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 700 870 1100 {flags=graph
y1=-43
y2=39
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=4.1541314
x2=12.15413
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

sim_type=ac
autoload=0}
B 2 70 1100 870 1500 {flags=graph
y1=-180
y2=-0.06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.1541314
x2=12.15413
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
autoload=0
sim_type=ac
}
B 2 1170 700 1970 1100 {flags=graph
y1=-12
y2=-7.3
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=4.1541314
x2=12.15413
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=1



sim_type=noise
color=7
node=onoise_spectrum
autoload=0}
B 2 1170 1100 1970 1500 {flags=graph
y1=0
y2=4.9e-05
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=4.1541314
x2=12.15413
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

sim_type=noise
autoload=0}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]]
)} 900 850 0 0 0.4 0.4 {floater=1}
T {tcleval(raw info: [xschem raw info])} 100 610 0 0 0.3 0.3 {floater=1}
T {tcleval(
NOI: [to_eng [xschem raw value onoise_total 0]]
)} 890 1100 0 0 0.4 0.4 {floater=1}
N 560 130 580 130 {
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
N 770 400 790 400 {
lab=Vout_buf}
N 700 400 770 400 {
lab=Vout_buf}
N 730 400 730 510 {
lab=Vout_buf}
N 500 510 730 510 {
lab=Vout_buf}
N 500 440 550 440 {
lab=Vout_buf}
N 500 440 500 510 {
lab=Vout_buf}
N 390 520 390 540 {
lab=GND}
N 390 360 390 460 {
lab=Vin_buf}
N 390 360 550 360 {
lab=Vin_buf}
C {devices/lab_wire.sym} 470 70 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 410 90 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 410 170 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {devices/code_shown.sym} 880 50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.param vdd=1.8
.param vcm=0.9
.include ../sizing_ota-5t-buf.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
    save all
    save @m.x1.xm2a.msky130_fd_pr__pfet_01v8[id] @m.x1.xm2a.msky130_fd_pr__pfet_01v8[gm] @m.x1.xm2a.msky130_fd_pr__pfet_01v8[gds]
    save @m.x1.xm2b.msky130_fd_pr__pfet_01v8[id] @m.x1.xm2b.msky130_fd_pr__pfet_01v8[gm] @m.x1.xm2b.msky130_fd_pr__pfet_01v8[gds]
    save @m.x1.xm1a.msky130_fd_pr__nfet_01v8_lvt[id] @m.x1.xm1a.msky130_fd_pr__nfet_01v8_lvt[gm] @m.x1.xm1a.msky130_fd_pr__nfet_01v8_lvt[gds]
    save @m.x1.xm1b.msky130_fd_pr__nfet_01v8_lvt[id] @m.x1.xm1b.msky130_fd_pr__nfet_01v8_lvt[gm] @m.x1.xm1b.msky130_fd_pr__nfet_01v8_lvt[gds]
    save @m.x1.xm0a.msky130_fd_pr__nfet_01v8_lvt[id] @m.x1.xm0a.msky130_fd_pr__nfet_01v8_lvt[gm] @m.x1.xm0a.msky130_fd_pr__nfet_01v8_lvt[gds]
    save @m.x1.xm0b.msky130_fd_pr__nfet_01v8_lvt[id] @m.x1.xm0b.msky130_fd_pr__nfet_01v8_lvt[gm] @m.x1.xm0b.msky130_fd_pr__nfet_01v8_lvt[gds]

    op
    show
    
    noise v(Vout_buf) Vibuf dec 20 1k 100e9
    setplot noise2
    print onoise_total
    let NOI = onoise_total/1e-6
    echo $&NOI
    write ota-5t-buf_tb_noise2.raw noise2.all 

    ac dec 20 1k 100e9
    let vout_mag = abs(v(Vout))
    let vout_phase_margin = phase(v(Vout)) * 180/pi + 180
    meas ac A0 find vout_mag at=1k
    meas ac UGF when vout_mag=1 fall=1
    meas ac PM find vout_phase_margin when vout_mag=1
    echo $&A0 $&UGF $&PM
    echo $plots
    write ota-5t-buf_tb.raw op1.all noise1.all ac2.all
.endc
"}
C {devices/launcher.sym} 960 760 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 960 810 0 0 {name=h27
descr="Load raw AC" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac
"
}
C {devices/lab_wire.sym} 580 130 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {ota-5t-buf.sym} 480 130 0 0 {name=x1}
C {devices/vsource.sym} 50 120 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 190 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 120 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 50 0 0 {name=p1 sig_type=std_logic lab=VSS}
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
C {devices/lab_wire.sym} 470 190 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 340 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 790 400 0 1 {name=p17 sig_type=std_logic lab=Vout_buf}
C {ota-5t-buf.sym} 620 400 0 0 {name=x2}
C {devices/lab_wire.sym} 610 460 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 390 490 0 0 {name=Vibuf value="dc \{vcm\} ac 1" savecurrent=false}
C {devices/gnd.sym} 390 540 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 440 360 0 1 {name=p14 sig_type=std_logic lab=Vin_buf}
C {devices/launcher.sym} 960 1010 0 0 {name=h1
descr="Load raw NOISE1" 
tclcommand="
xschem raw_read $netlist_dir/ota-5t-buf_tb.raw noise
"
}
C {devices/launcher.sym} 960 1060 0 0 {name=h2
descr="Load raw NOISE2" 
tclcommand="
xschem raw_read $netlist_dir/ota-5t-buf_tb_noise2.raw noise
"
}
