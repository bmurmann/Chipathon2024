v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 900 -710 1360 -190 {flags=graph
y1=-14
y2=-7.1
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"total; onoise_spectrum\\"
\\"1/f; onoise.m.xm1.msky130_fd_pr__nfet_01v8_lvt.1overf\\"
\\"thermal; onoise.m.xm1.msky130_fd_pr__nfet_01v8_lvt.id\\""
color="4 10 5"
dataset=-1
unitx=1
logx=1
logy=1
rainbow=0}
T {tcleval(thermal =[to_eng [xschem raw value onoise.m.xm1.msky130_fd_pr__nfet_01v8_lvt.id 0] ])} 580 -560 0 0 0.4 0.4 {floater=1}
T {tcleval(gm = [to_eng [xschem raw value \\@m.xm1.msky130_fd_pr__nfet_01v8_lvt\\\\[gm\\\\]  0]])} 580 -530 0 0 0.4 0.4 {floater=1}
T {tcleval(gamma = [to_eng [expr [xschem raw value onoise.m.xm1.msky130_fd_pr__nfet_01v8_lvt.id 0]**2/[xschem raw value \\@m.xm1.msky130_fd_pr__nfet_01v8_lvt\\\\[gm\\\\] 0]/4/1.38e-23/300 ]])} 580 -500 0 0 0.4 0.4 {floater=1}
N 510 -410 510 -390 {
lab=d}
N 390 -240 390 -210 {
lab=GND}
N 700 -240 700 -210 {
lab=GND}
N 610 -240 610 -210 {
lab=GND}
N 510 -330 510 -300 {
lab=GND}
N 610 -360 610 -300 {
lab=b}
N 390 -360 390 -300 {
lab=g}
N 390 -360 470 -360 {
lab=g}
N 510 -360 610 -360 {
lab=b}
N 510 -410 700 -410 {
lab=d}
N 700 -410 700 -300 {
lab=d}
N 510 -300 510 -210 {
lab=GND}
N 780 -240 780 -210 {
lab=GND}
N 780 -340 780 -300 {
lab=n}
C {devices/gnd.sym} 510 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 390 -270 0 0 {name=vg value="DC 0.9 AC 1" savecurrent=false}
C {devices/gnd.sym} 390 -210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 700 -270 0 0 {name=vd value=0.9 savecurrent=false}
C {devices/gnd.sym} 700 -210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 610 -270 2 1 {name=vsb value=\{vbx\} savecurrent=false}
C {devices/lab_wire.sym} 440 -360 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 610 -410 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 610 -360 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/code_shown.sym} 50 -670 0 0 {name=COMMANDS1 only_toplevel=false
value="
.param wx=5 lx=0.15 vbx=0
.save all
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
.noise v(n) vg dec 10 1 1e11 1

.control
run
echo $plots
write noisetest_nfet_01v8_lvt.raw noise1.all
.endc
"}
C {sky130_fd_pr/corner.sym} 160 -340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 490 -360 0 0 {name=M1
L=\{lx\}
W=\{wx\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/title.sym} 160 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/launcher.sym} 600 -670 0 0 {name=h3
descr="save, netlist & simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/gnd.sym} 610 -210 0 0 {name=l4 lab=GND}
C {devices/ccvs.sym} 780 -270 0 0 {name=Hn vnam=vd value=1}
C {devices/gnd.sym} 780 -210 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 780 -340 0 0 {name=p4 sig_type=std_logic lab=n}
C {devices/launcher.sym} 600 -630 0 0 {name=h27
descr="load NOISE" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw noise; set show_hidden_texts 1 

"
}
