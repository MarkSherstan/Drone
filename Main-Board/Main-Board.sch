EESchema Schematic File Version 4
LIBS:Main-Board-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Master Sheet"
Date "2020-12-19"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7550 750  0    79   ~ 16
Power In and Voltage Monitoring
$Sheet
S 1350 1050 1400 450 
U 5FD99B6C
F0 "IMU" 50
F1 "IMU.sch" 50
$EndSheet
$Sheet
S 3450 1050 1400 450 
U 5FDD4B9C
F0 "Microcontroller" 50
F1 "Microcontroller.sch" 50
$EndSheet
$Comp
L power:VDD #PWR?
U 1 1 60059FB0
P 7400 1950
AR Path="/5FDD4B9C/60059FB0" Ref="#PWR?"  Part="1" 
AR Path="/60059FB0" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7400 1800 50  0001 C CNN
F 1 "VDD" H 7417 2123 50  0000 C CNN
F 2 "" H 7400 1950 50  0001 C CNN
F 3 "" H 7400 1950 50  0001 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6005B104
P 7400 2250
F 0 "#PWR0102" H 7400 2000 50  0001 C CNN
F 1 "GND" H 7405 2077 50  0000 C CNN
F 2 "" H 7400 2250 50  0001 C CNN
F 3 "" H 7400 2250 50  0001 C CNN
	1    7400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2250 7250 2250
Wire Wire Line
	7200 1950 7250 1950
$Comp
L power:VDD #PWR?
U 1 1 6005BC3C
P 8200 1450
AR Path="/5FDD4B9C/6005BC3C" Ref="#PWR?"  Part="1" 
AR Path="/6005BC3C" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 8200 1300 50  0001 C CNN
F 1 "VDD" H 8217 1623 50  0000 C CNN
F 2 "" H 8200 1450 50  0001 C CNN
F 3 "" H 8200 1450 50  0001 C CNN
	1    8200 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6005CA0F
P 8200 1800
AR Path="/5FD99B6C/6005CA0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6005CA0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/6005CA0F" Ref="R?"  Part="1" 
AR Path="/6005CA0F" Ref="R1"  Part="1" 
F 0 "R1" V 8407 1800 50  0000 C CNN
F 1 "3.2 kohm 1%" V 8316 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8130 1800 50  0001 C CNN
F 3 "~" H 8200 1800 50  0001 C CNN
	1    8200 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6005CE27
P 8200 2400
AR Path="/5FD99B6C/6005CE27" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6005CE27" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/6005CE27" Ref="R?"  Part="1" 
AR Path="/6005CE27" Ref="R2"  Part="1" 
F 0 "R2" V 8407 2400 50  0000 C CNN
F 1 "2 kohm 1%" V 8316 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8130 2400 50  0001 C CNN
F 3 "~" H 8200 2400 50  0001 C CNN
	1    8200 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6005DA0E
P 8200 2850
F 0 "#PWR0104" H 8200 2600 50  0001 C CNN
F 1 "GND" H 8205 2677 50  0000 C CNN
F 2 "" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1450 8200 1650
$Comp
L Device:R R?
U 1 1 60061C0F
P 8600 4150
AR Path="/5FD99B6C/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60061C0F" Ref="R?"  Part="1" 
AR Path="/60061C0F" Ref="R3"  Part="1" 
F 0 "R3" V 8807 4150 50  0000 C CNN
F 1 "87.5 ohm 5%" V 8716 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4150 50  0001 C CNN
F 3 "~" H 8600 4150 50  0001 C CNN
	1    8600 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 600625FC
P 8600 4550
AR Path="/5FD99B6C/600625FC" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/600625FC" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/600625FC" Ref="R?"  Part="1" 
AR Path="/600625FC" Ref="R4"  Part="1" 
F 0 "R4" V 8807 4550 50  0000 C CNN
F 1 "147.5 ohm 5%" V 8716 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4550 50  0001 C CNN
F 3 "~" H 8600 4550 50  0001 C CNN
	1    8600 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60062A76
