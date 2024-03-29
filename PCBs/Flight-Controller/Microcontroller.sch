EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title "Microcontroller, Power, and USB Interface"
Date "2021-01-01"
Rev "A"
Comp "Mark Sherstan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J9
U 1 1 5FDD6952
P 9800 5300
F 0 "J9" H 9850 5750 50  0000 R CNN
F 1 "USB_B_Micro" H 10000 5650 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 9950 5250 50  0001 C CNN
F 3 "~" H 9950 5250 50  0001 C CNN
F 4 "Molex" H 9800 5300 50  0001 C CNN "Manufacturer"
F 5 "105017-0001" H 9800 5300 50  0001 C CNN "Manufacturer #"
F 6 "WM1399CT-ND" H 9800 5300 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/molex/1050170001/2350832" H 9800 5300 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    9800 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 5FDED7D4
P 8850 4900
F 0 "F1" V 9055 4900 50  0000 C CNN
F 1 "PTC 15V 500mA" V 8964 4900 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8900 4700 50  0001 L CNN
F 3 "~" H 8850 4900 50  0001 C CNN
F 4 "Eaton - Electronics Division" H 8850 4900 50  0001 C CNN "Manufacturer"
F 5 "PTS120615V050" H 8850 4900 50  0001 C CNN "Manufacturer #"
F 6 "283-3140-1-ND" H 8850 4900 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/eaton-electronics-division/PTS120615V050/2639137" H 8850 4900 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    8850 4900
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR083
U 1 1 5FDF14CF
P 9800 5900
F 0 "#PWR083" H 9800 5650 50  0001 C CNN
F 1 "GND" H 9805 5727 50  0000 C CNN
F 2 "" H 9800 5900 50  0001 C CNN
F 3 "" H 9800 5900 50  0001 C CNN
	1    9800 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 5700 9800 5750
Wire Wire Line
	9900 5700 9900 5750
Wire Wire Line
	9900 5750 9800 5750
Connection ~ 9800 5750
$Comp
L Device:C C?
U 1 1 5FF2F0D6
P 1650 3400
AR Path="/5FD99B6C/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF2F0D6" Ref="C9"  Part="1" 
F 0 "C9" H 1765 3446 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 1765 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1688 3250 50  0001 C CNN
F 3 "~" H 1650 3400 50  0001 C CNN
	1    1650 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 3250 1650 2950
$Comp
L power:GND #PWR?
U 1 1 5FF3E163
P 1650 3650
AR Path="/5FF3E163" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FF3E163" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 1650 3400 50  0001 C CNN
F 1 "GND" H 1655 3477 50  0000 C CNN
F 2 "" H 1650 3650 50  0001 C CNN
F 3 "" H 1650 3650 50  0001 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3650 1650 3550
Text Notes 2550 900  0    79   ~ 16
Microcontroller
$Comp
L Device:CP C19
U 1 1 601633A8
P 8900 1800
F 0 "C19" V 9150 1850 50  0000 R CNN
F 1 "22uF 16V 20%" V 9050 2000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8938 1650 50  0001 C CNN
F 3 "~" H 8900 1800 50  0001 C CNN
	1    8900 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR079
U 1 1 601A358C
P 8900 2050
F 0 "#PWR079" H 8900 1800 50  0001 C CNN
F 1 "GND" H 8905 1877 50  0000 C CNN
F 2 "" H 8900 2050 50  0001 C CNN
F 3 "" H 8900 2050 50  0001 C CNN
	1    8900 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8900 2050 8900 1950
$Comp
L Flight-Controller-PCB-rescue:ATmega32U4-AU-MCU_Microchip_ATmega-Flight-Controller-PCB-rescue U3
U 1 1 5FE513CE
P 2950 3850
AR Path="/5FE513CE" Ref="U3"  Part="1" 
AR Path="/5FDD4B9C/5FE513CE" Ref="U3"  Part="1" 
F 0 "U3" H 2950 1961 50  0000 C CNN
F 1 "ATmega32U4-AU" H 2950 1870 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 2950 3850 50  0001 C CIN
F 3 "" H 2950 3850 50  0001 C CNN
F 4 "Microchip Technology" H 2950 3850 50  0001 C CNN "Manufacturer"
F 5 "ATMEGA32U4RC-AU" H 2950 3850 50  0001 C CNN "Manufacturer #"
F 6 "ATMEGA32U4RC-AU-ND" H 2950 3850 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/microchip-technology/ATMEGA32U4RC-AU/2507982" H 2950 3850 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5FE99F0B
P 7500 5300
F 0 "R20" V 7293 5300 50  0000 C CNN
F 1 "22 ohm 1%" V 7384 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 5300 50  0001 C CNN
F 3 "~" H 7500 5300 50  0001 C CNN
	1    7500 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5FEA626C
P 7500 5400
F 0 "R21" V 7293 5400 50  0000 C CNN
F 1 "22 ohm 1%" V 7384 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 5400 50  0001 C CNN
F 3 "~" H 7500 5400 50  0001 C CNN
	1    7500 5400
	0    -1   -1   0   
$EndComp
Text GLabel 2150 3350 0    50   Input ~ 0
D+
Text GLabel 2150 3450 0    50   Input ~ 0
D-
Wire Wire Line
	2150 3350 2350 3350
Wire Wire Line
	2350 3450 2150 3450
Text GLabel 7050 5300 0    50   Input ~ 0
D+
Text GLabel 7050 5400 0    50   Input ~ 0
D-
Wire Wire Line
	7350 5400 7050 5400
Wire Wire Line
	7350 5300 7050 5300
