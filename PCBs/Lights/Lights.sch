EESchema Schematic File Version 4
LIBS:Lights-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Lights"
Date "2021-01-03"
Rev "A"
Comp "Mark Sherstan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FF23492
P 1850 4350
F 0 "J1" H 1930 4342 50  0000 L CNN
F 1 "Conn_01x02" H 1930 4251 50  0000 L CNN
F 2 "Connector_JST:JST_GH_SM02B-GHS-TB_1x02-1MP_P1.25mm_Horizontal" H 1850 4350 50  0001 C CNN
F 3 "~" H 1850 4350 50  0001 C CNN
F 4 "JST Sales America Inc." H 1850 4350 50  0001 C CNN "Manufacturer"
F 5 "SM02B-GHS-TB(LF)(SN)" H 1850 4350 50  0001 C CNN "Manufacturer #"
F 6 "455-1564-1-ND" H 1850 4350 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/SM02B-GHS-TB-LF-SN/807786?s=N4IgTCBcDaIMoFkAMYBCBaA4gCTiAugL5A" H 1850 4350 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    1850 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FF23AEE
P 5350 4300
F 0 "R1" V 5500 4300 50  0000 C CNN
F 1 "See Notes" V 5466 4300 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5280 4300 50  0001 C CNN
F 3 "~" H 5350 4300 50  0001 C CNN
	1    5350 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FF23E80
P 4750 4450
F 0 "C1" H 4865 4496 50  0000 L CNN
F 1 "1 uF 16V 10%" H 4865 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4788 4300 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
	1    4750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FF24B5C
P 6100 4300
F 0 "D1" H 6093 4136 50  0000 C CNN
F 1 "See Notes" H 6093 4136 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6100 4300 50  0001 C CNN
F 3 "~" H 6100 4300 50  0001 C CNN
	1    6100 4300
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5FF271A0
P 8750 4250
F 0 "H1" H 8850 4296 50  0000 L CNN
F 1 "M2" H 8850 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 8750 4250 50  0001 C CNN
F 3 "~" H 8750 4250 50  0001 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FF27C72
P 6700 4300
F 0 "#PWR0101" H 6700 4050 50  0001 C CNN
F 1 "GND" H 6705 4127 50  0000 C CNN
F 2 "" H 6700 4300 50  0001 C CNN
F 3 "" H 6700 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5FF2849B
P 2150 4150
F 0 "#PWR0102" H 2150 4000 50  0001 C CNN
F 1 "+5V" H 2165 4323 50  0000 C CNN
F 2 "" H 2150 4150 50  0001 C CNN
F 3 "" H 2150 4150 50  0001 C CNN
	1    2150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4350 2150 4350
Wire Wire Line
	2050 4250 2150 4250
Wire Wire Line
	2150 4250 2150 4150
Wire Wire Line
	2150 4350 2150 4450
$Comp
L power:GND #PWR0103
U 1 1 5FF33173
P 2150 4450
F 0 "#PWR0103" H 2150 4200 50  0001 C CNN
F 1 "GND" H 2155 4277 50  0000 C CNN
F 2 "" H 2150 4450 50  0001 C CNN
F 3 "" H 2150 4450 50  0001 C CNN
	1    2150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4300 5200 4300
Wire Wire Line
	5500 4300 5950 4300
Wire Wire Line
	6250 4300 6700 4300
Wire Wire Line
	4300 4300 4750 4300
$Comp
L power:GND #PWR0104
U 1 1 5FF3A0DA
P 4750 4600
F 0 "#PWR0104" H 4750 4350 50  0001 C CNN
F 1 "GND" H 4755 4427 50  0000 C CNN
F 2 "" H 4750 4600 50  0001 C CNN
F 3 "" H 4750 4600 50  0001 C CNN
	1    4750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5FF3A683
P 4300 4300
F 0 "#PWR0105" H 4300 4150 50  0001 C CNN
F 1 "+5V" H 4315 4473 50  0000 C CNN
F 2 "" H 4300 4300 50  0001 C CNN
F 3 "" H 4300 4300 50  0001 C CNN
	1    4300 4300
	1    0    0    -1  
$EndComp
Connection ~ 4750 4300
$Comp
L Mechanical:MountingHole H2
U 1 1 5FF4097E
P 9200 4250
F 0 "H2" H 9300 4296 50  0000 L CNN
F 1 "M2" H 9300 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 9200 4250 50  0001 C CNN
F 3 "~" H 9200 4250 50  0001 C CNN
	1    9200 4250
	1    0    0    -1  
$EndComp
Text Notes 4150 5400 0    50   ~ 0
GREEN\nManufacturer: Kingbright\nManufacturer Number: APTD1608ZGCK\nDigi-Key Number: 754-1805-1-ND\nSpecs: 3.3V 20mA (85 ohm)
Text Notes 5950 5400 0    50   ~ 0
RED\nManufacturer: Kingbright\nManufacturer Number: APTD1608SEC/J3\nDigi-Key Number: 754-1542-1-ND\nSpecs: 2.2V 20mA (140 ohm)
$EndSCHEMATC