P 8600 4950
AR Path="/5FD99B6C/60062A76" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60062A76" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60062A76" Ref="R?"  Part="1" 
AR Path="/60062A76" Ref="R5"  Part="1" 
F 0 "R5" V 8807 4950 50  0000 C CNN
F 1 "87.5 ohm 5%" V 8716 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4950 50  0001 C CNN
F 3 "~" H 8600 4950 50  0001 C CNN
	1    8600 4950
	0    1    1    0   
$EndComp
Text Notes 1550 750  0    79   ~ 16
Microcontroller and Inertial Measurement Unit (IMU)
$Comp
L power:+5V #PWR0105
U 1 1 6007601B
P 8950 1200
F 0 "#PWR0105" H 8950 1050 50  0001 C CNN
F 1 "+5V" H 8965 1373 50  0000 C CNN
F 2 "" H 8950 1200 50  0001 C CNN
F 3 "" H 8950 1200 50  0001 C CNN
	1    8950 1200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6001U U1
U 1 1 6007878C
P 9050 2200
F 0 "U1" H 9050 2450 50  0000 L CNN
F 1 "MCP6001U" H 9050 2350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9050 2200 50  0001 L CNN
F 3 "" H 9050 2200 50  0001 C CNN
F 4 "https://www.digikey.ca/en/products/detail/microchip-technology/MCP6001UT-I-OT/562450" H 9050 2200 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
F 5 "Microchip Technology" H 9050 2200 50  0001 C CNN "Manufacturer"
F 6 "MCP6001UT-I/OT" H 9050 2200 50  0001 C CNN "Manufacturer #"
F 7 "MCP6001UT-I/OTCT-ND" H 9050 2200 50  0001 C CNN "Digi-Key #"
	1    9050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6007A77A
P 9800 1750
AR Path="/5FD99B6C/6007A77A" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6007A77A" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6007A77A" Ref="C?"  Part="1" 
AR Path="/6007A77A" Ref="C1"  Part="1" 
F 0 "C1" V 9950 1700 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" V 10050 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9838 1600 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6007DC43
P 8950 2500
F 0 "#PWR0107" H 8950 2250 50  0001 C CNN
F 1 "GND" H 8955 2327 50  0000 C CNN
F 2 "" H 8950 2500 50  0001 C CNN
F 3 "" H 8950 2500 50  0001 C CNN
	1    8950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2850 9350 2850
Wire Wire Line
	8750 2100 8200 2100
Connection ~ 8200 2100
Wire Wire Line
	8200 2100 8200 2250
Wire Wire Line
	8200 1950 8200 2100
Wire Wire Line
	8200 2550 8200 2850
Wire Wire Line
	8750 2300 8750 2850
Wire Wire Line
	9350 2200 9350 2850
Text Notes 2750 2200 0    79   ~ 16
Pin Mapping
Text GLabel 1000 2450 0    50   Input ~ 0
A0
Text GLabel 2350 2450 2    50   Input ~ 0
Battery_Monitor
Text GLabel 9600 2200 2    50   Input ~ 0
Battery_Monitor
Wire Wire Line
	9350 2200 9600 2200
