v 20110115 2
C 33600 45900 1 0 0 vcc-1.sym
C 33700 44400 1 0 0 gnd-1.sym
C 33500 44700 1 0 0 vdc-1.sym
{
T 34200 45350 5 10 1 1 0 0 1
refdes=V0
T 34200 45550 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 34200 45750 5 10 0 0 0 0 1
footprint=none
T 34200 45150 5 10 1 1 0 0 1
value=DC 1.8V
}
C 35600 45500 1 0 0 vcc-1.sym
N 35800 45500 36100 45500 4
N 35200 46300 36100 46300 4
C 37500 44700 1 0 0 gnd-1.sym
C 38000 44700 1 0 0 gnd-1.sym
C 37400 46800 1 0 0 vcc-1.sym
C 37900 46800 1 0 0 vcc-1.sym
N 35700 45900 36100 45900 4
{
T 35500 46000 5 10 1 1 0 0 1
netname=in_near
}
N 38800 45900 39900 45900 4
{
T 38800 45900 5 10 1 1 0 0 1
netname=near
}
C 36100 45000 1 0 0 ibis_io.sym
{
T 36000 44350 5 10 1 1 0 0 1
value=MT47H128M16U69A_DQ_FULL_800_DQ14 spec=0
T 36300 47000 5 10 0 0 0 0 1
symversion=1.0
T 36800 46650 5 10 1 1 0 0 1
refdes=X0
}
C 34100 47800 1 0 0 spice-directive-1.sym
{
T 34200 48100 5 10 0 1 0 0 1
device=directive
T 34200 48200 5 10 1 1 0 0 1
refdes=A0
T 34100 47900 5 10 1 1 0 0 1
value=.lib u69a.lib DQ_FULL_800
}
C 34900 44800 1 0 0 vpulse-1.sym
{
T 34600 45550 5 10 1 1 0 0 1
refdes=V1
T 35600 45650 5 10 0 0 0 0 1
device=vpulse
T 35600 45850 5 10 0 0 0 0 1
footprint=none
T 33800 46350 5 10 1 1 0 0 1
value=pulse 0 1 1n 0 0 1.25n 2.5n
}
C 35100 44500 1 0 0 gnd-1.sym
C 44200 44700 1 0 1 gnd-1.sym
C 43700 44700 1 0 1 gnd-1.sym
C 44300 46800 1 0 1 vcc-1.sym
C 43800 46800 1 0 1 vcc-1.sym
N 46000 45900 45600 45900 4
{
T 46100 46000 5 10 1 1 0 6 1
netname=in_far
}
N 42900 45900 42100 45900 4
{
T 42900 45900 5 10 1 1 0 6 1
netname=far
}
C 45600 45000 1 0 1 ibis_io.sym
{
T 47000 44350 5 10 1 1 0 6 1
value=MT47H128M16U69A_DQ_FULL_ODT50_800_DQ14 spec=0
T 45400 47000 5 10 0 0 0 6 1
symversion=1.0
T 44900 46650 5 10 1 1 0 6 1
refdes=X1
}
N 35200 46000 35200 46300 4
C 34100 47200 1 0 0 spice-directive-1.sym
{
T 34200 47500 5 10 0 1 0 0 1
device=directive
T 34200 47600 5 10 1 1 0 0 1
refdes=A1
T 34100 47300 5 10 1 1 0 0 1
value=.lib u69a.lib DQ_FULL_ODT50_800
}
C 45700 46000 1 0 1 gnd-1.sym
C 45700 45200 1 0 1 gnd-1.sym
C 39900 45500 1 0 0 tline.sym
{
T 40800 45900 5 10 0 1 0 0 1
device=T-Line
T 40950 45450 5 10 1 1 0 0 1
refdes=T0
T 40300 46200 5 10 1 1 0 0 1
value=TD=500p Z0=50
}
C 40200 45200 1 0 0 gnd-1.sym
C 41600 45200 1 0 0 gnd-1.sym