Text Notes 7550 4500 0    79   ~ 16
USB Interface
$Comp
L power:GND #PWR053
U 1 1 5FEDBEC4
P 2400 5650
F 0 "#PWR053" H 2400 5400 50  0001 C CNN
F 1 "GND" H 2405 5477 50  0000 C CNN
F 2 "" H 2400 5650 50  0001 C CNN
F 3 "" H 2400 5650 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 5FEDF439
P 3500 5650
F 0 "#PWR056" H 3500 5400 50  0001 C CNN
F 1 "GND" H 3505 5477 50  0000 C CNN
F 2 "" H 3500 5650 50  0001 C CNN
F 3 "" H 3500 5650 50  0001 C CNN
	1    3500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5650 2850 5650
Wire Wire Line
	2950 5650 3500 5650
Wire Wire Line
	2350 2950 1650 2950
$Comp
L Device:C C?
U 1 1 5FF26C68
P 2050 4000
AR Path="/5FD99B6C/5FF26C68" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF26C68" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF26C68" Ref="C10"  Part="1" 
F 0 "C10" H 2165 4046 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 2165 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2088 3850 50  0001 C CNN
F 3 "~" H 2050 4000 50  0001 C CNN
	1    2050 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5FF26C6E
P 2050 4250
F 0 "#PWR050" H 2050 4000 50  0001 C CNN
F 1 "GND" H 2055 4077 50  0000 C CNN
F 2 "" H 2050 4250 50  0001 C CNN
F 3 "" H 2050 4250 50  0001 C CNN
	1    2050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4250 2050 4150
Wire Wire Line
	2350 3650 2050 3650
Wire Wire Line
	2050 3650 2050 3850
$Comp
L Device:Crystal Y1
U 1 1 5FF2CD65
P 1300 2650
F 0 "Y1" V 1346 2519 50  0000 R CNN
F 1 "16MHz, CL 7pF" V 1255 2519 50  0000 R CNN
F 2 "Custom:Crystal" H 1300 2650 50  0001 C CNN
F 3 "~" H 1300 2650 50  0001 C CNN
F 4 "Abracon LLC" H 1300 2650 50  0001 C CNN "Manufacturer"
F 5 "ABM8W-16.0000MHZ-7-D1X-T3" H 1300 2650 50  0001 C CNN "Manufacturer #"
F 6 "535-14027-1-ND" H 1300 2650 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/abracon-llc/ABM8W-16-0000MHZ-7-D1X-T3/7172798" H 1300 2650 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    1300 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF2DBB2
P 1100 2450
AR Path="/5FD99B6C/5FF2DBB2" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF2DBB2" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF2DBB2" Ref="C7"  Part="1" 
F 0 "C7" V 1352 2450 50  0000 C CNN
F 1 "22pF 12V X7R 2%" V 1250 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1138 2300 50  0001 C CNN
F 3 "~" H 1100 2450 50  0001 C CNN
	1    1100 2450
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF34CD2
P 1100 2850
AR Path="/5FD99B6C/5FF34CD2" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF34CD2" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF34CD2" Ref="C8"  Part="1" 
F 0 "C8" V 940 2850 50  0000 C CNN
F 1 "22pF 12V X7R 2%" V 849 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1138 2700 50  0001 C CNN
F 3 "~" H 1100 2850 50  0001 C CNN
	1    1100 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2800 1300 2850
Wire Wire Line
	1300 2450 1300 2500
Wire Wire Line
	2350 2850 2350 2750
Wire Wire Line
	2350 2450 2350 2550
Wire Wire Line
	950  2450 950  2650
Connection ~ 950  2650
Wire Wire Line
	950  2650 950  2850
Wire Wire Line
	1250 2850 1300 2850
Wire Wire Line
	1250 2450 1300 2450
Wire Wire Line
	800  2650 950  2650
Wire Wire Line
	1300 2450 2350 2450
Connection ~ 1300 2450
Wire Wire Line
	2350 2850 1300 2850
Connection ~ 1300 2850
$Comp
L power:VBUS #PWR051
U 1 1 5FFA533F
P 2200 3150
F 0 "#PWR051" H 2200 3000 50  0001 C CNN
F 1 "VBUS" H 2200 3300 50  0000 C CNN
F 2 "" H 2200 3150 50  0001 C CNN
F 3 "" H 2200 3150 50  0001 C CNN
	1    2200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3150 2200 3150
$Comp
L power:VDD #PWR068
U 1 1 5FFDA43D
P 6400 2950
F 0 "#PWR068" H 6400 2800 50  0001 C CNN
F 1 "VDD" H 6417 3123 50  0000 C CNN
F 2 "" H 6400 2950 50  0001 C CNN
F 3 "" H 6400 2950 50  0001 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR070
U 1 1 5FFDE0B5
P 6850 3200
F 0 "#PWR070" H 6850 3050 50  0001 C CNN
F 1 "+5V" H 6865 3373 50  0000 C CNN
F 2 "" H 6850 3200 50  0001 C CNN
F 3 "" H 6850 3200 50  0001 C CNN
	1    6850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR065
U 1 1 5FFDEDD1
P 5900 3200
F 0 "#PWR065" H 5900 3050 50  0001 C CNN
F 1 "VBUS" H 5900 3350 50  0000 C CNN
F 2 "" H 5900 3200 50  0001 C CNN
F 3 "" H 5900 3200 50  0001 C CNN
	1    5900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3400 5900 3400
Wire Wire Line
	6600 3400 6850 3400