Connection ~ 9350 2200
Text GLabel 2350 2700 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 2350 2850 2    59   Input ~ 0
IMU_SDA_LH
Text GLabel 1000 2700 0    50   Input ~ 0
A5_SCL
Text GLabel 1000 2850 0    50   Input ~ 0
A4_SDA
Text Notes 7900 3800 0    79   ~ 16
Master Indicator LED
Text Notes 2500 4850 0    79   ~ 16
ESC and Light Connections
$Comp
L Custom:LED_RGB D1
U 1 1 6009D7CE
P 7850 4550
F 0 "D1" H 7850 5047 50  0000 C CNN
F 1 "LED_RGB" H 7850 4956 50  0000 C CNN
F 2 "Custom:RGB_LED" H 7850 4500 50  0001 C CNN
F 3 "~" H 7850 4500 50  0001 C CNN
F 4 "Everlight Electronics Co Ltd" H 7850 4550 50  0001 C CNN "Manufacturer"
F 5 "EAST1616RGBA4" H 7850 4550 50  0001 C CNN "Manufacturer #"
F 6 "1080-EAST1616RGBA4CT-ND" H 7850 4550 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/everlight-electronics-co-ltd/EAST1616RGBA4/11200796" H 7850 4550 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7850 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 600A2F32
P 7250 4550
F 0 "#PWR0108" H 7250 4300 50  0001 C CNN
F 1 "GND" H 7255 4377 50  0000 C CNN
F 2 "" H 7250 4550 50  0001 C CNN
F 3 "" H 7250 4550 50  0001 C CNN
	1    7250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 7550 4350
Wire Wire Line
	7550 4350 7550 4550
Wire Wire Line
	7550 4550 7650 4550
Wire Wire Line
	7650 4750 7550 4750
Wire Wire Line
	7550 4750 7550 4550
Connection ~ 7550 4550
Wire Wire Line
	8050 4350 8200 4350
Wire Wire Line
	8200 4350 8200 4150
Wire Wire Line
	8200 4950 8200 4750
Wire Wire Line
	8200 4750 8050 4750
Text GLabel 9000 4550 2    50   Input ~ 0
R_RGB_LED
Text GLabel 9000 4150 2    50   Input ~ 0
B_RGB_LED
Text GLabel 9000 4950 2    50   Input ~ 0
G_RGB_LED
Text GLabel 2350 3100 2    50   Input ~ 0
R_RGB_LED
Text GLabel 2350 3400 2    50   Input ~ 0
B_RGB_LED
Text GLabel 2350 3250 2    50   Input ~ 0
G_RGB_LED
Wire Wire Line
	7250 4550 7550 4550
Wire Wire Line
	8200 4150 8450 4150
Wire Wire Line
	8750 4150 9000 4150
Wire Wire Line
	9000 4550 8750 4550
Wire Wire Line
	9000 4950 8750 4950
Wire Wire Line
	8200 4950 8450 4950
Wire Wire Line
	8050 4550 8450 4550
Text GLabel 1000 3650 0    50   Input ~ 0
D4
Text GLabel 1000 3800 0    50   Input ~ 0
D5
Text GLabel 1000 3950 0    50   Input ~ 0
D6
Text GLabel 1000 4100 0    50   Input ~ 0
D7
Text GLabel 2350 3650 2    50   Input ~ 0
ESC_1
Text GLabel 2350 3800 2    50   Input ~ 0
ESC_2
Text GLabel 2350 3950 2    50   Input ~ 0
ESC_3
Text GLabel 2350 4100 2    50   Input ~ 0
ESC_4
Wire Wire Line
	1000 3650 2350 3650
Wire Wire Line
	2350 3800 1000 3800
Wire Wire Line
	1000 3950 2350 3950
Wire Wire Line
	2350 4100 1000 4100
Text GLabel 5200 2450 2    50   Input ~ 0
Receiver_1
Text GLabel 5200 2600 2    50   Input ~ 0
Receiver_2
Text GLabel 5200 2750 2    50   Input ~ 0
Receiver_3
Text GLabel 5200 2900 2    50   Input ~ 0
Receiver_4
Text GLabel 3850 2450 0    50   Input ~ 0
D8
Text GLabel 3850 2600 0    50   Input ~ 0
D9
Text GLabel 3850 2750 0    50   Input ~ 0
D10
Text GLabel 3850 2900 0    50   Input ~ 0
D11
Wire Wire Line
	3850 2450 5200 2450
Wire Wire Line
	5200 2600 3850 2600
