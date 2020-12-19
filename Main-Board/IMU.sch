EESchema Schematic File Version 4
LIBS:Main-Board-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 3
Title "Six Degree of Freedom (DOF) Inertial Measurement Unit (IMU)"
Date "2020-12-15"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2450 4800 0    59   Input ~ 0
IMU_SCL_LL
$Comp
L power:+3.3V #PWR?
U 1 1 5FD9D00C
P 2900 4250
AR Path="/5FD99B6C/5FD9D00C" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9D00C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 4100 50  0001 C CNN
F 1 "+3.3V" H 2915 4423 50  0000 C CNN
F 2 "" H 2900 4250 50  0001 C CNN
F 3 "" H 2900 4250 50  0001 C CNN
	1    2900 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FD9D006
P 3800 4700
AR Path="/5FD99B6C/5FD9D006" Ref="Q?"  Part="1" 
AR Path="/5FD9E07D/5FD9D006" Ref="Q?"  Part="1" 
F 0 "Q?" H 4006 4746 50  0000 L CNN
F 1 "BSS138" H 4006 4655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 4625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 3800 4700 50  0001 L CNN
	1    3800 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2600 6100 2600
Wire Wire Line
	5900 2450 6100 2450
Text GLabel 6100 2600 2    59   Input ~ 0
IMU_SDA_LL
Text GLabel 6100 2450 2    59   Input ~ 0
IMU_SCL_LL
Wire Wire Line
	3400 2150 4900 2150
Wire Wire Line
	3750 2300 4900 2300
Wire Wire Line
	4600 2450 4600 2700
Wire Wire Line
	4900 2450 4600 2450
$Comp
L power:GND #PWR?
U 1 1 5FD9CFF8
P 4600 2700
AR Path="/5FD99B6C/5FD9CFF8" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 2450 50  0001 C CNN
F 1 "GND" H 4605 2527 50  0000 C CNN
F 2 "" H 4600 2700 50  0001 C CNN
F 3 "" H 4600 2700 50  0001 C CNN
	1    4600 2700
	1    0    0    -1  
$EndComp
Text Notes 3150 3150 0    59   ~ 0
AD0 logic low: \nb1101000
Wire Wire Line
	3400 2150 3400 2700
Wire Wire Line
	2650 2000 4900 2000
$Comp
L power:GND #PWR?
U 1 1 5FD9CFEF
P 3400 2700
AR Path="/5FD99B6C/5FD9CFEF" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 2450 50  0001 C CNN
F 1 "GND" H 3405 2527 50  0000 C CNN
F 2 "" H 3400 2700 50  0001 C CNN
F 3 "" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2700 3750 2600
$Comp
L power:GND #PWR?
U 1 1 5FD9CFE8
P 3750 2700
AR Path="/5FD99B6C/5FD9CFE8" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 2450 50  0001 C CNN
F 1 "GND" H 3755 2527 50  0000 C CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2150 7950 2150
Wire Wire Line
	6900 2250 6900 2150
Wire Wire Line
	7950 2150 7950 2250
Connection ~ 7950 2150
Wire Wire Line
	7950 2150 7950 2050
Wire Wire Line
	6900 2650 6900 2550
Wire Wire Line
	7950 2650 7950 2550
Connection ~ 6900 2150
Wire Wire Line
	5900 2150 6900 2150
$Comp
L power:GND #PWR?
U 1 1 5FD9CFD9
P 7950 2650
AR Path="/5FD99B6C/5FD9CFD9" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFD9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 2400 50  0001 C CNN
F 1 "GND" H 7955 2477 50  0000 C CNN
F 2 "" H 7950 2650 50  0001 C CNN
F 3 "" H 7950 2650 50  0001 C CNN
	1    7950 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD9CFD3
P 6900 2650
AR Path="/5FD99B6C/5FD9CFD3" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFD3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 2400 50  0001 C CNN
F 1 "GND" H 6905 2477 50  0000 C CNN
F 2 "" H 6900 2650 50  0001 C CNN
F 3 "" H 6900 2650 50  0001 C CNN
	1    6900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1750 6150 1800
Wire Wire Line
	6000 1750 6150 1750
Wire Wire Line
	6000 2000 6000 1750
Wire Wire Line
	5900 2000 6000 2000
$Comp
L power:+3.3V #PWR?
U 1 1 5FD9CFC9
P 7950 2050
AR Path="/5FD99B6C/5FD9CFC9" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFC9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 1900 50  0001 C CNN
F 1 "+3.3V" H 7965 2223 50  0000 C CNN
F 2 "" H 7950 2050 50  0001 C CNN
F 3 "" H 7950 2050 50  0001 C CNN
	1    7950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 2650 2400
Wire Wire Line
	2650 2100 2650 2000
Connection ~ 2650 2000
Wire Wire Line
	2650 1900 2650 2000
$Comp
L power:GND #PWR?
U 1 1 5FD9CFBF
P 2650 2500
AR Path="/5FD99B6C/5FD9CFBF" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFBF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 2250 50  0001 C CNN
F 1 "GND" H 2655 2327 50  0000 C CNN
F 2 "" H 2650 2500 50  0001 C CNN
F 3 "" H 2650 2500 50  0001 C CNN
	1    2650 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD9CFB9
