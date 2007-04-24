v 20070216 1
C 39900 40100 0 0 0 title-B.sym
C 42200 48500 1 90 0 resistor-1.sym
{
T 41800 48800 5 10 0 0 90 0 1
device=RESISTOR
T 41900 48700 5 10 1 1 90 0 1
refdes=R101a
}
N 42100 49400 42800 49400 4
N 42800 49400 42800 49500 4
N 44900 49500 45900 49500 4
N 48000 49500 48700 49500 4
N 48700 49400 48700 49500 4
N 48700 48500 48000 48500 4
N 48000 48500 48000 48400 4
N 45900 48400 44900 48400 4
N 42800 48400 42100 48400 4
N 42100 48400 42100 48500 4
C 48800 48500 1 90 0 resistor-1.sym
{
T 48400 48800 5 10 0 0 90 0 1
device=RESISTOR
T 48500 48700 5 10 1 1 90 0 1
refdes=R101b
}
C 42800 48100 1 0 0 EMBEDDEDMOC3011.sym
[
L 43100 49500 43400 49500 3 0 0 0 -1 -1
L 43400 49500 43400 49000 3 0 0 0 -1 -1
L 43600 48800 43200 48800 3 0 0 0 -1 -1
L 43400 48800 43600 49000 3 0 0 0 -1 -1
L 43600 49000 43200 49000 3 0 0 0 -1 -1
L 43200 49000 43400 48800 3 0 0 0 -1 -1
L 43400 48800 43400 48400 3 0 0 0 -1 -1
L 43400 48400 43100 48400 3 0 0 0 -1 -1
L 43641 48890 43846 48965 3 0 0 0 -1 -1
L 43846 48965 43814 48909 3 0 0 0 -1 -1
L 43814 48909 44051 48993 3 0 0 0 -1 -1
L 43641 48816 43846 48891 3 0 0 0 -1 -1
L 43846 48891 43814 48835 3 0 0 0 -1 -1
L 43814 48835 44051 48919 3 0 0 0 -1 -1
P 43100 49500 42800 49500 1 0 1
{
T 43000 49550 5 8 1 1 0 6 1
pinnumber=1
T 43000 49550 5 8 0 0 0 6 1
pinseq=1
}
P 43100 48400 42800 48400 1 0 1
{
T 43000 48450 5 8 1 1 0 6 1
pinnumber=2
T 43000 48450 5 8 0 0 0 6 1
pinseq=2
}
P 44600 48400 44900 48400 1 0 1
{
T 44700 48450 5 8 1 1 0 0 1
pinnumber=4
T 44700 48450 5 8 0 0 0 0 1
pinseq=4
}
L 44049 48991 43964 48985 3 0 0 0 -1 -1
L 44047 48991 43982 48950 3 0 0 0 -1 -1
L 44049 48918 43971 48914 3 0 0 0 -1 -1
L 44047 48918 43985 48875 3 0 0 0 -1 -1
T 43100 49850 9 10 1 0 0 0 1
MOC3011
P 44600 49500 44900 49500 1 0 1
{
T 44700 49550 5 8 1 1 0 0 1
pinnumber=6
T 44700 49550 5 8 0 0 0 0 1
pinseq=6
}
B 43100 48100 1500 1700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
L 44100 49000 44200 48800 3 0 0 0 -1 -1
L 44200 48800 44300 49000 3 0 0 0 -1 -1
L 44400 49000 44300 48800 3 0 0 0 -1 -1
L 44500 48800 44400 49000 3 0 0 0 -1 -1
L 44100 49000 44400 49000 3 0 0 0 -1 -1
L 44100 48800 44500 48800 3 0 0 0 -1 -1
L 44600 49500 44300 49500 3 0 0 0 -1 -1
L 44300 49500 44300 49000 3 0 0 0 -1 -1
L 44600 48400 44300 48400 3 0 0 0 -1 -1
L 44300 48400 44300 48800 3 0 0 0 -1 -1
T 43100 50500 8 10 0 0 0 0 1
description=6-DIP based optoisolator, triac driver
T 42800 48100 9 10 0 0 0 0 1
author=DJ Delorie
T 42800 48100 9 10 0 0 0 0 1
copyright=2006 DJ Delorie
T 42800 48100 9 10 0 0 0 0 1
dist-license=GPL
T 42800 48100 9 10 0 0 0 0 1
use-license=unlimited
]
{
T 43100 50100 5 10 0 0 0 0 1
device=4N25
T 44600 49900 5 10 1 1 0 6 1
refdes=U101a
}
C 45900 48100 1 0 0 EMBEDDEDMOC3011.sym
[
L 46200 49500 46500 49500 3 0 0 0 -1 -1
L 46500 49500 46500 49000 3 0 0 0 -1 -1
L 46700 48800 46300 48800 3 0 0 0 -1 -1
L 46500 48800 46700 49000 3 0 0 0 -1 -1
L 46700 49000 46300 49000 3 0 0 0 -1 -1
L 46300 49000 46500 48800 3 0 0 0 -1 -1
L 46500 48800 46500 48400 3 0 0 0 -1 -1
L 46500 48400 46200 48400 3 0 0 0 -1 -1
L 46741 48890 46946 48965 3 0 0 0 -1 -1
L 46946 48965 46914 48909 3 0 0 0 -1 -1
L 46914 48909 47151 48993 3 0 0 0 -1 -1
L 46741 48816 46946 48891 3 0 0 0 -1 -1
L 46946 48891 46914 48835 3 0 0 0 -1 -1
L 46914 48835 47151 48919 3 0 0 0 -1 -1
P 46200 49500 45900 49500 1 0 1
{
T 46100 49550 5 8 1 1 0 6 1
pinnumber=1
T 46100 49550 5 8 0 0 0 6 1
pinseq=1
}
P 46200 48400 45900 48400 1 0 1
{
T 46100 48450 5 8 1 1 0 6 1
pinnumber=2
T 46100 48450 5 8 0 0 0 6 1
pinseq=2
}
P 47700 48400 48000 48400 1 0 1
{
T 47800 48450 5 8 1 1 0 0 1
pinnumber=4
T 47800 48450 5 8 0 0 0 0 1
pinseq=4
}
L 47149 48991 47064 48985 3 0 0 0 -1 -1
L 47147 48991 47082 48950 3 0 0 0 -1 -1
L 47149 48918 47071 48914 3 0 0 0 -1 -1
L 47147 48918 47085 48875 3 0 0 0 -1 -1
P 47700 49500 48000 49500 1 0 1
{
T 47800 49550 5 8 1 1 0 0 1
pinnumber=6
T 47800 49550 5 8 0 0 0 0 1
pinseq=6
}
B 46200 48100 1500 1700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
L 47200 49000 47300 48800 3 0 0 0 -1 -1
L 47300 48800 47400 49000 3 0 0 0 -1 -1
L 47500 49000 47400 48800 3 0 0 0 -1 -1
L 47600 48800 47500 49000 3 0 0 0 -1 -1
L 47200 49000 47500 49000 3 0 0 0 -1 -1
L 47200 48800 47600 48800 3 0 0 0 -1 -1
L 47700 49500 47400 49500 3 0 0 0 -1 -1
L 47400 49500 47400 49000 3 0 0 0 -1 -1
L 47700 48400 47400 48400 3 0 0 0 -1 -1
L 47400 48400 47400 48800 3 0 0 0 -1 -1
T 46200 49850 9 10 1 0 0 0 1
MOC3011
T 46200 50500 8 10 0 0 0 0 1
description=6-DIP based optoisolator, triac driver
T 45900 48100 9 10 0 0 0 0 1
author=DJ Delorie
T 45900 48100 9 10 0 0 0 0 1
copyright=2006 DJ Delorie
T 45900 48100 9 10 0 0 0 0 1
dist-license=GPL
T 45900 48100 9 10 0 0 0 0 1
use-license=unlimited
]
{
T 46200 50100 5 10 0 0 0 0 1
device=4N25
T 47700 49900 5 10 1 1 0 6 1
refdes=U101b
}
C 42000 46000 1 0 0 part-1.sym
{
T 42100 46600 5 10 1 1 0 0 1
refdes=R101
T 42100 46300 5 10 1 1 0 0 1
footprint=DIL 4 200
T 42100 46100 5 10 1 1 0 0 1
mapping=rpackdil
}
C 44000 46000 1 0 0 part-1.sym
{
T 44100 46600 5 10 1 1 0 0 1
refdes=U101
T 44100 46300 5 10 1 1 0 0 1
footprint=DIL 12 200
T 44100 46100 5 10 1 1 0 0 1
mapping=multi6pins
}