Wire Wire Line
	3850 2750 5200 2750
Wire Wire Line
	5200 2900 3850 2900
Text GLabel 1000 3100 0    50   Input ~ 0
D1
Text GLabel 1000 3250 0    50   Input ~ 0
D2
Wire Wire Line
	1000 3100 2350 3100
Wire Wire Line
	2350 3250 1000 3250
Wire Wire Line
	2350 3400 1000 3400
Wire Wire Line
	1000 2700 2350 2700
Wire Wire Line
	1000 2850 2350 2850
Wire Wire Line
	1000 2450 2350 2450
Text GLabel 5200 3300 2    50   Input ~ 0
Light_1
Text GLabel 5200 3450 2    50   Input ~ 0
Light_2
Text GLabel 5200 3600 2    50   Input ~ 0
Light_3
Text GLabel 5200 3750 2    50   Input ~ 0
Light_4
Text GLabel 3850 3300 0    50   Input ~ 0
A1
Text GLabel 3850 3450 0    50   Input ~ 0
A2
Text GLabel 3850 3600 0    50   Input ~ 0
A3
Text GLabel 3850 3750 0    50   Input ~ 0
A4
Wire Wire Line
	3850 3300 5200 3300
Wire Wire Line
	5200 3450 3850 3450
Wire Wire Line
	3850 3600 5200 3600
Wire Wire Line
	5200 3750 3850 3750
Text GLabel 1850 5550 2    50   Input ~ 0
Light_1
Text GLabel 3450 5550 2    50   Input ~ 0
Light_2
Text GLabel 5050 5550 2    50   Input ~ 0
Light_3
Text GLabel 6700 5550 2    50   Input ~ 0
Light_4
$Comp
L power:GND #PWR0109
U 1 1 600E6A1E
P 4300 5650
F 0 "#PWR0109" H 4300 5400 50  0001 C CNN
F 1 "GND" H 4305 5477 50  0000 C CNN
F 2 "" H 4300 5650 50  0001 C CNN
F 3 "" H 4300 5650 50  0001 C CNN
	1    4300 5650
	1    0    0    -1  
$EndComp
Text GLabel 1100 5450 2    50   Input ~ 0
ESC_1
Text GLabel 2700 5450 2    50   Input ~ 0
ESC_2
Text GLabel 4300 5450 2    50   Input ~ 0
ESC_3
Text GLabel 5950 5450 2    50   Input ~ 0
ESC_4
$Comp
L power:+5V #PWR0110
U 1 1 600F7869
P 4300 5350
F 0 "#PWR0110" H 4300 5200 50  0001 C CNN
F 1 "+5V" H 4315 5523 50  0000 C CNN
F 2 "" H 4300 5350 50  0001 C CNN
F 3 "" H 4300 5350 50  0001 C CNN
	1    4300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5650 4300 5650
Wire Wire Line
	4150 5350 4300 5350
$Comp
L power:GND #PWR0111
U 1 1 6010C038
P 5950 5650
F 0 "#PWR0111" H 5950 5400 50  0001 C CNN
F 1 "GND" H 5955 5477 50  0000 C CNN
F 2 "" H 5950 5650 50  0001 C CNN
F 3 "" H 5950 5650 50  0001 C CNN
	1    5950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5650 5950 5650
$Comp
L power:GND #PWR0112
U 1 1 6010E54B
P 2700 5650
F 0 "#PWR0112" H 2700 5400 50  0001 C CNN
F 1 "GND" H 2705 5477 50  0000 C CNN
F 2 "" H 2700 5650 50  0001 C CNN
F 3 "" H 2700 5650 50  0001 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5650 2700 5650
$Comp
L power:GND #PWR0113
U 1 1 6010F938
P 1100 5650
F 0 "#PWR0113" H 1100 5400 50  0001 C CNN
F 1 "GND" H 1105 5477 50  0000 C CNN
F 2 "" H 1100 5650 50  0001 C CNN
F 3 "" H 1100 5650 50  0001 C CNN
	1    1100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5650 1100 5650
