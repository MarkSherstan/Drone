EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 3
Title "Six Degree of Freedom (DOF) Inertial Measurement Unit (IMU)"
Date "2021-01-01"
Rev "A"
Comp "Mark Sherstan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2350 5250 0    59   Input ~ 0
IMU_SCL_LL
$Comp
L power:+3.3V #PWR034
U 1 1 5FD9D00C
P 2800 4700
AR Path="/5FD99B6C/5FD9D00C" Ref="#PWR034"  Part="1" 
AR Path="/5FD9E07D/5FD9D00C" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 2800 4550 50  0001 C CNN
F 1 "+3.3V" H 2815 4873 50  0000 C CNN
F 2 "" H 2800 4700 50  0001 C CNN
F 3 "" H 2800 4700 50  0001 C CNN
	1    2800 4700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5FD9D006
P 3700 5150
AR Path="/5FD99B6C/5FD9D006" Ref="Q1"  Part="1" 
AR Path="/5FD9E07D/5FD9D006" Ref="Q?"  Part="1" 
F 0 "Q1" V 3951 5150 50  0000 C CNN
F 1 "BSS138" V 4042 5150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3900 5075 50  0001 L CIN
F 3 "" H 3700 5150 50  0001 L CNN
F 4 "ON Semiconductor" H 3700 5150 50  0001 C CNN "Manufacturer"
F 5 "BSS138" H 3700 5150 50  0001 C CNN "Manufacturer #"
F 6 "BSS138CT-ND" H 3700 5150 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/on-semiconductor/BSS138/244210" H 3700 5150 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    3700 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2950 6250 2950
Wire Wire Line
	6050 2800 6250 2800
Text GLabel 6250 2950 2    59   Input ~ 0
IMU_SDA_LL
Text GLabel 6250 2800 2    59   Input ~ 0
IMU_SCL_LL
Wire Wire Line
	4750 2800 4750 3050
Wire Wire Line
	5050 2800 4750 2800
$Comp
L power:GND #PWR039
U 1 1 5FD9CFF8
P 4750 3050
AR Path="/5FD99B6C/5FD9CFF8" Ref="#PWR039"  Part="1" 
AR Path="/5FD9E07D/5FD9CFF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR039" H 4750 2800 50  0001 C CNN
F 1 "GND" H 4755 2877 50  0000 C CNN
F 2 "" H 4750 3050 50  0001 C CNN
F 3 "" H 4750 3050 50  0001 C CNN
	1    4750 3050
	1    0    0    -1  
$EndComp
Text Notes 3050 3500 0    59   ~ 0
AD0 logic low: \nb1101000
Wire Wire Line
	3300 2500 3300 3050
$Comp
L power:GND #PWR036
U 1 1 5FD9CFEF
P 3300 3050
AR Path="/5FD99B6C/5FD9CFEF" Ref="#PWR036"  Part="1" 
AR Path="/5FD9E07D/5FD9CFEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 3300 2800 50  0001 C CNN
F 1 "GND" H 3305 2877 50  0000 C CNN
F 2 "" H 3300 3050 50  0001 C CNN
F 3 "" H 3300 3050 50  0001 C CNN
	1    3300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3050 3700 2950
$Comp
L power:GND #PWR037
U 1 1 5FD9CFE8
P 3700 3050
AR Path="/5FD99B6C/5FD9CFE8" Ref="#PWR037"  Part="1" 
AR Path="/5FD9E07D/5FD9CFE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR037" H 3700 2800 50  0001 C CNN
F 1 "GND" H 3705 2877 50  0000 C CNN
F 2 "" H 3700 3050 50  0001 C CNN
F 3 "" H 3700 3050 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2500 8100 2500
Wire Wire Line
	7050 2600 7050 2500
Wire Wire Line
	8100 2500 8100 2600
Connection ~ 8100 2500
Wire Wire Line
	8100 2500 8100 2400
Wire Wire Line
	7050 3000 7050 2900
Wire Wire Line
	8100 3000 8100 2900
Connection ~ 7050 2500
Wire Wire Line
	6050 2500 7050 2500
$Comp
L power:GND #PWR045
U 1 1 5FD9CFD9
P 8100 3000
AR Path="/5FD99B6C/5FD9CFD9" Ref="#PWR045"  Part="1" 
AR Path="/5FD9E07D/5FD9CFD9" Ref="#PWR?"  Part="1" 
F 0 "#PWR045" H 8100 2750 50  0001 C CNN
F 1 "GND" H 8105 2827 50  0000 C CNN
F 2 "" H 8100 3000 50  0001 C CNN
F 3 "" H 8100 3000 50  0001 C CNN
	1    8100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5FD9CFD3
