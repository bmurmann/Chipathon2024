v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 630 -360 630 -340 {
lab=d}
N 510 -190 510 -160 {
lab=GND}
N 820 -190 820 -160 {
lab=GND}
N 730 -190 730 -160 {
lab=GND}
N 630 -280 630 -250 {
lab=GND}
N 730 -310 730 -250 {
lab=b}
N 510 -310 510 -250 {
lab=g}
N 510 -310 590 -310 {
lab=g}
N 630 -310 730 -310 {
lab=b}
N 630 -360 820 -360 {
lab=d}
N 820 -360 820 -250 {
lab=d}
N 630 -250 630 -160 {
lab=GND}
C {devices/gnd.sym} 630 -160 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 510 -220 0 0 {name=vg value="0.9" savecurrent=false}
C {devices/gnd.sym} 510 -160 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 820 -220 0 0 {name=vd value=0.9 savecurrent=false}
C {devices/gnd.sym} 820 -160 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 730 -220 2 1 {name=vsb value=\{vbx\} savecurrent=false}
C {devices/lab_wire.sym} 560 -310 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 730 -360 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 730 -310 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/code_shown.sym} 20 -730 0 0 {name=COMMANDS1 only_toplevel=false
value="
.param wx=5 lx=0.15 vbx=0
.dc vg 0 1.8 25m vd 0 1.8 25m
.control
option numdgt = 3
set wr_singlescale
set wr_vecnames

foreach l_val 0.15 0.16 0.17 0.18 0.19
+ 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3
  alterparam lx = $l_val
  foreach vb_val 0 0.2 0.4
    alterparam vbx = $vb_val
    reset
    run
    wrdata techsweep_nfet_01v8_lvt.txt all
    destroy $curplot
    set appendwrite
  end
end
set appendwrite=0

alterparam lx = 0.15 
alterparam vbx = 0
reset
op
showmod
show
write techsweep_nfet_01v8_lvt.raw
.endc
"}
C {sky130_fd_pr/corner.sym} 1030 -620 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 610 -310 0 0 {name=M1
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
C {devices/ngspice_get_value.sym} 930 -250 0 0 {name=r1 node=v(@m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="Vt="}
C {devices/launcher.sym} 940 -340 0 0 {name=h1
descr="load & annotate" 
tclcommand="xschem raw_read $netlist_dir/techsweep_nfet_01v8_lvt.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/launcher.sym} 940 -390 0 0 {name=h3
descr="save, netlist & simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/ngspice_get_value.sym} 930 -210 0 0 {name=r2 node=@m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg]
descr="cgg="}
C {devices/ngspice_get_expr.sym} 1040 -170 0 0 {name=r4 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]\}] / [ngspice::get_node \{@m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]\}]]]"
descr="gm/gds="}
C {devices/ngspice_get_value.sym} 930 -170 0 0 {name=r3 node=@m.xm1.msky130_fd_pr__nfet_01v8_lvt[capbd]
descr="capdb="}
C {devices/ngspice_get_value.sym} 930 -130 0 0 {name=r5 node=@m.xm1.msky130_fd_pr__nfet_01v8_lvt[capbs]
descr="capbs="}
C {devices/ngspice_get_expr.sym} 1040 -210 0 0 {name=r6 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]\}] / [ngspice::get_node \{@m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg]\}] / 6.283]]"
descr="fT="}
C {devices/ngspice_get_expr.sym} 1040 -250 0 0 {name=r7 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]\}] / [ngspice::get_node \{i(@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id])\}]]]"
descr="gm/ID="}
C {devices/code_shown.sym} 460 -730 0 0 {name=COMMANDS2 only_toplevel=false
value="
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[capbd]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[capbs]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cdd]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgb]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgd]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgs]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[css]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds] 
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm] 
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gmbs] 
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[l]
.save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
.save b d g
"}
C {devices/gnd.sym} 730 -160 0 0 {name=l4 lab=GND}