Wire Wire Line
	4300 5450 4150 5450
$Comp
L power:+5V #PWR0114
U 1 1 60118F2B
P 5950 5350
F 0 "#PWR0114" H 5950 5200 50  0001 C CNN
F 1 "+5V" H 5965 5523 50  0000 C CNN
F 2 "" H 5950 5350 50  0001 C CNN
F 3 "" H 5950 5350 50  0001 C CNN
	1    5950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5350 5950 5350
$Comp
L power:+5V #PWR0115
U 1 1 6011A5D9
P 2700 5350
F 0 "#PWR0115" H 2700 5200 50  0001 C CNN
F 1 "+5V" H 2715 5523 50  0000 C CNN
F 2 "" H 2700 5350 50  0001 C CNN
F 3 "" H 2700 5350 50  0001 C CNN
	1    2700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5350 2700 5350
$Comp
L power:+5V #PWR0116
U 1 1 6011BFD6
P 1100 5350
F 0 "#PWR0116" H 1100 5200 50  0001 C CNN
F 1 "+5V" H 1115 5523 50  0000 C CNN
F 2 "" H 1100 5350 50  0001 C CNN
F 3 "" H 1100 5350 50  0001 C CNN
	1    1100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5350 1100 5350
Wire Wire Line
	1100 5450 950  5450
Wire Wire Line
	2700 5450 2550 5450
Wire Wire Line
	5950 5450 5800 5450
$Comp
L Mechanical:MountingHole H1
U 1 1 5FDEB61F
P 7900 6300
F 0 "H1" H 8000 6346 50  0000 L CNN
F 1 "M2" H 8000 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 7900 6300 50  0001 C CNN
F 3 "~" H 7900 6300 50  0001 C CNN
	1    7900 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FDEDAAD
P 8300 6300
F 0 "H2" H 8400 6346 50  0000 L CNN
F 1 "M2" H 8400 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 8300 6300 50  0001 C CNN
F 3 "~" H 8300 6300 50  0001 C CNN
	1    8300 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FDEF850
P 8650 6300
F 0 "H3" H 8750 6346 50  0000 L CNN
F 1 "M2" H 8750 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 8650 6300 50  0001 C CNN
F 3 "~" H 8650 6300 50  0001 C CNN
	1    8650 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FDF1549
P 9000 6300
F 0 "H4" H 9100 6346 50  0000 L CNN
F 1 "M2" H 9100 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 9000 6300 50  0001 C CNN
F 3 "~" H 9000 6300 50  0001 C CNN
	1    9000 6300
	1    0    0    -1  
$EndComp
Text Notes 8050 6000 0    79   ~ 16
Mounting Holes
Text Notes 7350 900  0    59   ~ 0
Voltage monitoring range: Up to 13V (3s LiPo 12.6V) 
$Comp
L Device:C C?
U 1 1 5FE12F4E
P 9450 1350
AR Path="/5FD99B6C/5FE12F4E" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FE12F4E" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FE12F4E" Ref="C?"  Part="1" 
AR Path="/5FE12F4E" Ref="C17"  Part="1" 
F 0 "C17" V 9600 1300 50  0000 L CNN
F 1 "1uF 16V X7R 20%" V 9700 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9488 1200 50  0001 C CNN
F 3 "~" H 9450 1350 50  0001 C CNN
	1    9450 1350
	0    1    -1   0   
$EndComp
Wire Wire Line
	9300 1350 8950 1350
Wire Wire Line
	8950 1200 8950 1350
Connection ~ 8950 1350
Wire Wire Line
	9650 1750 8950 1750
Wire Wire Line
	8950 1350 8950 1750
Connection ~ 8950 1750
Wire Wire Line
	8950 1750 8950 1900