P 7050 3000
AR Path="/5FD99B6C/5FD9CFD3" Ref="#PWR042"  Part="1" 
AR Path="/5FD9E07D/5FD9CFD3" Ref="#PWR?"  Part="1" 
F 0 "#PWR042" H 7050 2750 50  0001 C CNN
F 1 "GND" H 7055 2827 50  0000 C CNN
F 2 "" H 7050 3000 50  0001 C CNN
F 3 "" H 7050 3000 50  0001 C CNN
	1    7050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2100 6300 2150
Wire Wire Line
	6150 2100 6300 2100
Wire Wire Line
	6150 2350 6150 2100
Wire Wire Line
	6050 2350 6150 2350
$Comp
L power:+3.3V #PWR044
U 1 1 5FD9CFC9
P 8100 2400
AR Path="/5FD99B6C/5FD9CFC9" Ref="#PWR044"  Part="1" 
AR Path="/5FD9E07D/5FD9CFC9" Ref="#PWR?"  Part="1" 
F 0 "#PWR044" H 8100 2250 50  0001 C CNN
F 1 "+3.3V" H 8115 2573 50  0000 C CNN
F 2 "" H 8100 2400 50  0001 C CNN
F 3 "" H 8100 2400 50  0001 C CNN
	1    8100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2850 2300 2750
Wire Wire Line
	2300 2450 2300 2350
Connection ~ 2300 2350
Wire Wire Line
	2300 2250 2300 2350
$Comp
L power:GND #PWR033
U 1 1 5FD9CFBF
P 2300 2850
AR Path="/5FD99B6C/5FD9CFBF" Ref="#PWR033"  Part="1" 
AR Path="/5FD9E07D/5FD9CFBF" Ref="#PWR?"  Part="1" 
F 0 "#PWR033" H 2300 2600 50  0001 C CNN
F 1 "GND" H 2305 2677 50  0000 C CNN
F 2 "" H 2300 2850 50  0001 C CNN
F 3 "" H 2300 2850 50  0001 C CNN
	1    2300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR032
U 1 1 5FD9CFB9
P 2300 2250
AR Path="/5FD99B6C/5FD9CFB9" Ref="#PWR032"  Part="1" 
AR Path="/5FD9E07D/5FD9CFB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 2300 2100 50  0001 C CNN
F 1 "+3.3V" H 2315 2423 50  0000 C CNN
F 2 "" H 2300 2250 50  0001 C CNN
F 3 "" H 2300 2250 50  0001 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5FD9CFB3
P 2800 4950
AR Path="/5FD99B6C/5FD9CFB3" Ref="R8"  Part="1" 
AR Path="/5FD9E07D/5FD9CFB3" Ref="R?"  Part="1" 
F 0 "R8" V 3007 4950 50  0000 C CNN
F 1 "10 kohm 5%" V 2916 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2730 4950 50  0001 C CNN
F 3 "~" H 2800 4950 50  0001 C CNN
	1    2800 4950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5FD9CFAD
P 6300 2150
AR Path="/5FD99B6C/5FD9CFAD" Ref="#PWR040"  Part="1" 
AR Path="/5FD9E07D/5FD9CFAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR040" H 6300 1900 50  0001 C CNN
F 1 "GND" H 6305 1977 50  0000 C CNN
F 2 "" H 6300 2150 50  0001 C CNN
F 3 "" H 6300 2150 50  0001 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FD9CFA7
P 2300 2600
AR Path="/5FD99B6C/5FD9CFA7" Ref="C3"  Part="1" 
AR Path="/5FD9E07D/5FD9CFA7" Ref="C?"  Part="1" 
F 0 "C3" H 2415 2646 50  0000 L CNN
F 1 "10nF 16V X7R 10%" H 2415 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2338 2450 50  0001 C CNN
F 3 "~" H 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FD9CFA1
P 7050 2750
AR Path="/5FD99B6C/5FD9CFA1" Ref="C5"  Part="1" 
AR Path="/5FD9E07D/5FD9CFA1" Ref="C?"  Part="1" 
F 0 "C5" H 7165 2796 50  0000 L CNN
F 1 "2.2uF 16V X7R 10%" H 7165 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7088 2600 50  0001 C CNN
F 3 "~" H 7050 2750 50  0001 C CNN
	1    7050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FD9CF95