P 2650 1900
AR Path="/5FD99B6C/5FD9CFB9" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 1750 50  0001 C CNN
F 1 "+3.3V" H 2665 2073 50  0000 C CNN
F 2 "" H 2650 1900 50  0001 C CNN
F 3 "" H 2650 1900 50  0001 C CNN
	1    2650 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD9CFB3
P 2900 4500
AR Path="/5FD99B6C/5FD9CFB3" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFB3" Ref="R?"  Part="1" 
F 0 "R?" V 3107 4500 50  0000 C CNN
F 1 "10 kOhm 5%" V 3016 4500 50  0000 C CNN
F 2 "" V 2830 4500 50  0001 C CNN
F 3 "~" H 2900 4500 50  0001 C CNN
	1    2900 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD9CFAD
P 6150 1800
AR Path="/5FD99B6C/5FD9CFAD" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 1550 50  0001 C CNN
F 1 "GND" H 6155 1627 50  0000 C CNN
F 2 "" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD9CFA7
P 2650 2250
AR Path="/5FD99B6C/5FD9CFA7" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFA7" Ref="C?"  Part="1" 
F 0 "C?" H 2765 2296 50  0000 L CNN
F 1 "X7R, 10nF 10%" H 2765 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 2100 50  0001 C CNN
F 3 "~" H 2650 2250 50  0001 C CNN
	1    2650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD9CFA1
P 6900 2400
AR Path="/5FD99B6C/5FD9CFA1" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FD9CFA1" Ref="C?"  Part="1" 
F 0 "C?" H 7015 2446 50  0000 L CNN
F 1 "X7R, 2.2uF 10%" H 7015 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6938 2250 50  0001 C CNN
F 3 "~" H 6900 2400 50  0001 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD9CF9B
P 7950 2400
AR Path="/5FD99B6C/5FD9CF9B" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FD9CF9B" Ref="C?"  Part="1" 
F 0 "C?" H 8065 2446 50  0000 L CNN
F 1 "X7R, 0.1 uF 10%" H 8065 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7988 2250 50  0001 C CNN
F 3 "~" H 7950 2400 50  0001 C CNN
	1    7950 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD9CF95
P 3750 2450
AR Path="/5FD99B6C/5FD9CF95" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FD9CF95" Ref="C?"  Part="1" 
F 0 "C?" H 3865 2496 50  0000 L CNN
F 1 "X7R, 0.47uF 10%" H 3865 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3788 2300 50  0001 C CNN
F 3 "~" H 3750 2450 50  0001 C CNN
	1    3750 2450
	1    0    0    -1  
$EndComp
$Comp
L Custom:ICM-20689 U?
U 1 1 5FD9CF8F
P 5400 2300
AR Path="/5FD99B6C/5FD9CF8F" Ref="U?"  Part="1" 
AR Path="/5FD9E07D/5FD9CF8F" Ref="U?"  Part="1" 
F 0 "U?" H 5400 2865 50  0000 C CNN
F 1 "ICM-20689" H 5400 2774 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.8x2.8mm" H 5400 1850 50  0001 C CNN
F 3 "https://invensense.tdk.com/download-pdf/icm-20689-datasheet/" H 5400 1850 50  0001 C CNN
F 4 "TDK InvenSense" H 5400 2300 50  0001 C CNN "Manufacturer"
F 5 "ICM-20689" H 5400 2300 50  0001 C CNN "Manufacturer #"
F 6 "1428-1059-1-ND" H 5400 2300 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/tdk-invensense/ICM-20689/5872869" H 5400 2300 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDA5523
P 3350 4500
AR Path="/5FD99B6C/5FDA5523" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FDA5523" Ref="R?"  Part="1" 
F 0 "R?" V 3557 4500 50  0000 C CNN
F 1 "10 kOhm 5%" V 3466 4500 50  0000 C CNN
F 2 "" V 3280 4500 50  0001 C CNN
F 3 "~" H 3350 4500 50  0001 C CNN
	1    3350 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FDA626A
P 3350 4250
AR Path="/5FD99B6C/5FDA626A" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FDA626A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 4100 50  0001 C CNN
F 1 "+3.3V" H 3365 4423 50  0000 C CNN
F 2 "" H 3350 4250 50  0001 C CNN
F 3 "" H 3350 4250 50  0001 C CNN
	1    3350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDA6839
P 4250 4500
AR Path="/5FD99B6C/5FDA6839" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FDA6839" Ref="R?"  Part="1" 
F 0 "R?" V 4457 4500 50  0000 C CNN
F 1 "10 kOhm 5%" V 4366 4500 50  0000 C CNN
F 2 "" V 4180 4500 50  0001 C CNN
F 3 "~" H 4250 4500 50  0001 C CNN
	1    4250 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FDA6B36