$Comp
L power:GND #PWR0106
U 1 1 5FE2F38B
P 10350 1350
F 0 "#PWR0106" H 10350 1100 50  0001 C CNN
F 1 "GND" H 10355 1177 50  0000 C CNN
F 2 "" H 10350 1350 50  0001 C CNN
F 3 "" H 10350 1350 50  0001 C CNN
	1    10350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1350 10350 1350
$Comp
L power:GND #PWR0160
U 1 1 5FE330F9
P 10150 1750
F 0 "#PWR0160" H 10150 1500 50  0001 C CNN
F 1 "GND" H 10155 1577 50  0000 C CNN
F 2 "" H 10150 1750 50  0001 C CNN
F 3 "" H 10150 1750 50  0001 C CNN
	1    10150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1750 10150 1750
Text Label 1350 2450 0    50   ~ 0
Battery_Monitor
Text Label 1550 2700 0    50   ~ 0
SCL
Text Label 1550 2850 0    50   ~ 0
SDA
Text Label 1450 3100 0    50   ~ 0
R_RGB_LED
Text Label 1450 3250 0    50   ~ 0
G_RGB_LED
Text Label 1450 3400 0    50   ~ 0
B_RGB_LED
Text Label 1500 3650 0    50   ~ 0
ESC_1
Text Label 1500 3800 0    50   ~ 0
ESC_2
Text Label 1500 3950 0    50   ~ 0
ESC_3
Text Label 1500 4100 0    50   ~ 0
ESC_4
Text Notes 1700 6500 0    79   ~ 16
Receiver
Text GLabel 1950 7300 2    50   Input ~ 0
Receiver_1
Text GLabel 1950 7400 2    50   Input ~ 0
Receiver_2
Text GLabel 1950 7100 2    50   Input ~ 0
Receiver_3
Text GLabel 1950 7200 2    50   Input ~ 0
Receiver_4
$Comp
L power:+5V #PWR0161
U 1 1 5FE81BA9
P 1950 6850
F 0 "#PWR0161" H 1950 6700 50  0001 C CNN
F 1 "+5V" H 1965 7023 50  0000 C CNN
F 2 "" H 1950 6850 50  0001 C CNN
F 3 "" H 1950 6850 50  0001 C CNN
	1    1950 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5FE821AC
P 1950 7500
F 0 "#PWR0162" H 1950 7250 50  0001 C CNN
F 1 "GND" H 1955 7327 50  0000 C CNN
F 2 "" H 1950 7500 50  0001 C CNN
F 3 "" H 1950 7500 50  0001 C CNN
	1    1950 7500
	1    0    0    -1  
$EndComp
Text GLabel 3850 3050 0    50   Input ~ 0
D12
Text GLabel 5200 3050 2    50   Input ~ 0
Receiver_5
Wire Wire Line
	3850 3050 5200 3050
Text GLabel 1000 3400 0    50   Input ~ 0
D3
Text Label 4350 2450 0    50   ~ 0
Receiver_1
Text Label 4350 2600 0    50   ~ 0
Receiver_2
Text Label 4350 2750 0    50   ~ 0
Receiver_3
Text Label 4350 2900 0    50   ~ 0
Receiver_4
Text Label 4350 3050 0    50   ~ 0
Receiver_5
Text Label 4350 3300 0    50   ~ 0
Light_1
Text Label 4350 3450 0    50   ~ 0
Light_2
Text Label 4350 3600 0    50   ~ 0
Light_3
Text Label 4350 3750 0    50   ~ 0
Light_4
Text GLabel 1950 7000 2    50   Input ~ 0
Receiver_5
Wire Wire Line
	1750 7500 1950 7500
Wire Wire Line
	1750 6900 1950 6900
Wire Wire Line
	1950 6900 1950 6850
Wire Wire Line
	1750 7300 1950 7300
Wire Wire Line
	1750 7400 1950 7400