$Comp
L Device:Q_PMOS_GSD Q3
U 1 1 5FFCF230
P 6400 3300
F 0 "Q3" V 6651 3300 50  0000 C CNN
F 1 "PMV48XP,215" V 6742 3300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6600 3400 50  0001 C CNN
F 3 "~" H 6400 3300 50  0001 C CNN
F 4 "Nexperia USA Inc." H 6400 3300 50  0001 C CNN "Manufacturer"
F 5 "PMV48XP,215" H 6400 3300 50  0001 C CNN "Manufacturer #"
F 6 "1727-5907-1-ND" H 6400 3300 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/nexperia-usa-inc/PMV48XP215/2744664" H 6400 3300 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    6400 3300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6003CCAB
P 5900 1800
AR Path="/5FD99B6C/6003CCAB" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6003CCAB" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/6003CCAB" Ref="R18"  Part="1" 
F 0 "R18" V 6107 1800 50  0000 C CNN
F 1 "10 kohm 5%" V 6016 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5830 1800 50  0001 C CNN
F 3 "~" H 5900 1800 50  0001 C CNN
	1    5900 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR064
U 1 1 60044CFE
P 5900 2050
F 0 "#PWR064" H 5900 1800 50  0001 C CNN
F 1 "GND" H 5905 1877 50  0000 C CNN
F 2 "" H 5900 2050 50  0001 C CNN
F 3 "" H 5900 2050 50  0001 C CNN
	1    5900 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 2050 5900 1950
Wire Wire Line
	5900 1350 5900 1500
Wire Wire Line
	6400 1500 5900 1500
Connection ~ 5900 1500
Wire Wire Line
	5900 1500 5900 1650
$Comp
L power:VDD #PWR063
U 1 1 6005531F
P 5900 1350
F 0 "#PWR063" H 5900 1200 50  0001 C CNN
F 1 "VDD" H 5917 1523 50  0000 C CNN
F 2 "" H 5900 1350 50  0001 C CNN
F 3 "" H 5900 1350 50  0001 C CNN
	1    5900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR069
U 1 1 6005A8CB
P 6600 2050
F 0 "#PWR069" H 6600 1900 50  0001 C CNN
F 1 "+5V" H 6615 2223 50  0000 C CNN
F 2 "" H 6600 2050 50  0001 C CNN
F 3 "" H 6600 2050 50  0001 C CNN
	1    6600 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q4
U 1 1 6002B1FB
P 6600 1600
F 0 "Q4" V 6851 1600 50  0000 C CNN
F 1 "PMV48XP,215" V 6942 1600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6800 1700 50  0001 C CNN
F 3 "~" H 6600 1600 50  0001 C CNN
F 4 "Nexperia USA Inc." H 6600 1600 50  0001 C CNN "Manufacturer"
F 5 "PMV48XP,215" H 6600 1600 50  0001 C CNN "Manufacturer #"
F 6 "1727-5907-1-ND" H 6600 1600 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/nexperia-usa-inc/PMV48XP215/2744664" H 6600 1600 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    6600 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 1800 6600 2050
$Comp
L Device:C C?
U 1 1 6008B98A
P 7100 1800
AR Path="/5FD99B6C/6008B98A" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6008B98A" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6008B98A" Ref="C16"  Part="1" 
F 0 "C16" V 7350 1750 50  0000 R CNN
F 1 "0.1uF 20V X7R 10%" V 7250 2050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 1650 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6008B991
P 7100 2050
AR Path="/6008B991" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/6008B991" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 7100 1800 50  0001 C CNN
F 1 "GND" H 7105 1877 50  0000 C CNN
F 2 "" H 7100 2050 50  0001 C CNN
F 3 "" H 7100 2050 50  0001 C CNN
	1    7100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2050 7100 1950
Wire Wire Line
	7100 1650 7100 1500
$Comp
L power:GND #PWR?
U 1 1 600BC7D4
P 8100 2050
AR Path="/600BC7D4" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/600BC7D4" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 8100 1800 50  0001 C CNN
F 1 "GND" H 8105 1877 50  0000 C CNN
F 2 "" H 8100 2050 50  0001 C CNN
F 3 "" H 8100 2050 50  0001 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1800 8100 2050
$Comp
L Device:C C?
U 1 1 600D6400
P 9400 1800
AR Path="/5FD99B6C/600D6400" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/600D6400" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/600D6400" Ref="C21"  Part="1" 
F 0 "C21" V 9650 1750 50  0000 R CNN
F 1 "0.1uF 16V X7R 10%" V 9550 2050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9438 1650 50  0001 C CNN
F 3 "~" H 9400 1800 50  0001 C CNN
	1    9400 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600D6406
P 9400 2050
AR Path="/600D6406" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/600D6406" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 9400 1800 50  0001 C CNN
F 1 "GND" H 9405 1877 50  0000 C CNN
F 2 "" H 9400 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0001 C CNN
	1    9400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2050 9400 1950
Wire Wire Line
	9400 1650 9400 1500
Wire Wire Line
	8900 1500 8400 1500
Wire Wire Line
	9400 1500 8900 1500
Connection ~ 8900 1500
Wire Wire Line
	9900 1500 9400 1500
$Comp
L power:+5V #PWR084
U 1 1 6010BB7C
P 9900 1350
F 0 "#PWR084" H 9900 1200 50  0001 C CNN
F 1 "+5V" H 9915 1523 50  0000 C CNN
F 2 "" H 9900 1350 50  0001 C CNN
F 3 "" H 9900 1350 50  0001 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2985-3.3 U5
U 1 1 601153C4
P 8800 3200
F 0 "U5" H 8800 3542 50  0000 C CNN
F 1 "LP2985-3.3" H 8800 3451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8800 3525 50  0001 C CNN
F 3 "" H 8800 3200 50  0001 C CNN
F 4 "Texas Instruments" H 8800 3200 50  0001 C CNN "Manufacturer"
F 5 "LP2985-33DBVR" H 8800 3200 50  0001 C CNN "Manufacturer #"
F 6 "296-18476-1-ND" H 8800 3200 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/texas-instruments/LP2985-33DBVR/809759" H 8800 3200 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    8800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1350 9900 1500
Wire Wire Line
	8900 1500 8900 1650
