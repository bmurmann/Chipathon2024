v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -380 270 -300 {
lab=mirr}
N 310 -410 390 -410 {
lab=mirr}
N 330 -410 330 -360 {
lab=mirr}
N 270 -360 330 -360 {
lab=mirr}
N 460 -380 460 -300 {
lab=Vout}
N 270 -240 270 -210 {
lab=tail}
N 270 -210 350 -210 {
lab=tail}
N 350 -210 430 -210 {
lab=tail}
N 460 -240 460 -210 {
lab=tail}
N 140 -170 200 -170 {
lab=#net1}
N 200 -170 200 -120 {
lab=#net1}
N 140 -90 140 -70 {
lab=VSS}
N 370 -90 370 -70 {
lab=VSS}
N 270 -460 270 -440 {
lab=VDD}
N 460 -460 460 -440 {
lab=VDD}
N 140 -70 140 -50 {
lab=VSS}
N 370 -70 370 -50 {
lab=VSS}
N 150 -480 430 -480 {
lab=VDD}
N 460 -480 460 -460 {
lab=VDD}
N 270 -480 270 -460 {
lab=VDD}
N 270 -270 280 -270 {
lab=VSS}
N 450 -270 460 -270 {
lab=VSS}
N 620 -340 650 -340 {
lab=Vout}
N 390 -410 420 -410 {
lab=mirr}
N 430 -210 460 -210 {
lab=tail}
N 430 -480 460 -480 {
lab=VDD}
N 370 -180 370 -150 {
lab=tail}
N 140 -180 140 -150 {
lab=#net1}
N 370 -210 370 -180 {
lab=tail}
N 100 -50 120 -50 {
lab=VSS}
N 140 -200 140 -180 {
lab=#net1}
N 180 -120 230 -120 {
lab=#net1}
N 120 -50 170 -50 {
lab=VSS}
N 230 -120 330 -120 {
lab=#net1}
N 170 -50 370 -50 {
lab=VSS}
N 370 -120 370 -90 {
lab=VSS}
N 140 -120 140 -90 {
lab=VSS}
N 270 -440 270 -410 {
lab=VDD}
N 460 -440 460 -410 {
lab=VDD}
N 70 -480 150 -480 {
lab=VDD}
N 140 -480 140 -370 {
lab=VDD}
N 140 -310 140 -200 {
lab=#net1}
N 510 -340 620 -340 {
lab=Vout}
N 460 -340 510 -340 {
lab=Vout}
N 600 -340 600 -250 {
lab=Vout}
N 370 -50 600 -50 {
lab=VSS}
N 600 -190 600 -50 {
lab=VSS}
C {devices/ipin.sym} 230 -270 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} 500 -270 0 1 {name=p2 lab=Vn}
C {devices/opin.sym} 650 -340 0 0 {name=p3 lab=Vout
}
C {devices/iopin.sym} 70 -480 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 100 -50 2 0 {name=p5 lab=VSS}
C {devices/lab_wire.sym} 280 -270 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 440 -410 0 0 {name=M2b
L=\{l2\}
W=\{w2\}
nf=\{nf2\}
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -410 0 1 {name=M2a
L=\{l2\}
W=\{w2\}
nf=\{nf2\}
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 450 -270 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 370 -170 0 1 {name=p17 sig_type=std_logic lab=tail}
C {devices/lab_wire.sym} 380 -410 0 1 {name=p8 sig_type=std_logic lab=mirr}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 250 -270 0 0 {name=M1a
L=\{l1\}
W=\{w1\}
nf=\{nf1\}
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 480 -270 0 1 {name=M1b
L=\{l1\}
W=\{w1\}
nf=\{nf1\}
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 350 -120 0 0 {name=M0b
L=\{l0\}
W=\{w0\}
nf=\{nf0\}
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 160 -120 0 1 {name=M0a
L=\{l0\}
W=\{w0\}
nf=\{nf0\}
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
C {isource.sym} 140 -340 0 0 {name=I0 value=\{ib\}}
C {capa.sym} 600 -220 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