Wire Wire Line
	1950 7100 1750 7100
Wire Wire Line
	1750 7200 1950 7200
Wire Wire Line
	1950 7000 1750 7000
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5FF21CF7
P 7000 2150
F 0 "J1" H 6918 1725 50  0000 C CNN
F 1 "Power_In" H 6918 1816 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 7000 2150 50  0001 C CNN
F 3 "~" H 7000 2150 50  0001 C CNN
F 4 "JST Sales America Inc." H 7000 2150 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 7000 2150 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 7000 2150 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 7000 2150 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7000 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2150 7250 2150
Wire Wire Line
	7250 2150 7250 2250
Connection ~ 7250 2250
Wire Wire Line
	7250 2250 7400 2250
Wire Wire Line
	7200 2050 7250 2050
Wire Wire Line
	7250 2050 7250 1950
Connection ~ 7250 1950
Wire Wire Line
	7250 1950 7400 1950
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5FF39D20
P 750 5550
F 0 "J2" H 668 5125 50  0000 C CNN
F 1 "ESC_1" H 668 5216 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 750 5550 50  0001 C CNN
F 3 "~" H 750 5550 50  0001 C CNN
F 4 "JST Sales America Inc." H 750 5550 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 750 5550 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 750 5550 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 750 5550 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    750  5550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5FF3CDD3
P 2350 5550
F 0 "J3" H 2268 5125 50  0000 C CNN
F 1 "ESC_2" H 2268 5216 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 2350 5550 50  0001 C CNN
F 3 "~" H 2350 5550 50  0001 C CNN
F 4 "JST Sales America Inc." H 2350 5550 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 2350 5550 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 2350 5550 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 2350 5550 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2350 5550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FF3FCD3
P 3950 5550
F 0 "J4" H 3868 5125 50  0000 C CNN
F 1 "ESC_3" H 3868 5216 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 3950 5550 50  0001 C CNN
F 3 "~" H 3950 5550 50  0001 C CNN
F 4 "JST Sales America Inc." H 3950 5550 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 3950 5550 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 3950 5550 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 3950 5550 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    3950 5550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5FF42AAC
P 5600 5550
F 0 "J5" H 5518 5125 50  0000 C CNN
F 1 "ESC_4" H 5518 5216 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 5600 5550 50  0001 C CNN
F 3 "~" H 5600 5550 50  0001 C CNN
F 4 "JST Sales America Inc." H 5600 5550 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 5600 5550 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 5600 5550 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 5600 5550 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    5600 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF61587
P 1600 5550
AR Path="/5FD99B6C/5FF61587" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FF61587" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/5FF61587" Ref="R?"  Part="1" 
AR Path="/5FF61587" Ref="R20"  Part="1" 
F 0 "R20" V 1807 5550 50  0000 C CNN
F 1 "?? ohm 5%" V 1716 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1530 5550 50  0001 C CNN
F 3 "~" H 1600 5550 50  0001 C CNN
	1    1600 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	950  5550 1450 5550
Wire Wire Line
	1750 5550 1850 5550
$Comp
L Device:R R?
U 1 1 5FF823F7
P 3200 5550
AR Path="/5FD99B6C/5FF823F7" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FF823F7" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/5FF823F7" Ref="R?"  Part="1" 
AR Path="/5FF823F7" Ref="R21"  Part="1" 
F 0 "R21" V 3407 5550 50  0000 C CNN
F 1 "?? ohm 5%" V 3316 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3130 5550 50  0001 C CNN
F 3 "~" H 3200 5550 50  0001 C CNN
	1    3200 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 5550 3050 5550
Wire Wire Line
	3350 5550 3450 5550
