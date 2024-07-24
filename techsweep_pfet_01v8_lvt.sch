v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 610 -270 610 -250 {
lab=GND}
N 610 -190 610 -160 {
lab=d}
N 490 -220 570 -220 {
lab=g}
N 490 -260 490 -220 {
lab=g}
N 490 -340 490 -320 {
lab=GND}
N 490 -340 610 -340 {
lab=GND}
N 610 -340 610 -270 {
lab=GND}
N 610 -340 700 -340 {
lab=GND}
N 700 -340 700 -320 {
lab=GND}
N 700 -260 700 -220 {
lab=b}
N 610 -220 700 -220 {
lab=b}
N 700 -340 790 -340 {
lab=GND}
N 790 -340 790 -320 {
lab=GND}
N 790 -260 790 -160 {
lab=d}
N 610 -160 790 -160 {
lab=d}
C {devices/vsource.sym} 490 -290 0 0 {name=vg value="0.9" savecurrent=false}
C {devices/gnd.sym} 490 -340 2 0 {name=l3 lab=GND}
C {devices/vsource.sym} 790 -290 0 0 {name=vd value=0.9 savecurrent=false}
C {devices/vsource.sym} 700 -290 2 1 {name=vb value=\{vbx\} savecurrent=false}
C {devices/code_shown.sym} 20 -700 0 0 {name=COMMANDS1 only_toplevel=false
value="
.param wx=5 lx=0.35 vbx=0
.dc vg 0 1.8 25m vd 0 1.8 25m
.control
option numdgt = 3
set wr_singlescale
set wr_vecnames

foreach l_val 0.35 0.36 0.37 0.38 0.39
+ 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3
  alterparam lx = $l_val
  foreach vb_val 0 0.2 0.4
    alterparam vbx = $vb_val
    reset
    run
    wrdata techsweep_pfet_01v8_lvt.txt all
    destroy $curplot
    set appendwrite
  end
end
set appendwrite=0

alterparam lx = 0.35 
alterparam vbx = 0
reset
op
showmod
show
write techsweep_pfet_01v8_lvt.raw
.endc
"}
C {sky130_fd_pr/corner.sym} 1030 -620 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/title.sym} 160 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/ngspice_get_value.sym} 930 -250 0 0 {name=r1 node=v(@m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="Vt="}
C {devices/launcher.sym} 940 -340 0 0 {name=h1
descr="load & annotate" 
tclcommand="xschem raw_read $netlist_dir/techsweep_pfet_01v8_lvt.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/launcher.sym} 940 -390 0 0 {name=h3
descr="save, netlist & simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/ngspice_get_value.sym} 930 -210 0 0 {name=r2 node=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]
descr="cgg="}
C {devices/ngspice_get_expr.sym} 1040 -170 0 0 {name=r4 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]\}] / [ngspice::get_node \{@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]\}]]]"
descr="gm/gds="}
C {devices/ngspice_get_value.sym} 930 -170 0 0 {name=r3 node=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[capbd]
descr="capdb="}
C {devices/ngspice_get_value.sym} 930 -130 0 0 {name=r5 node=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[capbs]
descr="capbs="}
C {devices/ngspice_get_expr.sym} 1040 -210 0 0 {name=r6 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]\}] / [ngspice::get_node \{@m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]\}] / 6.283]]"
descr="fT="}
C {devices/ngspice_get_expr.sym} 1040 -250 0 0 {name=r7 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]\}] / [ngspice::get_node \{i(@m.xm1.msky130_fd_pr__pfet_01v8_lvt[id])\}]]]"
descr="gm/ID="}
C {devices/code_shown.sym} 460 -700 0 0 {name=COMMANDS2 only_toplevel=false
value="
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[capbd]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[capbs]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cdd]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgb]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgd]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgs]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[css]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds] 
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm] 
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gmbs] 
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[l]
.save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
.save b d g
"}
C {devices/lab_wire.sym} 700 -220 0 0 {name=p2 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 700 -160 0 0 {name=p3 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 520 -220 0 0 {name=p1 sig_type=std_logic lab=g}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 590 -220 0 0 {name=M1
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
model=pfet_01v8_lvt
spiceprefix=X
}