$Comp
L power:GND #PWR?
U 1 1 6015F192
P 8800 3650
AR Path="/6015F192" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/6015F192" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 8800 3400 50  0001 C CNN
F 1 "GND" H 8805 3477 50  0000 C CNN
F 2 "" H 8800 3650 50  0001 C CNN
F 3 "" H 8800 3650 50  0001 C CNN
	1    8800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6016A3D7
P 9400 3400
AR Path="/5FD99B6C/6016A3D7" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6016A3D7" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6016A3D7" Ref="C22"  Part="1" 
F 0 "C22" H 9515 3446 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 9515 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9438 3250 50  0001 C CNN
F 3 "~" H 9400 3400 50  0001 C CNN
	1    9400 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6016A3DD
P 9400 3650
AR Path="/6016A3DD" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/6016A3DD" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 9400 3400 50  0001 C CNN
F 1 "GND" H 9405 3477 50  0000 C CNN
F 2 "" H 9400 3650 50  0001 C CNN
F 3 "" H 9400 3650 50  0001 C CNN
	1    9400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3650 9400 3550
Wire Wire Line
	9400 3250 9400 3100
Wire Wire Line
	8800 3500 8800 3650
$Comp
L power:+3.3V #PWR085
U 1 1 6019794E
P 9900 3100
F 0 "#PWR085" H 9900 2950 50  0001 C CNN
F 1 "+3.3V" H 9915 3273 50  0000 C CNN
F 2 "" H 9900 3100 50  0001 C CNN
F 3 "" H 9900 3100 50  0001 C CNN
	1    9900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3200 6850 3400
Wire Wire Line
	6400 3100 6400 2950
Wire Wire Line
	5900 3400 5900 3200
Text Notes 7000 900  0    79   ~ 16
Power Management and Selection
Connection ~ 9400 1500
$Comp
L Device:Varistor RV1
U 1 1 6023FDF2
P 7900 6050
F 0 "RV1" H 8003 6096 50  0000 L CNN
F 1 "5V 0.5pF" H 8003 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7830 6050 50  0001 C CNN
F 3 "~" H 7900 6050 50  0001 C CNN
F 4 "Bourns Inc." H 7900 6050 50  0001 C CNN "Manufacturer"
F 5 "CG0603MLC-05E" H 7900 6050 50  0001 C CNN "Manufacturer #"
F 6 "CG0603MLC-05ECT-ND" H 7900 6050 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/bourns-inc/CG0603MLC-05E/2538084" H 7900 6050 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7900 6050
	-1   0    0    -1  
$EndComp
$Comp
L Device:Varistor RV2
U 1 1 6024ADA6
P 8400 5800
F 0 "RV2" H 8503 5846 50  0000 L CNN
F 1 "5V 0.5pF" H 8503 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8330 5800 50  0001 C CNN
F 3 "~" H 8400 5800 50  0001 C CNN
F 4 "Bourns Inc." H 8400 5800 50  0001 C CNN "Manufacturer"
F 5 "CG0603MLC-05E" H 8400 5800 50  0001 C CNN "Manufacturer #"
F 6 "CG0603MLC-05ECT-ND" H 8400 5800 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/bourns-inc/CG0603MLC-05E/2538084" H 8400 5800 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    8400 5800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR074
U 1 1 60270A5F
P 7900 6300
F 0 "#PWR074" H 7900 6050 50  0001 C CNN
F 1 "GND" H 7905 6127 50  0000 C CNN
F 2 "" H 7900 6300 50  0001 C CNN
F 3 "" H 7900 6300 50  0001 C CNN
	1    7900 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 6200 7900 6300
$Comp
L power:GND #PWR077
U 1 1 602776C4
P 8400 6050
F 0 "#PWR077" H 8400 5800 50  0001 C CNN
F 1 "GND" H 8405 5877 50  0000 C CNN
F 2 "" H 8400 6050 50  0001 C CNN
F 3 "" H 8400 6050 50  0001 C CNN
	1    8400 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8400 5950 8400 6050
$Comp
L Device:CP C20
U 1 1 602A22E1
P 9250 5650
F 0 "C20" H 9132 5696 50  0000 R CNN
F 1 "22uF 16V 20%" H 9132 5605 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9288 5500 50  0001 C CNN
F 3 "~" H 9250 5650 50  0001 C CNN
	1    9250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5100 9250 5500
Wire Wire Line
	9250 5100 9500 5100
Wire Wire Line
	8950 4900 9250 4900
$Comp
L power:GND #PWR080
U 1 1 6034146C
P 9250 5900
F 0 "#PWR080" H 9250 5650 50  0001 C CNN
F 1 "GND" H 9255 5727 50  0000 C CNN
F 2 "" H 9250 5900 50  0001 C CNN
F 3 "" H 9250 5900 50  0001 C CNN
	1    9250 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 5800 9250 5900
Wire Wire Line
	9800 5750 9800 5900
$Comp
L Device:R R?
U 1 1 603513C1
P 6050 5200
AR Path="/5FD99B6C/603513C1" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/603513C1" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/603513C1" Ref="R19"  Part="1" 
F 0 "R19" V 6257 5200 50  0000 C CNN
F 1 "10 kohm 5%" V 6166 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5980 5200 50  0001 C CNN
F 3 "~" H 6050 5200 50  0001 C CNN
	1    6050 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 4900 9250 5100
