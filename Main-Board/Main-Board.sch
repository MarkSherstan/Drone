EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "2020-12-13"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Custom:ICM-20689 U?
U 1 1 5FD6DF6A
P 3400 1850
F 0 "U?" H 3400 2415 50  0000 C CNN
F 1 "ICM-20689" H 3400 2324 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.8x2.8mm" H 3400 1400 50  0001 C CNN
F 3 "https://invensense.tdk.com/download-pdf/icm-20689-datasheet/" H 3400 1400 50  0001 C CNN
F 4 "TDK InvenSense" H 3400 1850 50  0001 C CNN "Manufacturer"
F 5 "ICM-20689" H 3400 1850 50  0001 C CNN "Manufacturer #"
F 6 "1428-1059-1-ND" H 3400 1850 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/tdk-invensense/ICM-20689/5872869" H 3400 1850 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD6EA07
P 1750 2000
F 0 "C?" H 1865 2046 50  0000 L CNN
F 1 "X7R, 0.47uF 10%" H 1865 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1788 1850 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD6F2ED
P 5950 1950
F 0 "C?" H 6065 1996 50  0000 L CNN
F 1 "X7R, 0.1 uF 10%" H 6065 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5988 1800 50  0001 C CNN
F 3 "~" H 5950 1950 50  0001 C CNN
	1    5950 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD6F793
P 4900 1950
F 0 "C?" H 5015 1996 50  0000 L CNN
F 1 "X7R, 2.2uF 10%" H 5015 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4938 1800 50  0001 C CNN
F 3 "~" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD6F93D
P 650 1800
F 0 "C?" H 765 1846 50  0000 L CNN
F 1 "X7R, 10nF 10%" H 765 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 688 1650 50  0001 C CNN
F 3 "~" H 650 1800 50  0001 C CNN
	1    650  1800
	1    0    0    -1  
$EndComp
Text Notes 3000 850  0    79   ~ 16
6 DOF IMU
$Comp
L power:GND #PWR?
U 1 1 5FD71373
P 4150 1350
F 0 "#PWR?" H 4150 1100 50  0001 C CNN
F 1 "GND" H 4155 1177 50  0000 C CNN
F 2 "" H 4150 1350 50  0001 C CNN
F 3 "" H 4150 1350 50  0001 C CNN
	1    4150 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD71766
P 1750 3400
F 0 "R?" V 1957 3400 50  0000 C CNN
F 1 "10 kOhm 5%" V 1866 3400 50  0000 C CNN
F 2 "" V 1680 3400 50  0001 C CNN
F 3 "~" H 1750 3400 50  0001 C CNN
	1    1750 3400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD724B5
P 650 1450
F 0 "#PWR?" H 650 1300 50  0001 C CNN
F 1 "+3.3V" H 665 1623 50  0000 C CNN
F 2 "" H 650 1450 50  0001 C CNN
F 3 "" H 650 1450 50  0001 C CNN
	1    650  1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD74CA2
P 650 2050
F 0 "#PWR?" H 650 1800 50  0001 C CNN
F 1 "GND" H 655 1877 50  0000 C CNN
F 2 "" H 650 2050 50  0001 C CNN
F 3 "" H 650 2050 50  0001 C CNN
	1    650  2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1450 650  1550
Wire Wire Line
	650  1650 650  1550
Connection ~ 650  1550
Wire Wire Line
	650  2050 650  1950
$Comp
L power:+3.3V #PWR?
U 1 1 5FD78C3A
P 5950 1600
F 0 "#PWR?" H 5950 1450 50  0001 C CNN
F 1 "+3.3V" H 5965 1773 50  0000 C CNN
F 2 "" H 5950 1600 50  0001 C CNN
F 3 "" H 5950 1600 50  0001 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1550 4000 1550
Wire Wire Line
	4000 1550 4000 1300
Wire Wire Line
	4000 1300 4150 1300
Wire Wire Line
	4150 1300 4150 1350
$Comp
L power:GND #PWR?
U 1 1 5FD7DD01
P 4900 2200
F 0 "#PWR?" H 4900 1950 50  0001 C CNN
F 1 "GND" H 4905 2027 50  0000 C CNN
F 2 "" H 4900 2200 50  0001 C CNN
F 3 "" H 4900 2200 50  0001 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD7E0A3
P 5950 2200
F 0 "#PWR?" H 5950 1950 50  0001 C CNN
F 1 "GND" H 5955 2027 50  0000 C CNN
F 2 "" H 5950 2200 50  0001 C CNN
F 3 "" H 5950 2200 50  0001 C CNN
	1    5950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1700 4900 1700
Wire Wire Line
	5950 2200 5950 2100
Wire Wire Line
	4900 2200 4900 2100
Wire Wire Line
	5950 1700 5950 1600
Wire Wire Line
	5950 1700 5950 1800
Connection ~ 5950 1700
Wire Wire Line
	4900 1800 4900 1700
Connection ~ 4900 1700
Wire Wire Line
	4900 1700 5950 1700
$Comp
L power:GND #PWR?
U 1 1 5FD84BED
P 1750 2250
F 0 "#PWR?" H 1750 2000 50  0001 C CNN
F 1 "GND" H 1755 2077 50  0000 C CNN
F 2 "" H 1750 2250 50  0001 C CNN
F 3 "" H 1750 2250 50  0001 C CNN
	1    1750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2250 1750 2150
$Comp
L power:GND #PWR?
U 1 1 5FD8685E
P 1400 2250
F 0 "#PWR?" H 1400 2000 50  0001 C CNN
F 1 "GND" H 1405 2077 50  0000 C CNN
F 2 "" H 1400 2250 50  0001 C CNN
F 3 "" H 1400 2250 50  0001 C CNN
	1    1400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1550 2900 1550
Wire Wire Line
	1400 1700 1400 2250
Text Notes 1150 2700 0    59   ~ 0
AD0 logic low: \nb1101000
$Comp
L power:GND #PWR?
U 1 1 5FD89E35
P 2600 2250
F 0 "#PWR?" H 2600 2000 50  0001 C CNN
F 1 "GND" H 2605 2077 50  0000 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2000 2600 2000
Wire Wire Line
	2600 2000 2600 2250
Wire Wire Line
	1750 1850 2900 1850
Wire Wire Line
	1400 1700 2900 1700
Text GLabel 4100 2000 2    59   Input ~ 0
IMU_SCL
Text GLabel 4100 2150 2    59   Input ~ 0
IMU_SDA
Text Notes 8550 950  0    79   ~ 16
Power In
Text Notes 8300 1300 0    59   ~ 0
Reverse polarity and regulator 
Wire Wire Line
	3900 2000 4100 2000
Wire Wire Line
	3900 2150 4100 2150
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FD8E7B8
P 2150 3600
F 0 "Q?" H 2356 3646 50  0000 L CNN
F 1 "BSS138" H 2356 3555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 3525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 2150 3600 50  0001 L CNN
	1    2150 3600
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD92848
P 1750 3150
F 0 "#PWR?" H 1750 3000 50  0001 C CNN
F 1 "+3.3V" H 1765 3323 50  0000 C CNN
F 2 "" H 1750 3150 50  0001 C CNN
F 3 "" H 1750 3150 50  0001 C CNN
	1    1750 3150
	1    0    0    -1  
$EndComp
Text GLabel 1350 3700 0    59   Input ~ 0
IMU_SCL
Text Notes 2300 3250 0    59   ~ 0
Get 3.3 logic chip and we dont need any of the logical level converters. \nhttps://www.sparkfun.com/products/11114?_ga=2.157966834.958786350.1607897333-1936986696.1607897333
$EndSCHEMATC