P 4250 4250
F 0 "#PWR?" H 4250 4100 50  0001 C CNN
F 1 "+5V" H 4265 4423 50  0000 C CNN
F 2 "" H 4250 4250 50  0001 C CNN
F 3 "" H 4250 4250 50  0001 C CNN
	1    4250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4800 3350 4800
Wire Wire Line
	3350 4800 3350 4650
Wire Wire Line
	4250 4800 4000 4800
Wire Wire Line
	4250 4800 4250 4650
Wire Wire Line
	3350 4350 3350 4300
Wire Wire Line
	3350 4300 3800 4300
Wire Wire Line
	3800 4300 3800 4500
Connection ~ 3350 4300
Wire Wire Line
	3350 4300 3350 4250
Wire Wire Line
	4250 4350 4250 4250
Wire Wire Line
	4250 4800 4500 4800
Connection ~ 4250 4800
Wire Wire Line
	2900 4800 2900 4650
Wire Wire Line
	2900 4800 3350 4800
Connection ~ 3350 4800
Wire Wire Line
	2450 4800 2900 4800
Connection ~ 2900 4800
Wire Wire Line
	2900 4350 2900 4250
$Comp
L power:+3.3V #PWR?
U 1 1 5FDB9369
P 7050 4250
AR Path="/5FD99B6C/5FDB9369" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FDB9369" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 4100 50  0001 C CNN
F 1 "+3.3V" H 7065 4423 50  0000 C CNN
F 2 "" H 7050 4250 50  0001 C CNN
F 3 "" H 7050 4250 50  0001 C CNN
	1    7050 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FDB936F
P 7950 4700
AR Path="/5FD99B6C/5FDB936F" Ref="Q?"  Part="1" 
AR Path="/5FD9E07D/5FDB936F" Ref="Q?"  Part="1" 
F 0 "Q?" H 8156 4746 50  0000 L CNN
F 1 "BSS138" H 8156 4655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8150 4625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 7950 4700 50  0001 L CNN
	1    7950 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FDB9375
P 7050 4500
AR Path="/5FD99B6C/5FDB9375" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FDB9375" Ref="R?"  Part="1" 
F 0 "R?" V 7257 4500 50  0000 C CNN
F 1 "10 kOhm 5%" V 7166 4500 50  0000 C CNN
F 2 "" V 6980 4500 50  0001 C CNN
F 3 "~" H 7050 4500 50  0001 C CNN
	1    7050 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FDB937B
P 7500 4500
AR Path="/5FD99B6C/5FDB937B" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FDB937B" Ref="R?"  Part="1" 
F 0 "R?" V 7707 4500 50  0000 C CNN
F 1 "10 kOhm 5%" V 7616 4500 50  0000 C CNN
F 2 "" V 7430 4500 50  0001 C CNN
F 3 "~" H 7500 4500 50  0001 C CNN
	1    7500 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FDB9381
P 7500 4250
AR Path="/5FD99B6C/5FDB9381" Ref="#PWR?"  Part="1" 
AR Path="/5FD9E07D/5FDB9381" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7500 4100 50  0001 C CNN
F 1 "+3.3V" H 7515 4423 50  0000 C CNN
F 2 "" H 7500 4250 50  0001 C CNN
F 3 "" H 7500 4250 50  0001 C CNN
	1    7500 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDB9387
P 8400 4500
AR Path="/5FD99B6C/5FDB9387" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FDB9387" Ref="R?"  Part="1" 
F 0 "R?" V 8607 4500 50  0000 C CNN
F 1 "10 kOhm 5%" V 8516 4500 50  0000 C CNN
F 2 "" V 8330 4500 50  0001 C CNN
F 3 "~" H 8400 4500 50  0001 C CNN
	1    8400 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FDB938D
P 8400 4250
F 0 "#PWR?" H 8400 4100 50  0001 C CNN
F 1 "+5V" H 8415 4423 50  0000 C CNN
F 2 "" H 8400 4250 50  0001 C CNN
F 3 "" H 8400 4250 50  0001 C CNN
	1    8400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4800 7500 4800
Wire Wire Line
	7500 4800 7500 4650
Wire Wire Line
	8400 4800 8150 4800
Wire Wire Line
	8400 4800 8400 4650
Wire Wire Line
	7500 4350 7500 4300
Wire Wire Line
	7500 4300 7950 4300
Wire Wire Line
	7950 4300 7950 4500
Connection ~ 7500 4300
Wire Wire Line
	7500 4300 7500 4250
Wire Wire Line
	8400 4350 8400 4250
Wire Wire Line
	8400 4800 8650 4800
Connection ~ 8400 4800
Wire Wire Line
	7050 4800 7050 4650
Wire Wire Line
	7050 4800 7500 4800
Connection ~ 7500 4800
Wire Wire Line
	6600 4800 7050 4800
Connection ~ 7050 4800
Wire Wire Line
	7050 4350 7050 4250
Text GLabel 6600 4800 0    59   Input ~ 0
IMU_SDA_LL
Text GLabel 4500 4800 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 8650 4800 2    59   Input ~ 0
IMU_SDA_LH
$EndSCHEMATC