Connection ~ 9250 5100
$Comp
L power:GND #PWR?
U 1 1 60378213
P 6250 5600
AR Path="/60378213" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/60378213" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 6250 5350 50  0001 C CNN
F 1 "GND" H 6255 5427 50  0000 C CNN
F 2 "" H 6250 5600 50  0001 C CNN
F 3 "" H 6250 5600 50  0001 C CNN
	1    6250 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6037820D
P 6450 5200
AR Path="/5FD99B6C/6037820D" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6037820D" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6037820D" Ref="C15"  Part="1" 
F 0 "C15" V 6700 5250 50  0000 R CNN
F 1 "0.1uF 16V X7R 10%" V 6600 5450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6488 5050 50  0001 C CNN
F 3 "~" H 6450 5200 50  0001 C CNN
	1    6450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4900 6050 5050
Wire Wire Line
	6050 4900 6450 4900
Wire Wire Line
	6450 5050 6450 4900
Connection ~ 6450 4900
Wire Wire Line
	6450 4900 8750 4900
Wire Wire Line
	6050 5500 6250 5500
Wire Wire Line
	6250 5500 6250 5600
Connection ~ 6250 5500
Wire Wire Line
	6250 5500 6450 5500
$Comp
L power:VBUS #PWR066
U 1 1 603D0428
P 6050 4750
F 0 "#PWR066" H 6050 4600 50  0001 C CNN
F 1 "VBUS" H 6050 4900 50  0000 C CNN
F 2 "" H 6050 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0001 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4750 6050 4900
Connection ~ 6050 4900
$Comp
L Custom:Push-Switch SW1
U 1 1 604AE98D
P 2000 7050
F 0 "SW1" H 2000 7285 50  0000 C CNN
F 1 "Push-Switch" H 2000 7194 50  0000 C CNN
F 2 "Custom:Switch" H 2000 7300 50  0001 C CNN
F 3 "" H 2000 7300 50  0001 C CNN
F 4 "C&K" H 2000 7050 50  0001 C CNN "Manufacturer"
F 5 "RS-187R05A2-DS MT RT" H 2000 7050 50  0001 C CNN "Manufacturer #"
F 6 "CKN10361CT-ND" H 2000 7050 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/c-k/RS-187R05A2-DS-MT-RT/2747186?s=N4IgTCBcDaIMIGkByBGADAZgGwrgFQFokAREAXQF8g" H 2000 7050 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2000 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 604D4819
P 1450 7100
F 0 "#PWR048" H 1450 6850 50  0001 C CNN
F 1 "GND" H 1455 6927 50  0000 C CNN
F 2 "" H 1450 7100 50  0001 C CNN
F 3 "" H 1450 7100 50  0001 C CNN
	1    1450 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7100 1450 7100
$Comp
L Device:C C?
U 1 1 604E4AC6
P 3800 6800
AR Path="/5FD99B6C/604E4AC6" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/604E4AC6" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/604E4AC6" Ref="C13"  Part="1" 
F 0 "C13" V 4050 6850 50  0000 R CNN
F 1 "0.1uF 16V X7R 10%" V 3950 7050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 6650 50  0001 C CNN
F 3 "~" H 3800 6800 50  0001 C CNN
	1    3800 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604E4ACC
P 3800 7050
AR Path="/604E4ACC" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/604E4ACC" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 3800 6800 50  0001 C CNN
F 1 "GND" H 3805 6877 50  0000 C CNN
F 2 "" H 3800 7050 50  0001 C CNN
F 3 "" H 3800 7050 50  0001 C CNN
	1    3800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7050 3800 6950
Wire Wire Line
	3800 6650 3800 6500
$Comp
L power:GND #PWR?
U 1 1 604E8E85
P 4250 7050
AR Path="/604E8E85" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/604E8E85" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 4250 6800 50  0001 C CNN
F 1 "GND" H 4255 6877 50  0000 C CNN
F 2 "" H 4250 7050 50  0001 C CNN
F 3 "" H 4250 7050 50  0001 C CNN
	1    4250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7050 4250 6950
Wire Wire Line
	4250 6650 4250 6500
Text GLabel 2150 2350 0    50   Input ~ 0
RESET
Wire Wire Line
	2150 2350 2350 2350
$Comp
L power:+5V #PWR055
U 1 1 6050B80F
P 2950 6350
F 0 "#PWR055" H 2950 6200 50  0001 C CNN
F 1 "+5V" H 2965 6523 50  0000 C CNN
F 2 "" H 2950 6350 50  0001 C CNN
F 3 "" H 2950 6350 50  0001 C CNN
	1    2950 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5350 6050 5500
Wire Wire Line
	6450 5350 6450 5500
$Comp
L Device:R R?
U 1 1 60521123
P 2950 6800
AR Path="/5FD99B6C/60521123" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60521123" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60521123" Ref="R14"  Part="1" 
F 0 "R14" H 2880 6754 50  0000 R CNN
F 1 "10 kohm 5%" H 2880 6845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2880 6800 50  0001 C CNN
F 3 "~" H 2950 6800 50  0001 C CNN
	1    2950 6800
	-1   0    0    1   