P 3700 2800
AR Path="/5FD99B6C/5FD9CF95" Ref="C4"  Part="1" 
AR Path="/5FD9E07D/5FD9CF95" Ref="C?"  Part="1" 
F 0 "C4" H 3815 2846 50  0000 L CNN
F 1 "0.47uF 16V X7R 10%" H 3815 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3738 2650 50  0001 C CNN
F 3 "~" H 3700 2800 50  0001 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L Custom:ICM-20689 U2
U 1 1 5FD9CF8F
P 5550 2650
AR Path="/5FD99B6C/5FD9CF8F" Ref="U2"  Part="1" 
AR Path="/5FD9E07D/5FD9CF8F" Ref="U?"  Part="1" 
F 0 "U2" H 5550 3215 50  0000 C CNN
F 1 "ICM-20689" H 5550 3124 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.8x2.8mm" H 5550 2200 50  0001 C CNN
F 3 "" H 5550 2200 50  0001 C CNN
F 4 "TDK InvenSense" H 5550 2650 50  0001 C CNN "Manufacturer"
F 5 "ICM-20689" H 5550 2650 50  0001 C CNN "Manufacturer #"
F 6 "1428-1059-1-ND" H 5550 2650 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/tdk-invensense/ICM-20689/5872869" H 5550 2650 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5FDA5523
P 3250 4950
AR Path="/5FD99B6C/5FDA5523" Ref="R9"  Part="1" 
AR Path="/5FD9E07D/5FDA5523" Ref="R?"  Part="1" 
F 0 "R9" V 3457 4950 50  0000 C CNN
F 1 "10 kohm 5%" V 3366 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 4950 50  0001 C CNN
F 3 "~" H 3250 4950 50  0001 C CNN
	1    3250 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR035
U 1 1 5FDA626A
P 3250 4700
AR Path="/5FD99B6C/5FDA626A" Ref="#PWR035"  Part="1" 
AR Path="/5FD9E07D/5FDA626A" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 3250 4550 50  0001 C CNN
F 1 "+3.3V" H 3265 4873 50  0000 C CNN
F 2 "" H 3250 4700 50  0001 C CNN
F 3 "" H 3250 4700 50  0001 C CNN
	1    3250 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5FDA6839
P 4150 4950
AR Path="/5FD99B6C/5FDA6839" Ref="R10"  Part="1" 
AR Path="/5FD9E07D/5FDA6839" Ref="R?"  Part="1" 
F 0 "R10" V 4357 4950 50  0000 C CNN
F 1 "10 kohm 5%" V 4266 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4080 4950 50  0001 C CNN
F 3 "~" H 4150 4950 50  0001 C CNN
	1    4150 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR038
U 1 1 5FDA6B36
P 4150 4700
F 0 "#PWR038" H 4150 4550 50  0001 C CNN
F 1 "+5V" H 4165 4873 50  0000 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5250 3250 5250
Wire Wire Line
	3250 5250 3250 5100
Wire Wire Line
	4150 5250 3900 5250
Wire Wire Line
	4150 5250 4150 5100
Wire Wire Line
	3250 4800 3250 4750
Wire Wire Line
	3250 4750 3700 4750
Wire Wire Line
	3700 4750 3700 4950
Connection ~ 3250 4750
Wire Wire Line
	3250 4750 3250 4700
Wire Wire Line
	4150 4800 4150 4700
Wire Wire Line
	4150 5250 4400 5250
Connection ~ 4150 5250
Wire Wire Line
	2800 5250 2800 5100
Wire Wire Line
	2800 5250 3250 5250
Connection ~ 3250 5250
Wire Wire Line
	2350 5250 2800 5250
Connection ~ 2800 5250
Wire Wire Line
	2800 4800 2800 4700
$Comp
L power:+3.3V #PWR041
U 1 1 5FDB9369
P 6950 4700
AR Path="/5FD99B6C/5FDB9369" Ref="#PWR041"  Part="1" 
AR Path="/5FD9E07D/5FDB9369" Ref="#PWR?"  Part="1" 
F 0 "#PWR041" H 6950 4550 50  0001 C CNN
F 1 "+3.3V" H 6965 4873 50  0000 C CNN
F 2 "" H 6950 4700 50  0001 C CNN
F 3 "" H 6950 4700 50  0001 C CNN
	1    6950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5FDB9375
P 6950 4950
AR Path="/5FD99B6C/5FDB9375" Ref="R11"  Part="1" 
AR Path="/5FD9E07D/5FDB9375" Ref="R?"  Part="1" 
F 0 "R11" V 7157 4950 50  0000 C CNN
F 1 "10 kohm 5%" V 7066 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6880 4950 50  0001 C CNN
F 3 "~" H 6950 4950 50  0001 C CNN
	1    6950 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5FDB937B
