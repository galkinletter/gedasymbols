# author: Sam Fladung
# dist-license: GPL v3+
# use-license: unlimited
Element(0x00 "Dual in-line package, narrow (300 mil)" "" "DIP8" 220 100 3 100 0x00)
(
	Pin(50 50 60 28 "1" 0x101)
	Pin(50 150 60 28 "2" 0x01)
	Pin(50 250 60 28 "3" 0x01)
	Pin(50 350 60 28 "4" 0x01)
	Pin(350 350 60 28 "5" 0x01)
	Pin(350 250 60 28 "6" 0x01)
	Pin(350 150 60 28 "7" 0x01)
	Pin(350 50 60 28 "8" 0x01)
	ElementLine(0 -50 0 450 10)
	ElementLine(0 450 400 450 10)
	ElementLine(400 450 400 -50 10)
	ElementLine(0 -50 150 -50 10)
	ElementLine(250 -50 400 -50 10)
	ElementArc(200 -50 50 50 0 180 10)
	Mark(50 50)
)