$EndComp
$Comp
L Device:D D4
U 1 1 60525807
P 2650 6800
F 0 "D4" H 2600 7000 50  0000 L CNN
F 1 "75V 150mA" H 2450 6900 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2650 6800 50  0001 C CNN
F 3 "~" H 2650 6800 50  0001 C CNN
F 4 "Taiwan Semiconductor Corporation" H 2650 6800 50  0001 C CNN "Manufacturer"
F 5 "TS4148C RZG" H 2650 6800 50  0001 C CNN "Manufacturer #"
F 6 "TS4148CRZGCT-ND" H 2650 6800 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/taiwan-semiconductor-corporation/TS4148C-RZG/7359811?s=N4IgjCBcpgbFoDGUBmBDANgZwKYBoQB7KAbRAGYBOAJgBZ4BdAgBwBcoQBlVgJwEsAdgHMQAXwKV40EMkjps%2BIqRC0ADAHZK5ABwgmINh279hYgmErbKCGaky4CxSGVV6W7SF16CR4kAFpqG1leAFdFJzIAVjcDDxAxUVEgA" H 2650 6800 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2650 6800
	0    -1   1    0   
$EndComp
Text GLabel 3250 7100 2    50   Input ~ 0
RESET
Wire Wire Line
	2650 6950 2650 7100
Wire Wire Line
	2950 6950 2950 7100
Wire Wire Line
	2650 6500 2650 6650
Wire Wire Line
	2950 6500 2950 6650
Wire Wire Line
	2950 6350 2950 6500
Connection ~ 2950 6500
Wire Wire Line
	2650 6500 2950 6500
Connection ~ 2650 7100
Wire Wire Line
	2200 7100 2650 7100
Wire Wire Line
	2650 7100 2950 7100
Wire Wire Line
	3250 7100 2950 7100
Connection ~ 2950 7100
Wire Wire Line
	2950 6500 3800 6500
$Comp
L Device:C C?
U 1 1 604E8E7F
P 4250 6800
AR Path="/5FD99B6C/604E8E7F" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/604E8E7F" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/604E8E7F" Ref="C14"  Part="1" 
F 0 "C14" V 4500 6850 50  0000 R CNN
F 1 "0.1uF 16V X7R 10%" V 4400 7050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4288 6650 50  0001 C CNN
F 3 "~" H 4250 6800 50  0001 C CNN
	1    4250 6800
	1    0    0    -1  
$EndComp
Connection ~ 3800 6500
Wire Wire Line
	3800 6500 4250 6500
$Comp
L Device:Ferrite_Bead FB1
U 1 1 605F0679
P 3050 1600
F 0 "FB1" H 2913 1554 50  0000 R CNN
F 1 "Ferrite 30 ohm 1 line" H 2913 1645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 1600 50  0001 C CNN
F 3 "~" H 3050 1600 50  0001 C CNN
F 4 "Bourns Inc." H 3050 1600 50  0001 C CNN "Manufacturer"
F 5 "MH1608-300Y" H 3050 1600 50  0001 C CNN "Manufacturer #"
F 6 "MH1608-300YCT-ND" H 3050 1600 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/bourns-inc/MH1608-300Y/1970497?s=N4IgjCBcpgbFoDGUBmBDANgZwKYBoQB7KAbRAGYBOAJgBZ4BdAgBwBcoQBlVgJwEsAdgHMQAXwLUI0EMkjps%2BIqQoAOSrQCsjFu0hdegkePCU1CGaky4CxSGQAMIJiDYdu-YWInUVj6bPlrJTsKewACAHkACwBbLDCAATCwe3sAWQAJAC8nHQ4AYUIAV2YMHAATAFUBPlYIlDScNCwinhwvEABaanNZXiLFWzINXJddEDFRUSA" H 3050 1600 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    3050 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3550 3750 3550
Text GLabel 3750 3650 2    50   Input ~ 0
SDA
Wire Wire Line
	3550 3650 3750 3650
Text GLabel 3750 3750 2    50   Input ~ 0
RX
Wire Wire Line
	3550 3750 3750 3750
Text GLabel 3750 3850 2    50   Input ~ 0
TX
Wire Wire Line
	3550 3850 3750 3850
Text GLabel 3750 3950 2    50   Input ~ 0
D4
Wire Wire Line
	3550 3950 3750 3950
Text GLabel 3750 4850 2    50   Input ~ 0
A4
Wire Wire Line
	3550 4850 3750 4850
Text GLabel 3750 4750 2    50   Input ~ 0
A5
Wire Wire Line
	3550 4750 3750 4750
Text GLabel 3750 5050 2    50   Input ~ 0
A2
Wire Wire Line
	3550 5050 3750 5050
Text GLabel 3750 4950 2    50   Input ~ 0
A3
Wire Wire Line
	3550 4950 3750 4950
Text GLabel 3750 5250 2    50   Input ~ 0
A0
Wire Wire Line
	3550 5250 3750 5250
Text GLabel 3750 5150 2    50   Input ~ 0
A1
Wire Wire Line
	3550 5150 3750 5150
Text GLabel 3750 3250 2    50   Input ~ 0
D5
Wire Wire Line
	3750 3250 3550 3250
Text GLabel 3750 2550 2    50   Input ~ 0
D16-MOSI
Text GLabel 3750 2650 2    50   Input ~ 0
D14-MISO
Text GLabel 3750 2450 2    50   Input ~ 0
D15-SCK
Wire Wire Line
	3750 2450 3550 2450
Wire Wire Line
	3550 2650 3750 2650
Wire Wire Line
	3750 2550 3550 2550
Text GLabel 3750 4250 2    50   Input ~ 0
D6
Wire Wire Line
	3550 4250 3750 4250