$Comp
L Device:R R?
U 1 1 5FF881F5
P 4800 5550
AR Path="/5FD99B6C/5FF881F5" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FF881F5" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/5FF881F5" Ref="R?"  Part="1" 
AR Path="/5FF881F5" Ref="R22"  Part="1" 
F 0 "R22" V 5007 5550 50  0000 C CNN
F 1 "?? ohm 5%" V 4916 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 5550 50  0001 C CNN
F 3 "~" H 4800 5550 50  0001 C CNN
	1    4800 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 5550 4650 5550
Wire Wire Line
	4950 5550 5050 5550
$Comp
L Device:R R?
U 1 1 5FF914A7
P 6450 5550
AR Path="/5FD99B6C/5FF914A7" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FF914A7" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/5FF914A7" Ref="R?"  Part="1" 
AR Path="/5FF914A7" Ref="R23"  Part="1" 
F 0 "R23" V 6657 5550 50  0000 C CNN
F 1 "?? ohm 5%" V 6566 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6380 5550 50  0001 C CNN
F 3 "~" H 6450 5550 50  0001 C CNN
	1    6450 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5550 6300 5550
Wire Wire Line
	6600 5550 6700 5550
$Comp
L Connector_Generic:Conn_01x07 J8
U 1 1 5FF977CD
P 1550 7200
F 0 "J8" H 1468 6675 50  0000 C CNN
F 1 "Receiver" H 1468 6766 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM07B-GHS-TBT_1x07-1MP_P1.25mm_Vertical" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
F 4 "JST Sales America Inc." H 1550 7200 50  0001 C CNN "Manufacturer"
F 5 "BM07B-GHS-TBT(LF)(SN)(N)" H 1550 7200 50  0001 C CNN "Manufacturer #"
F 6 "455-1583-1-ND" H 1550 7200 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM07B-GHS-TBT-LF-SN-N/807805?s=N4IgTCBcDaIEIFkAMB2OBaA4gCQMroBU4CQBdAXyA" H 1550 7200 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    1550 7200
	-1   0    0    1   
$EndComp
Text Notes 4400 6500 0    79   ~ 16
Aux Outputs
Text GLabel 3850 4000 0    50   Input ~ 0
D13
Text GLabel 3850 4150 0    50   Input ~ 0
A6
Text GLabel 5200 4000 2    50   Input ~ 0
Aux_Digital
Text GLabel 5200 4150 2    50   Input ~ 0
Aux_Analog
Wire Wire Line
	3850 4000 5200 4000
Wire Wire Line
	5200 4150 3850 4150
Text Label 4300 4000 0    50   ~ 0
Aux_Digital
Text Label 4300 4150 0    50   ~ 0
Aux_Analog
Text GLabel 4800 7150 2    50   Input ~ 0
Aux_Digital
Text GLabel 4800 7250 2    50   Input ~ 0
Aux_Analog
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 5FFD0529
P 4400 7250
F 0 "J9" H 4318 6825 50  0000 C CNN
F 1 "Aux" H 4318 6916 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 4400 7250 50  0001 C CNN
F 3 "~" H 4400 7250 50  0001 C CNN
F 4 "JST Sales America Inc." H 4400 7250 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 4400 7250 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 4400 7250 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 4400 7250 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    4400 7250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 5FFD3AC4
P 4800 7350
F 0 "#PWR0163" H 4800 7100 50  0001 C CNN
F 1 "GND" H 4805 7177 50  0000 C CNN
F 2 "" H 4800 7350 50  0001 C CNN
F 3 "" H 4800 7350 50  0001 C CNN
	1    4800 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0164
U 1 1 5FFD70B9
P 4800 7050
F 0 "#PWR0164" H 4800 6900 50  0001 C CNN
F 1 "+5V" H 4815 7223 50  0000 C CNN
F 2 "" H 4800 7050 50  0001 C CNN
F 3 "" H 4800 7050 50  0001 C CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7050 4800 7050
Wire Wire Line
	4600 7350 4800 7350
Wire Wire Line
	4600 7250 4800 7250
Wire Wire Line
	4600 7150 4800 7150
$EndSCHEMATC
