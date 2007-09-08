# author: andrew mccubbin
# email: andrewm@thehacktory.com
# dist-license: GPL 2
# use-license: unlimited

# Element[element_flags, description, pcb-name, value, mark_x,
# mark_y, text_x, text_y, text_direction, text_scale, text_flags
Element[0x00000000 "Square-Quad-Flat-Nolead-QFN-28pin-0.45mm-pitch-exposed-pad-package-4x4x1mm" "" "" 1000 1000 -10000 -18000 0 100 0x00000000]
(

# Silk screen around package
        ElementLine[ 10840  10840  10840 -10840 1000]
        ElementLine[ 10840 -10840 -10840 -10840 1000]
        ElementLine[-10840 -10840 -10840  10840 1000]
        ElementLine[-10840  10840  10840  10840 1000]
# Pin 1 indicator
        ElementLine[-10840 -10840 -12340 -12340 1000]

# Pad[X1, Y1, X2, Y3, width, clearance,
#     soldermask, "pin name", "pin number", flags]
# left row
	Pad[-9651  -4724  -6490  -4724   787  1500 1087  "1"  "1"  0x00000100]
	Pad[-9651  -3150  -6490  -3150   787  1500 1087  "2"  "2"  0x00000100]
	Pad[-9651  -1575  -6490  -1575   787  1500 1087  "3"  "3"  0x00000100]
	Pad[-9651      0  -6490      0   787  1500 1087  "4"  "4"  0x00000100]
	Pad[-9651   1575  -6490   1575   787  1500 1087  "5"  "5"  0x00000100]
	Pad[-9651   3150  -6490   3150   787  1500 1087  "6"  "6"  0x00000100]
	Pad[-9651   4724  -6490   4724   787  1500 1087  "7"  "7"  0x00000100]
# bottom row
	Pad[-4724   9651  -4724   6490   787  1500 1087  "8"  "8"  0x00000900]
	Pad[-3150   9651  -3150   6490   787  1500 1087  "9"  "9"  0x00000900]
	Pad[-1575   9651  -1575   6490   787  1500 1087 "10" "10"  0x00000900]
	Pad[    0   9651      0   6490   787  1500 1087 "11" "11"  0x00000900]
	Pad[ 1575   9651   1575   6490   787  1500 1087 "12" "12"  0x00000900]
	Pad[ 3150   9651   3150   6490   787  1500 1087 "13" "13"  0x00000900]
	Pad[ 4724   9651   4724   6490   787  1500 1087 "14" "14"  0x00000900]
# right row
	Pad[ 9651   4724   6490   4724   787  1500 1087 "15" "15"  0x00000100]
	Pad[ 9651   3150   6490   3150   787  1500 1087 "16" "16"  0x00000100]
	Pad[ 9651   1575   6490   1575   787  1500 1087 "17" "17"  0x00000100]
	Pad[ 9651      0   6490      0   787  1500 1087 "18" "18"  0x00000100]
	Pad[ 9651  -1575   6490  -1575   787  1500 1087 "19" "19"  0x00000100]
	Pad[ 9651  -3150   6490  -3150   787  1500 1087 "20" "20"  0x00000100]
	Pad[ 9651  -4724   6490  -4724   787  1500 1087 "21" "21"  0x00000100]
# top row
	Pad[ 4724  -9651   4724  -6490   787  1500 1087 "22" "22"  0x00000900]
	Pad[ 3150  -9651   3150  -6490   787  1500 1087 "23" "23"  0x00000900]
	Pad[ 1575  -9651   1575  -6490   787  1500 1087 "24" "24"  0x00000900]
	Pad[    0  -9651      0  -6490   787  1500 1087 "25" "25"  0x00000900]
	Pad[-1575  -9651  -1575  -6490   787  1500 1087 "26" "26"  0x00000900]
	Pad[-3150  -9651  -3150  -6490   787  1500 1087 "27" "27"  0x00000900]
	Pad[-4724  -9651  -4724  -6490   787  1500 1087 "28" "28"  0x00000900]

# Exposed paddle (if this is an exposed paddle part)
# Pad(X1, Y1, X2, Y3, width, clearance,
#     soldermask, "pin name", "pin number", flags)
	Pad[    0      0      0      0  9648     0 10048 "29" "29" 0x00000100]
)