Text GLabel 3750 4550 2    50   Input ~ 0
D7
Text GLabel 3750 2750 2    50   Input ~ 0
D8
Text GLabel 3750 2850 2    50   Input ~ 0
D9
Text GLabel 3750 2950 2    50   Input ~ 0
D10
Text GLabel 3750 3050 2    50   Input ~ 0
D11
Text GLabel 3750 4150 2    50   Input ~ 0
D12
Text GLabel 3750 3350 2    50   Input ~ 0
D13
Wire Wire Line
	3550 4150 3750 4150
Wire Wire Line
	3550 3050 3750 3050
Wire Wire Line
	3750 2950 3550 2950
Wire Wire Line
	3550 2850 3750 2850
Wire Wire Line
	3750 2750 3550 2750
Wire Wire Line
	3550 3350 3750 3350
Wire Wire Line
	3550 4550 3750 4550
$Comp
L power:GND #PWR060
U 1 1 60029E4D
P 4600 4450
F 0 "#PWR060" H 4600 4200 50  0001 C CNN
F 1 "GND" H 4605 4277 50  0000 C CNN
F 2 "" H 4600 4450 50  0001 C CNN
F 3 "" H 4600 4450 50  0001 C CNN
	1    4600 4450
	1    0    0    -1  
$EndComp
Text GLabel 3750 3550 2    50   Input ~ 0
SCL
Wire Wire Line
	4450 4450 4600 4450
$Comp
L Device:R R?
U 1 1 6013640D
P 4300 4450
AR Path="/5FD99B6C/6013640D" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6013640D" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/6013640D" Ref="R17"  Part="1" 
F 0 "R17" V 4507 4450 50  0000 C CNN
F 1 "10 kohm 5%" V 4416 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 4450 50  0001 C CNN
F 3 "~" H 4300 4450 50  0001 C CNN
	1    4300 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 2050 3050 1900
Connection ~ 3050 1750
Wire Wire Line
	2850 2050 2850 1900
Wire Wire Line
	2850 1450 2950 1450
$Comp
L power:+5V #PWR054
U 1 1 602A7C9D
P 2950 1400
F 0 "#PWR054" H 2950 1250 50  0001 C CNN
F 1 "+5V" H 2965 1573 50  0000 C CNN
F 2 "" H 2950 1400 50  0001 C CNN
F 3 "" H 2950 1400 50  0001 C CNN
	1    2950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1400 2950 1450
Connection ~ 2950 1450
Wire Wire Line
	2950 1450 3050 1450
$Comp
L Device:C C?
U 1 1 602BA879
P 2350 1900
AR Path="/5FD99B6C/602BA879" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/602BA879" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/602BA879" Ref="C11"  Part="1" 
F 0 "C11" H 2465 1946 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 2465 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2388 1750 50  0001 C CNN
F 3 "~" H 2350 1900 50  0001 C CNN
	1    2350 1900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 602BA87F
P 2350 2050
F 0 "#PWR052" H 2350 1800 50  0001 C CNN
F 1 "GND" H 2355 1877 50  0000 C CNN
F 2 "" H 2350 2050 50  0001 C CNN
F 3 "" H 2350 2050 50  0001 C CNN
	1    2350 2050
	1    0    0    -1  
$EndComp
Connection ~ 2850 1750
Wire Wire Line
	2850 1750 2850 1450
Wire Wire Line
	2950 2050 2950 1900
Wire Wire Line
	2950 1900 2850 1900
Connection ~ 2850 1900
Wire Wire Line
	2850 1900 2850 1750
$Comp
L Device:R R?
U 1 1 603D5C78
P 4300 4050
AR Path="/5FD99B6C/603D5C78" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/603D5C78" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/603D5C78" Ref="R16"  Part="1" 
F 0 "R16" V 4507 4050 50  0000 C CNN
F 1 "1 kohm 5%" V 4416 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 603DB557
P 4300 2350
AR Path="/5FD99B6C/603DB557" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/603DB557" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/603DB557" Ref="R15"  Part="1" 
F 0 "R15" V 4507 2350 50  0000 C CNN
F 1 "1 kohm 5%" V 4416 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 2350 50  0001 C CNN
F 3 "~" H 4300 2350 50  0001 C CNN
	1    4300 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 603F28D0
P 4900 2350
AR Path="/603F28D0" Ref="D?"  Part="1" 
AR Path="/5FDD4B9C/603F28D0" Ref="D5"  Part="1" 
F 0 "D5" H 4893 2095 50  0000 C CNN
F 1 "Orange 2V 20mA" H 4893 2186 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4900 2350 50  0001 C CNN
F 3 "~" H 4900 2350 50  0001 C CNN
	1    4900 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 603F8424
P 4900 4050
AR Path="/603F8424" Ref="D?"  Part="1" 
AR Path="/5FDD4B9C/603F8424" Ref="D6"  Part="1" 
F 0 "D6" H 4893 3795 50  0000 C CNN
F 1 "Orange 2V 20mA" H 4893 3886 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4900 4050 50  0001 C CNN
F 3 "~" H 4900 4050 50  0001 C CNN
	1    4900 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR062
U 1 1 603FDF8A
P 5150 4050
F 0 "#PWR062" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5155 3877 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR061
U 1 1 604038A5
P 5150 2350
F 0 "#PWR061" H 5150 2100 50  0001 C CNN
F 1 "GND" H 5155 2177 50  0000 C CNN
F 2 "" H 5150 2350 50  0001 C CNN
F 3 "" H 5150 2350 50  0001 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2350 5150 2350
Wire Wire Line
	5050 4050 5150 4050
Connection ~ 7900 5400
Wire Wire Line
	7900 5400 9500 5400
Wire Wire Line
	7650 5400 7900 5400
Wire Wire Line
	7900 5900 7900 5400
Wire Wire Line
	8400 5300 9500 5300
