# $Id$
Element[0x0 "32-Lead Lead Frame Chip Scale Package LFCSP_VQ 5x5 mm Body, Very Thin Quad CP-32-2" "IC" "LFCSP_VQ32" 26575 15000 -5000 -17000 0 100 ""]
(
	# pads left side
	Pad[ -8740 -6890 -10000 -6890 1457 1600 1500 "1"  "1" "square"]
	Pad[ -8740 -4921 -9606 -4921 1457 1600 1500 "2"  "2" "square"]
	Pad[ -8740 -2953 -9606 -2953 1457 1600 1500 "3"  "3" "square"]
	Pad[ -8740 -984 -9606 -984 1457 1600 1500 "4"  "4" "square"]
	Pad[ -8740 984 -9606 984 1457 1600 1500 "5"  "5" "square"]
	Pad[ -8740 2953 -9606 2953 1457 1600 1500 "6"  "6" "square"]
	Pad[ -8740 4921 -9606 4921 1457 1600 1500 "7"  "7" "square"]
	Pad[ -8740 6890 -9606 6890 1457 1600 1500 "8"  "8" "square"]

	# pads bottom side
	Pad[-6890 8740 -6890 9606 1457 1600 1500 "9"  "9" "square"]
	Pad[-4921 8740 -4921 9606 1457 1600 1500 "10"  "10" "square"]
	Pad[-2953 8740 -2953 9606 1457 1600 1500 "11"  "11" "square"]
	Pad[-984 8740 -984 9606 1457 1600 1500 "12"  "12" "square"]
	Pad[984 8740 984 9606 1457 1600 1500 "13"  "13" "square"]
	Pad[2953 8740 2953 9606  1457 1600 1500 "14"  "14" "square"]
	Pad[4921 8740 4921 9606  1457 1600 1500 "15"  "15" "square"]
	Pad[6890 8740 6890 9606  1457 1600 1500 "16"  "16" "square"]

	# pads right side
	Pad[8740 6890 9606 6890 1457 1600 1500 "17"  "17" "square"]
	Pad[8740 4921 9606 4921 1457 1600 1500 "18"  "18" "square"]
	Pad[8740 2953 9606 2953 1457 1600 1500 "19"  "19" "square"]
	Pad[8740 984 9606 984 1457 1600 1500 "20"  "20" "square"]
	Pad[8740 -984 9606 -984 1457 1600 1500 "21"  "21" "square"]
	Pad[8740 -2953 9606 -2953 1457 1600 1500 "22"  "22" "square"]
	Pad[8740 -4921 9606 -4921 1457 1600 1500 "23"  "23" "square"]
	Pad[8740 -6890 9606 -6890 1457 1600 1500 "24"  "24" "square"]

	# pads top side
	Pad[6890 -8740 6890 -9606 1457 1600 1500 "25"  "25" "square"]
	Pad[4921 -8740 4921 -9606 1457 1600 1500 "26"  "26" "square"]
	Pad[2953 -8740 2953 -9606 1457 1600 1500 "27"  "27" "square"]
	Pad[984 -8740 984 -9606 1457 1600 1500 "28"  "28" "square"]
	Pad[-984 -8740 -984 -9606 1457 1600 1500 "29"  "29" "square"]
	Pad[-2953 -8740 -2953 -9606  1457 1600 1500 "30"  "30" "square"]
	Pad[-4921 -8740 -4921 -9606  1457 1600 1500 "31"  "31" "square"]
	Pad[-6890 -8740 -6890 -9606  1457 1600 1500 "32"  "32" "square"]

	# central pad
	Pad[ 0 0 0 0 13780 15748 14780 "33"  "33" "square"]

	# the element box
	ElementLine [9843 -7480 9843 7480 1000]
	ElementLine [7480 9843 -7480 9843 1000]
	ElementLine [-9843 7480 -9843 -7480 1000]
	ElementLine [-7480 -9843 7480 -9843 1000]

	ElementLine [9843 -7480 7480 -9843 1000]
	ElementLine [7480 9843 9843 7480 1000]
	ElementLine [-9843 7480 -7480 9843 1000]
	ElementLine [-7480 -9843 -9843 -7480 1000]

	# marker for pad 1
	ElementArc[-7618 -7618 1200 1200 0 0 1000]
	ElementArc[-7618 -7618 1200 1200 0 180 1000]

	#
	Attribute("author" "Alexander Kurz")
	Attribute("copyright" "2009 Alexander Kurz")
	Attribute("use-license" "Unlimited")
	Attribute("dist-license" "CC-BY-SA-3.0")
	Attribute("height" "1mm")
	Attribute("ref" "Analog Devices CP-32-2 Rev A 06/20/07")
)