P 7400 4950
AR Path="/5FD99B6C/5FDB937B" Ref="R12"  Part="1" 
AR Path="/5FD9E07D/5FDB937B" Ref="R?"  Part="1" 
F 0 "R12" V 7607 4950 50  0000 C CNN
F 1 "10 kohm 5%" V 7516 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7330 4950 50  0001 C CNN
F 3 "~" H 7400 4950 50  0001 C CNN
	1    7400 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR043
U 1 1 5FDB9381
P 7400 4700
AR Path="/5FD99B6C/5FDB9381" Ref="#PWR043"  Part="1" 
AR Path="/5FD9E07D/5FDB9381" Ref="#PWR?"  Part="1" 
F 0 "#PWR043" H 7400 4550 50  0001 C CNN
F 1 "+3.3V" H 7415 4873 50  0000 C CNN
F 2 "" H 7400 4700 50  0001 C CNN
F 3 "" H 7400 4700 50  0001 C CNN
	1    7400 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5FDB9387
P 8300 4950
AR Path="/5FD99B6C/5FDB9387" Ref="R13"  Part="1" 
AR Path="/5FD9E07D/5FDB9387" Ref="R?"  Part="1" 
F 0 "R13" V 8507 4950 50  0000 C CNN
F 1 "10 kohm 5%" V 8416 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8230 4950 50  0001 C CNN
F 3 "~" H 8300 4950 50  0001 C CNN
	1    8300 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR046
U 1 1 5FDB938D
P 8300 4700
F 0 "#PWR046" H 8300 4550 50  0001 C CNN
F 1 "+5V" H 8315 4873 50  0000 C CNN
F 2 "" H 8300 4700 50  0001 C CNN
F 3 "" H 8300 4700 50  0001 C CNN
	1    8300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5250 7400 5250
Wire Wire Line
	7400 5250 7400 5100
Wire Wire Line
	8300 5250 8050 5250
Wire Wire Line
	8300 5250 8300 5100
Wire Wire Line
	7400 4800 7400 4750
Wire Wire Line
	7400 4750 7850 4750
Wire Wire Line
	7850 4750 7850 4950
Connection ~ 7400 4750
Wire Wire Line
	7400 4750 7400 4700
Wire Wire Line
	8300 4800 8300 4700
Wire Wire Line
	8300 5250 8550 5250
Connection ~ 8300 5250
Wire Wire Line
	6950 5250 6950 5100
Wire Wire Line
	6950 5250 7400 5250
Connection ~ 7400 5250
Wire Wire Line
	6500 5250 6950 5250
Connection ~ 6950 5250
Wire Wire Line
	6950 4800 6950 4700
Text GLabel 6500 5250 0    59   Input ~ 0
IMU_SDA_LL
Text GLabel 4400 5250 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 8550 5250 2    59   Input ~ 0
IMU_SDA_LH
$Comp
L Device:C C6
U 1 1 6001E3D4
P 8100 2750
AR Path="/5FD99B6C/6001E3D4" Ref="C6"  Part="1" 
AR Path="/5FD9E07D/6001E3D4" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6001E3D4" Ref="C?"  Part="1" 
AR Path="/6001E3D4" Ref="C?"  Part="1" 
F 0 "C6" H 8250 2700 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 8250 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8138 2600 50  0001 C CNN
F 3 "~" H 8100 2750 50  0001 C CNN
	1    8100 2750
	1    0    0    1   
$EndComp
Wire Wire Line
	3700 2650 5050 2650
Wire Wire Line
	2300 2350 5050 2350
Wire Wire Line
	3300 2500 5050 2500
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 60033880
P 7850 5150
AR Path="/5FD99B6C/60033880" Ref="Q2"  Part="1" 
AR Path="/5FD9E07D/60033880" Ref="Q?"  Part="1" 
F 0 "Q2" V 8101 5150 50  0000 C CNN
F 1 "BSS138" V 8192 5150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8050 5075 50  0001 L CIN
F 3 "" H 7850 5150 50  0001 L CNN
F 4 "ON Semiconductor" H 7850 5150 50  0001 C CNN "Manufacturer"
F 5 "BSS138" H 7850 5150 50  0001 C CNN "Manufacturer #"
F 6 "BSS138CT-ND" H 7850 5150 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/on-semiconductor/BSS138/244210" H 7850 5150 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7850 5150
	0    1    1    0   
$EndComp
Text Notes 4650 1800 0    79   ~ 16
Inertial Measurement Unit (IMU)
Text Notes 3750 4300 0    79   ~ 16
Bidirectional Logic Level Conversion and I2C Pull Up Resistors
$EndSCHEMATC