Wire Wire Line
	7650 5300 8400 5300
Connection ~ 8400 5300
Wire Wire Line
	8400 5650 8400 5300
Wire Wire Line
	3550 2350 4150 2350
Wire Wire Line
	4150 4050 3550 4050
Wire Wire Line
	3550 4450 4150 4450
$Comp
L Custom:LM1117-5.0 U4
U 1 1 6079A878
P 8100 1550
F 0 "U4" H 8100 1842 50  0000 C CNN
F 1 "LM1117-5.0" H 8100 1751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 8250 1350 50  0001 C CNN
F 3 "" H 8250 1350 50  0001 C CNN
F 4 "Texas Instruments" H 8100 1550 50  0001 C CNN "Manufacturer"
F 5 "LM1117IMP-5.0/NOPB" H 8100 1550 50  0001 C CNN "Manufacturer #"
F 6 "LM1117IMP-5.0/NOPBCT-ND" H 8100 1550 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/texas-instruments/LM1117IMP-5-0-NOPB/482940" H 8100 1550 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    8100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1600 8400 1500
Connection ~ 8400 1500
Connection ~ 7100 1500
Wire Wire Line
	7100 1500 6800 1500
Wire Wire Line
	7100 1500 7600 1500
$Comp
L Device:CP C17
U 1 1 607C2000
P 7600 1800
F 0 "C17" V 7850 1850 50  0000 R CNN
F 1 "10uF 20V 20%" V 7750 2000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7638 1650 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 607C2006
P 7600 2050
F 0 "#PWR072" H 7600 1800 50  0001 C CNN
F 1 "GND" H 7605 1877 50  0000 C CNN
F 2 "" H 7600 2050 50  0001 C CNN
F 3 "" H 7600 2050 50  0001 C CNN
	1    7600 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 2050 7600 1950
Wire Wire Line
	7600 1650 7600 1500
Connection ~ 7600 1500
Wire Wire Line
	7600 1500 7800 1500
Wire Wire Line
	8100 3250 8100 3100
$Comp
L Device:C C?
U 1 1 607F5DBA
P 8100 3400
AR Path="/5FD99B6C/607F5DBA" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/607F5DBA" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/607F5DBA" Ref="C18"  Part="1" 
F 0 "C18" H 8215 3446 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 8215 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8138 3250 50  0001 C CNN
F 3 "~" H 8100 3400 50  0001 C CNN
	1    8100 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607F5DC0
P 8100 3650
AR Path="/607F5DC0" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/607F5DC0" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 8100 3400 50  0001 C CNN
F 1 "GND" H 8105 3477 50  0000 C CNN
F 2 "" H 8100 3650 50  0001 C CNN
F 3 "" H 8100 3650 50  0001 C CNN
	1    8100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3650 8100 3550
Connection ~ 8100 3100
Wire Wire Line
	8100 3100 8400 3100
Connection ~ 9400 3100
Wire Wire Line
	9400 3100 9200 3100
Wire Wire Line
	9400 3100 9900 3100
Wire Wire Line
	8400 3200 8400 3100
Connection ~ 8400 3100
$Comp
L power:+5V #PWR073
U 1 1 6012E39B
P 7700 3100
F 0 "#PWR073" H 7700 2950 50  0001 C CNN
F 1 "+5V" H 7715 3273 50  0000 C CNN
F 2 "" H 7700 3100 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3100 8100 3100
Wire Wire Line
	3650 1750 3050 1750
$Comp
L power:GND #PWR057
U 1 1 60222BD3
P 3650 2050
F 0 "#PWR057" H 3650 1800 50  0001 C CNN
F 1 "GND" H 3655 1877 50  0000 C CNN
F 2 "" H 3650 2050 50  0001 C CNN
F 3 "" H 3650 2050 50  0001 C CNN
	1    3650 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 605F1BA8
P 3650 1900
AR Path="/5FD99B6C/605F1BA8" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/605F1BA8" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/605F1BA8" Ref="C12"  Part="1" 
F 0 "C12" H 3765 1946 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 3765 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3688 1750 50  0001 C CNN
F 3 "~" H 3650 1900 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1900 3050 1900
Connection ~ 2950 1900
Connection ~ 3050 1900
Wire Wire Line
	3050 1900 3050 1750
Wire Wire Line
	4450 2350 4750 2350
Wire Wire Line
	4450 4050 4750 4050
$Comp
L power:GND #PWR047
U 1 1 5FF6A4F2
P 800 2650
F 0 "#PWR047" H 800 2400 50  0001 C CNN
F 1 "GND" H 805 2477 50  0000 C CNN
F 2 "" H 800 2650 50  0001 C CNN
F 3 "" H 800 2650 50  0001 C CNN
	1    800  2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600FEE9A
P 1400 1900
AR Path="/5FD99B6C/600FEE9A" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/600FEE9A" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/600FEE9A" Ref="C23"  Part="1" 
F 0 "C23" H 1300 1900 50  0000 R CNN
F 1 "0.1uF 16V X7R 10%" H 1350 2000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1438 1750 50  0001 C CNN
F 3 "~" H 1400 1900 50  0001 C CNN
	1    1400 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6010BE74
P 1400 2050
F 0 "#PWR0101" H 1400 1800 50  0001 C CNN
F 1 "GND" H 1405 1877 50  0000 C CNN
F 2 "" H 1400 2050 50  0001 C CNN
F 3 "" H 1400 2050 50  0001 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
Connection ~ 2350 1750
Wire Wire Line
	2350 1750 2850 1750
Wire Wire Line
	1400 1750 2350 1750
$EndSCHEMATC
