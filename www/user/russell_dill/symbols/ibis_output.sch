v 20110115 2
C 40000 40000 1 90 0 vexp-1.sym
{
T 39700 40550 5 10 1 1 0 0 1
refdes=A_r_time
T 39150 40700 5 10 0 0 90 0 1
device=vexp
T 38950 40700 5 10 0 0 90 0 1
footprint=none
T 39700 40050 5 10 1 1 0 0 1
value=time
}
N 40000 40300 41700 40300 4
{
T 41000 40300 5 10 1 1 0 0 1
netname=r_time
}
C 36800 44600 1 0 0 spice-directive-1.sym
{
T 36900 44900 5 10 0 1 0 0 1
device=directive
T 36900 45000 5 10 1 1 0 0 1
refdes=Atime
T 36800 44700 5 10 1 1 0 0 1
value=.MODEL time slew(rise_slope=1 fall_slope=10)
}
C 37900 38800 1 0 0 gnd-1.sym
C 37700 36300 1 0 0 vdc-1.sym
{
T 37200 37250 5 10 1 1 0 0 1
refdes=B_f_on
T 38400 37150 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 38400 37350 5 10 0 0 0 0 1
footprint=none
T 37100 35800 5 10 1 1 0 0 1
value=V=V(out) > 0 ? 0 : {falling_waveform_max}
}
C 40100 37200 1 90 0 vexp-1.sym
{
T 39800 37750 5 10 1 1 0 0 1
refdes=A_f_time
T 39250 37900 5 10 0 0 90 0 1
device=vexp
T 39050 37900 5 10 0 0 90 0 1
footprint=none
T 39800 37150 5 10 1 1 0 0 1
value=time
}
N 41700 37500 40100 37500 4
{
T 40400 37500 5 10 1 1 0 0 1
netname=f_time
}
N 47600 37500 54100 37500 4
{
T 48500 37600 5 10 1 1 0 0 1
netname=fixture0
}
C 37900 36000 1 0 0 gnd-1.sym
C 37700 39100 1 0 0 vdc-1.sym
{
T 37200 40050 5 10 1 1 0 0 1
refdes=B_r_on
T 38400 39950 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 38400 40150 5 10 0 0 0 0 1
footprint=none
T 37200 38550 5 10 1 1 0 0 1
value=V=V(out) > 0 ? {rising_waveform_max} : 0
}
N 58200 43200 59400 43200 4
{
T 59000 43300 5 10 1 1 0 0 1
netname=pad
}
C 58400 43400 1 90 0 current-1.sym
{
T 57400 44000 5 10 0 0 90 0 1
device=CURRENT_SOURCE
T 58300 44100 5 10 1 1 0 0 1
refdes=B_pu
T 58300 43500 5 10 1 1 0 0 1
value=I=V(Ipu)*V(Kpu)
}
C 58000 43000 1 270 0 current-1.sym
{
T 59000 42400 5 10 0 0 270 0 1
device=CURRENT_SOURCE
T 58300 42800 5 10 1 1 0 0 1
refdes=B_pd
T 58300 42200 5 10 1 1 0 0 1
value=I=V(Ipd)*V(Kpd)
}
C 58400 41900 1 180 0 vss-1.sym
C 58000 44500 1 0 0 vdd-1.sym
N 58200 43400 58200 43000 4
N 58200 44300 58200 44500 4
N 57300 44400 58200 44400 4
N 58200 41900 58200 42100 4
N 57300 42000 58200 42000 4
C 41700 39600 1 0 0 vcvs-1.sym
{
T 41900 40650 5 10 0 0 0 0 1
device=SPICE-vcvs
T 42100 39450 5 10 1 1 0 0 1
refdes=X_r0
T 41900 40850 5 10 0 0 0 0 1
symversion=0.1
T 43100 40650 5 10 1 1 0 5 1
value=rising_waveform0 spec={spec}
}
C 41700 36800 1 0 0 vcvs-1.sym
{
T 41900 37850 5 10 0 0 0 0 1
device=SPICE-vcvs
T 42200 36650 5 10 1 1 0 0 1
refdes=X_f0
T 41900 38050 5 10 0 0 0 0 1
symversion=0.1
T 43200 37850 5 10 1 1 0 5 1
value=falling_waveform0 spec={spec}
}
C 41600 39400 1 0 0 gnd-1.sym
C 41600 36600 1 0 0 gnd-1.sym
C 57300 43700 1 0 1 vcvs-1.sym
{
T 57100 44750 5 10 0 0 0 6 1
device=SPICE-vcvs
T 56700 44550 5 10 1 1 0 6 1
refdes=X_pu
T 57100 44950 5 10 0 0 0 6 1
symversion=0.1
T 56600 43450 5 10 1 1 0 5 1
value=pullup0 spec={spec}
}
N 57300 43800 57500 43800 4
N 57500 42600 57500 43800 4
N 57500 43200 58200 43200 4
C 57300 41900 1 0 1 vcvs-1.sym
{
T 57100 42950 5 10 0 0 0 6 1
device=SPICE-vcvs
T 56700 42750 5 10 1 1 0 6 1
refdes=X_pd
T 57100 43150 5 10 0 0 0 6 1
symversion=0.1
T 56700 41650 5 10 1 1 0 5 1
value=pulldown0 spec={spec}
}
N 57300 42600 57500 42600 4
C 41700 38300 1 0 0 vcvs-1.sym
{
T 41900 39350 5 10 0 0 0 0 1
device=SPICE-vcvs
T 42200 38150 5 10 1 1 0 0 1
refdes=X_r1
T 41900 39550 5 10 0 0 0 0 1
symversion=0.1
T 43200 39350 5 10 1 1 0 5 1
value=rising_waveform1 spec={spec}
}
C 41600 38100 1 0 0 gnd-1.sym
N 41700 39000 41300 39000 4
N 41300 39000 41300 40300 4
C 41700 35500 1 0 0 vcvs-1.sym
{
T 41900 36550 5 10 0 0 0 0 1
device=SPICE-vcvs
T 42200 35350 5 10 1 1 0 0 1
refdes=X_f1
T 41900 36750 5 10 0 0 0 0 1
symversion=0.1
T 43200 36550 5 10 1 1 0 5 1
value=falling_waveform1 spec={spec}
}
C 41600 35300 1 0 0 gnd-1.sym
C 43100 35300 1 0 0 gnd-1.sym
N 41700 36200 41300 36200 4
N 41300 36200 41300 37500 4
C 50000 35800 1 0 1 gnd-1.sym
C 48400 38200 1 0 0 vcvs-1.sym
{
T 48600 39250 5 10 0 0 0 0 1
device=SPICE-vcvs
T 48700 39050 5 10 1 1 0 0 1
refdes=X_pullup0
T 48600 39450 5 10 0 0 0 0 1
symversion=0.1
T 49200 37850 5 10 1 1 180 5 1
value=pullup0 spec={spec}
}
C 48400 36000 1 0 0 vcvs-1.sym
{
T 48600 37050 5 10 0 0 0 0 1
device=SPICE-vcvs
T 48400 36850 5 10 1 1 0 0 1
refdes=X_pulldown0
T 48600 37250 5 10 0 0 0 0 1
symversion=0.1
T 49400 35450 5 10 1 1 180 5 1
value=pulldown0 spec={spec}
}
C 55200 37400 1 0 0 resistor-1.sym
{
T 55500 37800 5 10 0 0 0 0 1
device=RESISTOR
T 55200 37700 5 10 1 1 0 0 1
refdes=R_fixture0
T 55100 37200 5 10 1 1 0 0 1
value={R_fixture0}
}
C 56100 37300 1 270 0 voltage-3.sym
{
T 56800 37100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 56400 37100 5 10 1 1 0 0 1
refdes=V_fixture0
T 56400 36500 5 10 1 1 0 0 1
value=DC {V_fixture0}
}
N 56100 37500 56300 37500 4
N 56300 37500 56300 37300 4
C 56200 36100 1 0 0 gnd-1.sym
N 48300 36700 48300 37500 4
N 47900 38300 48400 38300 4
C 49800 38000 1 0 0 gnd-1.sym
N 48400 36700 48300 36700 4
C 44000 44800 1 270 0 voltage-3.sym
{
T 44700 44600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 44500 44300 5 10 1 1 0 0 1
refdes=V_gc
T 44500 44100 5 10 1 1 0 0 1
value=DC {gnd_clamp_reference}
}
C 41000 44800 1 270 0 voltage-3.sym
{
T 41700 44600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 41500 44300 5 10 1 1 0 0 1
refdes=V_pc
T 41500 44100 5 10 1 1 0 0 1
value=DC {power_clamp_reference}
}
C 41100 43600 1 0 0 gnd-1.sym
C 44100 43600 1 0 0 gnd-1.sym
C 41000 44800 1 0 0 generic-power.sym
{
T 41200 45050 5 10 1 1 0 3 1
net=Vpc:1
}
C 44000 44800 1 0 0 generic-power.sym
{
T 44200 45050 5 10 1 1 0 3 1
net=Vgc:1
}
C 43100 38100 1 0 0 gnd-1.sym
C 43100 36600 1 0 0 gnd-1.sym
C 43100 39400 1 0 0 gnd-1.sym
C 47500 36100 1 0 0 gnd-1.sym
N 43200 40300 43800 40300 4
{
T 43400 40300 5 10 1 1 0 0 1
netname=vr0
}
N 43200 37500 43800 37500 4
{
T 43400 37500 5 10 1 1 0 0 1
netname=vf0
}
N 43200 36200 43800 36200 4
{
T 43400 36200 5 10 1 1 0 0 1
netname=vf1
}
N 43200 39000 43800 39000 4
{
T 43400 39000 5 10 1 1 0 0 1
netname=vr1
}
C 55700 43500 1 0 0 gnd-1.sym
N 55200 44400 55800 44400 4
{
T 55400 44400 5 10 1 1 0 0 1
netname=Ipu
}
N 55200 42600 55800 42600 4
{
T 55400 42600 5 10 1 1 0 0 1
netname=Ipd
}
N 49900 38900 50100 38900 4
{
T 49900 38900 5 10 1 1 0 0 1
netname=I3
}
N 50100 36700 49900 36700 4
{
T 49900 36700 5 10 1 1 0 0 1
netname=I2
}
B 36800 34700 36000 6200 3 0 0 2 200 200 0 -1 -1 -1 -1 -1
B 54700 41200 5500 4000 3 0 0 2 200 200 0 -1 -1 -1 -1 -1
L 44900 40700 44900 34900 3 0 0 2 150 150
L 58900 40700 58900 34900 3 0 0 2 150 150
T 45700 40000 9 10 1 0 0 0 1
Fixture 0
T 59600 39900 9 10 1 0 0 0 1
Fixture 1
T 54700 45300 9 10 1 0 0 0 1
IBIS Gate Model
T 36800 45400 8 10 1 0 0 0 1
dist-license=GPLv3
T 36806 45600 8 10 1 0 0 0 1
author=Russ Dill <Russ.Dill@asu.edu>
C 44000 42800 1 270 0 voltage-3.sym
{
T 44700 42600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 44500 42300 5 10 1 1 0 0 1
refdes=V_pu
T 44500 42100 5 10 1 1 0 0 1
value=DC {pullup_reference}
}
C 41000 42800 1 270 0 voltage-3.sym
{
T 41700 42600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 41500 42300 5 10 1 1 0 0 1
refdes=V_pd
T 41500 42100 5 10 1 1 0 0 1
value=DC {pulldown_reference}
}
C 41100 41600 1 0 0 gnd-1.sym
C 44100 41600 1 0 0 gnd-1.sym
C 41000 42800 1 0 0 generic-power.sym
{
T 41200 43050 5 10 1 1 0 3 1
net=Vpd:1
}
C 44000 42800 1 0 0 generic-power.sym
{
T 44200 43050 5 10 1 1 0 3 1
net=Vpu:1
}
N 48300 37500 48300 38300 4
C 48200 38900 1 0 0 generic-power.sym
{
T 48400 39150 5 10 1 1 0 3 1
net=Vpu:1
}
C 48600 36100 1 180 0 generic-power.sym
{
T 48400 35850 5 10 1 1 180 3 1
net=Vpd:1
}
N 38000 40300 38800 40300 4
{
T 38000 40300 5 10 1 1 0 0 1
netname=ru_on
}
N 38000 37500 38900 37500 4
{
T 38000 37500 5 10 1 1 0 0 1
netname=fu_on
}
N 61600 37500 68100 37500 4
{
T 62500 37600 5 10 1 1 0 0 1
netname=fixture1
}
C 64000 35800 1 0 1 gnd-1.sym
C 62400 38200 1 0 0 vcvs-1.sym
{
T 62600 39250 5 10 0 0 0 0 1
device=SPICE-vcvs
T 62700 39050 5 10 1 1 0 0 1
refdes=X_pullup1
T 62600 39450 5 10 0 0 0 0 1
symversion=0.1
T 63200 37850 5 10 1 1 180 5 1
value=pullup0 spec={spec}
}
C 62400 36000 1 0 0 vcvs-1.sym
{
T 62600 37050 5 10 0 0 0 0 1
device=SPICE-vcvs
T 62400 36850 5 10 1 1 0 0 1
refdes=X_pulldown1
T 62600 37250 5 10 0 0 0 0 1
symversion=0.1
T 63200 35450 5 10 1 1 180 5 1
value=pulldown0 spec={spec}
}
N 70100 37500 70300 37500 4
N 70300 37500 70300 37300 4
C 70200 36100 1 0 0 gnd-1.sym
N 62300 36700 62300 37500 4
N 61900 38300 62400 38300 4
C 63800 38000 1 0 0 gnd-1.sym
N 62400 36700 62300 36700 4
N 63900 38900 64100 38900 4
{
T 63900 38900 5 10 1 1 0 0 1
netname=I4
}
N 64100 36700 63900 36700 4
{
T 63900 36700 5 10 1 1 0 0 1
netname=I1
}
N 62300 37500 62300 38300 4
C 62200 38900 1 0 0 generic-power.sym
{
T 62400 39150 5 10 1 1 0 3 1
net=Vpu:1
}
C 62600 36100 1 180 0 generic-power.sym
{
T 62400 35850 5 10 1 1 180 3 1
net=Vpd:1
}
C 69200 37400 1 0 0 resistor-1.sym
{
T 69500 37800 5 10 0 0 0 0 1
device=RESISTOR
T 69200 37700 5 10 1 1 0 0 1
refdes=R_fixture1
T 69100 37200 5 10 1 1 0 0 1
value={R_fixture1}
}
C 70100 37300 1 270 0 voltage-3.sym
{
T 70800 37100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 70400 37100 5 10 1 1 0 0 1
refdes=V_fixture1
T 70400 36500 5 10 1 1 0 0 1
value=DC {V_fixture1}
}
C 42800 41500 1 0 0 gnd-1.sym
N 42700 41800 42900 41800 4
{
T 42700 41800 5 10 1 1 0 0 1
netname=0
}
C 53100 42300 1 270 0 voltage-3.sym
{
T 53800 42100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 52700 42100 5 10 1 1 0 0 1
refdes=B_Kpd
T 49500 42600 5 10 1 1 0 0 2
value=V=((I(Vfx0) - V(Icomp0)) * V(I4) + (I(Vfx1) - V(Icomp1)) * V(I3)) /
+   (V(I2) * V(I4) - V(I1) * V(I3))
}
C 53100 44400 1 270 0 voltage-3.sym
{
T 53800 44200 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 52700 44200 5 10 1 1 0 0 1
refdes=B_Kpu
T 49500 44700 5 10 1 1 0 0 2
value=V=((I(Vfx0) - V(Icomp0)) * V(I1) + (I(Vfx1) - V(Icomp1)) * V(I2)) /
+    (V(I2) * V(I4) - V(I1) * V(I3))
}
C 53200 43200 1 0 0 gnd-1.sym
C 53200 41100 1 0 0 gnd-1.sym
N 53300 42300 53700 42300 4
{
T 53300 42300 5 10 1 1 0 0 1
netname=Kpd
}
N 53300 44400 53700 44400 4
{
T 53300 44400 5 10 1 1 0 0 1
netname=Kpu
}
C 42400 42800 1 90 0 resistor-1.sym
{
T 42000 43100 5 10 0 0 90 0 1
device=RESISTOR
T 42400 43400 5 10 1 1 0 0 1
refdes=R_out_gnd_ref
T 42400 43000 5 10 1 1 0 0 1
value=1e18
}
C 42200 42500 1 0 0 gnd-1.sym
N 42300 43700 42600 43700 4
{
T 42300 43700 5 10 1 1 0 0 1
netname=out
}
C 55700 41700 1 0 0 gnd-1.sym
N 50500 36700 50500 37500 4
C 52100 35800 1 0 1 gnd-1.sym
C 50500 38200 1 0 0 vcvs-1.sym
{
T 50700 39250 5 10 0 0 0 0 1
device=SPICE-vcvs
T 51100 39050 5 10 1 1 0 0 1
refdes=X_pc0
T 50700 39450 5 10 0 0 0 0 1
symversion=0.1
T 51700 37850 5 10 1 1 180 5 1
value=power_clamp0 spec={spec}
}
C 50500 36000 1 0 0 vcvs-1.sym
{
T 50700 37050 5 10 0 0 0 0 1
device=SPICE-vcvs
T 51100 36850 5 10 1 1 0 0 1
refdes=X_gc0
T 50700 37250 5 10 0 0 0 0 1
symversion=0.1
T 51400 35450 5 10 1 1 180 5 1
value=gnd_clamp0 spec={spec}
}
C 52100 38000 1 0 1 gnd-1.sym
N 52600 38900 52000 38900 4
{
T 52000 38900 5 10 1 1 0 0 1
netname=Ipc0
}
N 52600 36700 52000 36700 4
{
T 52000 36700 5 10 1 1 0 0 1
netname=Igc0
}
C 50300 38900 1 0 0 generic-power.sym
{
T 50500 39150 5 10 1 1 0 3 1
net=Vpc:1
}
C 50700 36100 1 180 0 generic-power.sym
{
T 50500 35850 5 10 1 1 180 3 1
net=Vgc:1
}
N 50500 37500 50500 38300 4
N 64500 36700 64500 37500 4
C 66100 35800 1 0 1 gnd-1.sym
C 64500 38200 1 0 0 vcvs-1.sym
{
T 64700 39250 5 10 0 0 0 0 1
device=SPICE-vcvs
T 65100 39050 5 10 1 1 0 0 1
refdes=X_pc1
T 64700 39450 5 10 0 0 0 0 1
symversion=0.1
T 65700 37850 5 10 1 1 180 5 1
value=power_clamp0 spec={spec}
}
C 64500 36000 1 0 0 vcvs-1.sym
{
T 64700 37050 5 10 0 0 0 0 1
device=SPICE-vcvs
T 65100 36850 5 10 1 1 0 0 1
refdes=X_gc1
T 64700 37250 5 10 0 0 0 0 1
symversion=0.1
T 65300 35450 5 10 1 1 180 5 1
value=gnd_clamp0 spec={spec}
}
C 66100 38000 1 0 1 gnd-1.sym
N 66600 38900 66000 38900 4
{
T 66000 38900 5 10 1 1 0 0 1
netname=Ipc1
}
N 66600 36700 66000 36700 4
{
T 66000 36700 5 10 1 1 0 0 1
netname=Igc1
}
C 64300 38900 1 0 0 generic-power.sym
{
T 64500 39150 5 10 1 1 0 3 1
net=Vpc:1
}
C 64700 36100 1 180 0 generic-power.sym
{
T 64500 35850 5 10 1 1 180 3 1
net=Vgc:1
}
N 64500 37500 64500 38300 4
C 47400 37300 1 270 0 voltage-3.sym
{
T 48100 37100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 47300 37100 5 10 1 1 0 0 1
refdes=B0
T 45400 37600 5 10 1 1 0 0 1
value=V=V(r_on) > 0  ? V(vr0) : V(vf0)
}
C 55000 37700 1 180 0 current-1.sym
{
T 54400 36700 5 10 0 0 180 0 1
device=CURRENT_SOURCE
T 54000 37700 5 10 1 1 0 0 1
refdes=Vfx0
T 54000 37200 5 10 1 1 0 0 1
value=DC 0
}
N 47600 37300 47600 37500 4
C 69000 37700 1 180 0 current-1.sym
{
T 68400 36700 5 10 0 0 180 0 1
device=CURRENT_SOURCE
T 68000 37600 5 10 1 1 0 0 1
refdes=Vfx1
T 68000 37200 5 10 1 1 0 0 1
value=DC 0
}
N 61600 37300 61600 37500 4
C 61400 37300 1 270 0 voltage-3.sym
{
T 62100 37100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 61300 36500 5 10 1 1 0 0 1
refdes=B1
T 59400 37600 5 10 1 1 0 0 1
value=V=V(r_on) > 0  ? V(vr1) : V(vf1)
}
C 61500 36100 1 0 0 gnd-1.sym
C 53700 37700 1 90 0 current-1.sym
{
T 52700 38300 5 10 0 0 90 0 1
device=CURRENT_SOURCE
T 52900 37600 5 10 1 1 0 0 1
refdes=B_pc0
T 52700 38400 5 10 1 1 0 0 1
value=I=V(Ipc0)
}
C 53300 37300 1 270 0 current-1.sym
{
T 54300 36700 5 10 0 0 270 0 1
device=CURRENT_SOURCE
T 52900 37100 5 10 1 1 0 0 1
refdes=B_gc0
T 52700 36400 5 10 1 1 0 0 1
value=I=V(Igc0)
}
N 53500 37500 53500 37700 4
N 53500 37500 53500 37300 4
N 53500 38600 53500 38700 4
N 53500 36400 53500 36300 4
C 53300 38700 1 0 0 generic-power.sym
{
T 53500 38950 5 10 1 1 0 3 1
net=Vpc:1
}
C 53700 36300 1 180 0 generic-power.sym
{
T 53500 36050 5 10 1 1 180 3 1
net=Vgc:1
}
C 67700 37700 1 90 0 current-1.sym
{
T 66700 38300 5 10 0 0 90 0 1
device=CURRENT_SOURCE
T 66900 37600 5 10 1 1 0 0 1
refdes=B_pc1
T 66700 38400 5 10 1 1 0 0 1
value=I=V(Ipc1)
}
C 67300 37300 1 270 0 current-1.sym
{
T 68300 36700 5 10 0 0 270 0 1
device=CURRENT_SOURCE
T 66900 37100 5 10 1 1 0 0 1
refdes=B_gc1
T 66700 36400 5 10 1 1 0 0 1
value=I=V(Igc1)
}
N 67500 37500 67500 37700 4
N 67500 37500 67500 37300 4
N 67500 38600 67500 38700 4
N 67500 36400 67500 36300 4
C 67300 38700 1 0 0 generic-power.sym
{
T 67500 38950 5 10 1 1 0 3 1
net=Vpc:1
}
C 67700 36300 1 180 0 generic-power.sym
{
T 67500 36050 5 10 1 1 180 3 1
net=Vgc:1
}
C 36800 43900 1 0 0 spice-directive-1.sym
{
T 36900 44200 5 10 0 1 0 0 1
device=directive
T 36900 44300 5 10 1 1 0 0 1
refdes=Apc
T 36800 43600 5 10 1 1 0 0 3
value=.PARAM c_comp_tot={C_comp +
+     C_comp_pullup + C_comp_pulldown +
+     C_comp_power_clamp + C_comp_gnd_clamp}
}
C 46700 38000 1 270 1 vexp-1.sym
{
T 46700 38650 5 10 1 1 0 0 1
refdes=A_comp0
T 47550 38700 5 10 0 0 90 2 1
device=vexp
T 47750 38700 5 10 0 0 90 2 1
footprint=none
T 46400 38050 5 10 1 1 0 0 1
value=comp0
}
N 46700 38300 46000 38300 4
{
T 45800 38400 5 10 1 1 0 0 1
netname=Icomp0
}
C 36800 42800 1 0 0 spice-directive-1.sym
{
T 36900 43100 5 10 0 1 0 0 1
device=directive
T 36900 43200 5 10 1 1 0 0 1
refdes=Amc0
T 36800 42600 5 10 1 1 0 0 2
value=.MODEL comp0 d_dt(gain={C_comp_tot+C_fixture0}
+    out_lower_limit=-1e12 out_upper_limit=1e12)
}
C 36800 41900 1 0 0 spice-directive-1.sym
{
T 36900 42200 5 10 0 1 0 0 1
device=directive
T 36900 42300 5 10 1 1 0 0 1
refdes=Amc1
T 36800 41700 5 10 1 1 0 0 2
value=.MODEL comp1 d_dt(gain={C_comp_tot+C_fixture1}
+    out_lower_limit=-1e12 out_upper_limit=1e12)
}
N 55000 37500 55200 37500 4
N 69000 37500 69200 37500 4
C 60700 38000 1 270 1 vexp-1.sym
{
T 60700 38650 5 10 1 1 0 0 1
refdes=A_comp1
T 61550 38700 5 10 0 0 90 2 1
device=vexp
T 61750 38700 5 10 0 0 90 2 1
footprint=none
T 60400 38050 5 10 1 1 0 0 1
value=comp1
}
N 60700 38300 60000 38300 4
{
T 59800 38400 5 10 1 1 0 0 1
netname=Icomp1
}