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
L Connector_Generic:Conn_01x02 J1
U 1 1 60058BBB
P 7050 2150
F 0 "J1" H 6968 1825 50  0000 C CNN
F 1 "Power In" H 6968 1916 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 7050 2150 50  0001 C CNN
F 3 "~" H 7050 2150 50  0001 C CNN
F 4 "Molex" H 7050 2150 50  0001 C CNN "Manufacturer"
F 5 "0436500200" H 7050 2150 50  0001 C CNN "Manufacturer #"
F 6 "WM1860-ND" H 7050 2150 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/molex/0436500200/268989?s=N4IgTCBcDaICwGYBsBWADAWjWNaQF0BfIA" H 7050 2150 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7050 2150
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 60059FB0
P 7450 2050
AR Path="/5FDD4B9C/60059FB0" Ref="#PWR?"  Part="1" 
AR Path="/60059FB0" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7450 1900 50  0001 C CNN
F 1 "VDD" H 7467 2223 50  0000 C CNN
F 2 "" H 7450 2050 50  0001 C CNN
F 3 "" H 7450 2050 50  0001 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6005B104
P 7450 2150
F 0 "#PWR0102" H 7450 1900 50  0001 C CNN
F 1 "GND" H 7455 1977 50  0000 C CNN
F 2 "" H 7450 2150 50  0001 C CNN
F 3 "" H 7450 2150 50  0001 C CNN
	1    7450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2150 7450 2150
Wire Wire Line
	7250 2050 7450 2050
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
P 8600 4200
AR Path="/5FD99B6C/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60061C0F" Ref="R?"  Part="1" 
AR Path="/60061C0F" Ref="R3"  Part="1" 
F 0 "R3" V 8807 4200 50  0000 C CNN
F 1 "87.5 ohm 5%" V 8716 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4200 50  0001 C CNN
F 3 "~" H 8600 4200 50  0001 C CNN
	1    8600 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 600625FC
P 8600 4600
AR Path="/5FD99B6C/600625FC" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/600625FC" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/600625FC" Ref="R?"  Part="1" 
AR Path="/600625FC" Ref="R4"  Part="1" 
F 0 "R4" V 8807 4600 50  0000 C CNN
F 1 "147.5 ohm 5%" V 8716 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4600 50  0001 C CNN
F 3 "~" H 8600 4600 50  0001 C CNN
	1    8600 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60062A76
P 8600 5000
AR Path="/5FD99B6C/60062A76" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60062A76" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60062A76" Ref="R?"  Part="1" 
AR Path="/60062A76" Ref="R5"  Part="1" 
F 0 "R5" V 8807 5000 50  0000 C CNN
F 1 "87.5 ohm 5%" V 8716 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 5000 50  0001 C CNN
F 3 "~" H 8600 5000 50  0001 C CNN
	1    8600 5000
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
Text Notes 2750 2300 0    79   ~ 16
Pin Mapping
Text GLabel 1000 2550 0    50   Input ~ 0
A0
Text GLabel 2350 2550 2    50   Input ~ 0
Battery_Monitor
Text GLabel 9600 2200 2    50   Input ~ 0
Battery_Monitor
Wire Wire Line
	9350 2200 9600 2200
Connection ~ 9350 2200
Text GLabel 2350 2800 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 2350 2950 2    59   Input ~ 0
IMU_SDA_LH
Text GLabel 1000 2800 0    50   Input ~ 0
A5_SCL
Text GLabel 1000 2950 0    50   Input ~ 0
A4_SDA
Text Notes 7900 3850 0    79   ~ 16
Master Indicator LED
Text Notes 2450 4950 0    79   ~ 16
ESC and Light Connections
$Comp
L Custom:LED_RGB D1
U 1 1 6009D7CE
P 7850 4600
F 0 "D1" H 7850 5097 50  0000 C CNN
F 1 "LED_RGB" H 7850 5006 50  0000 C CNN
F 2 "Custom:RGB_LED" H 7850 4550 50  0001 C CNN
F 3 "~" H 7850 4550 50  0001 C CNN
F 4 "Everlight Electronics Co Ltd" H 7850 4600 50  0001 C CNN "Manufacturer"
F 5 "EAST1616RGBA4" H 7850 4600 50  0001 C CNN "Manufacturer #"
F 6 "1080-EAST1616RGBA4CT-ND" H 7850 4600 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/everlight-electronics-co-ltd/EAST1616RGBA4/11200796" H 7850 4600 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 600A2F32
P 7250 4600
F 0 "#PWR0108" H 7250 4350 50  0001 C CNN
F 1 "GND" H 7255 4427 50  0000 C CNN
F 2 "" H 7250 4600 50  0001 C CNN
F 3 "" H 7250 4600 50  0001 C CNN
	1    7250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4400 7550 4400
Wire Wire Line
	7550 4400 7550 4600
Wire Wire Line
	7550 4600 7650 4600
Wire Wire Line
	7650 4800 7550 4800
Wire Wire Line
	7550 4800 7550 4600
Connection ~ 7550 4600
Wire Wire Line
	8050 4400 8200 4400
Wire Wire Line
	8200 4400 8200 4200
Wire Wire Line
	8200 5000 8200 4800
Wire Wire Line
	8200 4800 8050 4800
Text GLabel 9000 4600 2    50   Input ~ 0
R_RGB_LED
Text GLabel 9000 4200 2    50   Input ~ 0
B_RGB_LED
Text GLabel 9000 5000 2    50   Input ~ 0
G_RGB_LED
Text GLabel 2350 3200 2    50   Input ~ 0
R_RGB_LED
Text GLabel 2350 3500 2    50   Input ~ 0
B_RGB_LED
Text GLabel 2350 3350 2    50   Input ~ 0
G_RGB_LED
Wire Wire Line
	7250 4600 7550 4600
Wire Wire Line
	8200 4200 8450 4200
Wire Wire Line
	8750 4200 9000 4200
Wire Wire Line
	9000 4600 8750 4600
Wire Wire Line
	9000 5000 8750 5000
Wire Wire Line
	8200 5000 8450 5000
Wire Wire Line
	8050 4600 8450 4600
Text GLabel 1000 3750 0    50   Input ~ 0
D4
Text GLabel 1000 3900 0    50   Input ~ 0
D5
Text GLabel 1000 4050 0    50   Input ~ 0
D6
Text GLabel 1000 4200 0    50   Input ~ 0
D7
Text GLabel 2350 3750 2    50   Input ~ 0
ESC_1
Text GLabel 2350 3900 2    50   Input ~ 0
ESC_2
Text GLabel 2350 4050 2    50   Input ~ 0
ESC_3
Text GLabel 2350 4200 2    50   Input ~ 0
ESC_4
Wire Wire Line
	1000 3750 2350 3750
Wire Wire Line
	2350 3900 1000 3900
Wire Wire Line
	1000 4050 2350 4050
Wire Wire Line
	2350 4200 1000 4200
Text GLabel 5200 2550 2    50   Input ~ 0
Receiver_1
Text GLabel 5200 2700 2    50   Input ~ 0
Receiver_2
Text GLabel 5200 2850 2    50   Input ~ 0
Receiver_3
Text GLabel 5200 3000 2    50   Input ~ 0
Receiver_4
Text GLabel 3850 2550 0    50   Input ~ 0
D8
Text GLabel 3850 2700 0    50   Input ~ 0
D9
Text GLabel 3850 2850 0    50   Input ~ 0
D10
Text GLabel 3850 3000 0    50   Input ~ 0
D11
Wire Wire Line
	3850 2550 5200 2550
Wire Wire Line
	5200 2700 3850 2700
Wire Wire Line
	3850 2850 5200 2850
Wire Wire Line
	5200 3000 3850 3000
Text GLabel 1000 3200 0    50   Input ~ 0
D1
Text GLabel 1000 3350 0    50   Input ~ 0
D2
Wire Wire Line
	1000 3200 2350 3200
Wire Wire Line
	2350 3350 1000 3350
Wire Wire Line
	2350 3500 1000 3500
Wire Wire Line
	1000 2800 2350 2800
Wire Wire Line
	1000 2950 2350 2950
Wire Wire Line
	1000 2550 2350 2550
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 600D3DE3
P 1350 5650
F 0 "J2" H 1268 5225 50  0000 C CNN
F 1 "ESC_1" H 1268 5316 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0400_2x02_P3.00mm_Horizontal" H 1350 5650 50  0001 C CNN
F 3 "~" H 1350 5650 50  0001 C CNN
	1    1350 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 600D7BFC
P 2300 5650
F 0 "J3" H 2218 5225 50  0000 C CNN
F 1 "ESC_2" H 2218 5316 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0400_2x02_P3.00mm_Horizontal" H 2300 5650 50  0001 C CNN
F 3 "~" H 2300 5650 50  0001 C CNN
	1    2300 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 600DCAB5
P 3300 5650
F 0 "J4" H 3218 5225 50  0000 C CNN
F 1 "ESC_3" H 3218 5316 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0400_2x02_P3.00mm_Horizontal" H 3300 5650 50  0001 C CNN
F 3 "~" H 3300 5650 50  0001 C CNN
	1    3300 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 600DCABB
P 4300 5650
F 0 "J5" H 4218 5225 50  0000 C CNN
F 1 "ESC_4" H 4218 5316 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0400_2x02_P3.00mm_Horizontal" H 4300 5650 50  0001 C CNN
F 3 "~" H 4300 5650 50  0001 C CNN
	1    4300 5650
	-1   0    0    1   
$EndComp
Text GLabel 5200 3400 2    50   Input ~ 0
Light_1
Text GLabel 5200 3550 2    50   Input ~ 0
Light_2
Text GLabel 5200 3700 2    50   Input ~ 0
Light_3
Text GLabel 5200 3850 2    50   Input ~ 0
Light_4
Text GLabel 3850 3400 0    50   Input ~ 0
A1
Text GLabel 3850 3550 0    50   Input ~ 0
A2
Text GLabel 3850 3700 0    50   Input ~ 0
A3
Text GLabel 3850 3850 0    50   Input ~ 0
A4
Wire Wire Line
	3850 3400 5200 3400
Wire Wire Line
	5200 3550 3850 3550
Wire Wire Line
	3850 3700 5200 3700
Wire Wire Line
	5200 3850 3850 3850
Text GLabel 1700 5650 2    50   Input ~ 0
Light_1
Text GLabel 2650 5650 2    50   Input ~ 0
Light_2
Text GLabel 3650 5650 2    50   Input ~ 0
Light_3
Text GLabel 4650 5650 2    50   Input ~ 0
Light_4
$Comp
L power:GND #PWR0109
U 1 1 600E6A1E
P 3650 5750
F 0 "#PWR0109" H 3650 5500 50  0001 C CNN
F 1 "GND" H 3655 5577 50  0000 C CNN
F 2 "" H 3650 5750 50  0001 C CNN
F 3 "" H 3650 5750 50  0001 C CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
Text GLabel 1700 5550 2    50   Input ~ 0
ESC_1
Text GLabel 2650 5550 2    50   Input ~ 0
ESC_2
Text GLabel 3650 5550 2    50   Input ~ 0
ESC_3
Text GLabel 4650 5550 2    50   Input ~ 0
ESC_4
$Comp
L power:+5V #PWR0110
U 1 1 600F7869
P 3650 5450
F 0 "#PWR0110" H 3650 5300 50  0001 C CNN
F 1 "+5V" H 3665 5623 50  0000 C CNN
F 2 "" H 3650 5450 50  0001 C CNN
F 3 "" H 3650 5450 50  0001 C CNN
	1    3650 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5750 3650 5750
Wire Wire Line
	3500 5450 3650 5450
$Comp
L power:GND #PWR0111
U 1 1 6010C038
P 4650 5750
F 0 "#PWR0111" H 4650 5500 50  0001 C CNN
F 1 "GND" H 4655 5577 50  0000 C CNN
F 2 "" H 4650 5750 50  0001 C CNN
F 3 "" H 4650 5750 50  0001 C CNN
	1    4650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5750 4650 5750
$Comp
L power:GND #PWR0112
U 1 1 6010E54B
P 2650 5750
F 0 "#PWR0112" H 2650 5500 50  0001 C CNN
F 1 "GND" H 2655 5577 50  0000 C CNN
F 2 "" H 2650 5750 50  0001 C CNN
F 3 "" H 2650 5750 50  0001 C CNN
	1    2650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5750 2650 5750
$Comp
L power:GND #PWR0113
U 1 1 6010F938
P 1700 5750
F 0 "#PWR0113" H 1700 5500 50  0001 C CNN
F 1 "GND" H 1705 5577 50  0000 C CNN
F 2 "" H 1700 5750 50  0001 C CNN
F 3 "" H 1700 5750 50  0001 C CNN
	1    1700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5750 1700 5750
Wire Wire Line
	3650 5550 3500 5550
Wire Wire Line
	3500 5650 3650 5650
$Comp
L power:+5V #PWR0114
U 1 1 60118F2B
P 4650 5450
F 0 "#PWR0114" H 4650 5300 50  0001 C CNN
F 1 "+5V" H 4665 5623 50  0000 C CNN
F 2 "" H 4650 5450 50  0001 C CNN
F 3 "" H 4650 5450 50  0001 C CNN
	1    4650 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5450 4650 5450
$Comp
L power:+5V #PWR0115
U 1 1 6011A5D9
P 2650 5450
F 0 "#PWR0115" H 2650 5300 50  0001 C CNN
F 1 "+5V" H 2665 5623 50  0000 C CNN
F 2 "" H 2650 5450 50  0001 C CNN
F 3 "" H 2650 5450 50  0001 C CNN
	1    2650 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5450 2650 5450
$Comp
L power:+5V #PWR0116
U 1 1 6011BFD6
P 1700 5450
F 0 "#PWR0116" H 1700 5300 50  0001 C CNN
F 1 "+5V" H 1715 5623 50  0000 C CNN
F 2 "" H 1700 5450 50  0001 C CNN
F 3 "" H 1700 5450 50  0001 C CNN
	1    1700 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5450 1700 5450
Wire Wire Line
	1700 5550 1550 5550
Wire Wire Line
	1550 5650 1700 5650
Wire Wire Line
	2650 5550 2500 5550
Wire Wire Line
	2500 5650 2650 5650
Wire Wire Line
	4650 5550 4500 5550
Wire Wire Line
	4500 5650 4650 5650
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
Text Label 1350 2550 0    50   ~ 0
Battery_Monitor
Text Label 1550 2800 0    50   ~ 0
SCL
Text Label 1550 2950 0    50   ~ 0
SDA
Text Label 1450 3200 0    50   ~ 0
R_RGB_LED
Text Label 1450 3350 0    50   ~ 0
G_RGB_LED
Text Label 1450 3500 0    50   ~ 0
B_RGB_LED
Text Label 1500 3750 0    50   ~ 0
ESC_1
Text Label 1500 3900 0    50   ~ 0
ESC_2
Text Label 1500 4050 0    50   ~ 0
ESC_3
Text Label 1500 4200 0    50   ~ 0
ESC_4
Text Notes 2950 6550 0    79   ~ 16
Receiver
Text GLabel 3300 7450 2    50   Input ~ 0
Receiver_1
Text GLabel 3300 7550 2    50   Input ~ 0
Receiver_2
Text GLabel 3300 7250 2    50   Input ~ 0
Receiver_3
Text GLabel 3300 7350 2    50   Input ~ 0
Receiver_4
$Comp
L power:+5V #PWR0161
U 1 1 5FE81BA9
P 3300 7000
F 0 "#PWR0161" H 3300 6850 50  0001 C CNN
F 1 "+5V" H 3315 7173 50  0000 C CNN
F 2 "" H 3300 7000 50  0001 C CNN
F 3 "" H 3300 7000 50  0001 C CNN
	1    3300 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5FE821AC
P 3300 7650
F 0 "#PWR0162" H 3300 7400 50  0001 C CNN
F 1 "GND" H 3305 7477 50  0000 C CNN
F 2 "" H 3300 7650 50  0001 C CNN
F 3 "" H 3300 7650 50  0001 C CNN
	1    3300 7650
	1    0    0    -1  
$EndComp
Text GLabel 3850 3150 0    50   Input ~ 0
D12
Text GLabel 5200 3150 2    50   Input ~ 0
Receiver_5
Wire Wire Line
	3850 3150 5200 3150
Text GLabel 1000 3500 0    50   Input ~ 0
D3
Text Label 4350 2550 0    50   ~ 0
Receiver_1
Text Label 4350 2700 0    50   ~ 0
Receiver_2
Text Label 4350 2850 0    50   ~ 0
Receiver_3
Text Label 4350 3000 0    50   ~ 0
Receiver_4
Text Label 4350 3150 0    50   ~ 0
Receiver_5
Text Label 4350 3400 0    50   ~ 0
Light_1
Text Label 4350 3550 0    50   ~ 0
Light_2
Text Label 4350 3700 0    50   ~ 0
Light_3
Text Label 4350 3850 0    50   ~ 0
Light_4
Text GLabel 3300 7150 2    50   Input ~ 0
Receiver_5
$Comp
L Connector_Generic:Conn_01x08 J8
U 1 1 5FEAEDBE
P 2900 7350
F 0 "J8" H 2818 6725 50  0000 C CNN
F 1 "Receiver" H 2818 6816 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0800_2x04_P3.00mm_Horizontal" H 2900 7350 50  0001 C CNN
F 3 "~" H 2900 7350 50  0001 C CNN
F 4 "Molex" H 2900 7350 50  0001 C CNN "Manufacturer"
F 5 "0430450800" H 2900 7350 50  0001 C CNN "Manufacturer #"
F 6 "WM1816-ND" H 2900 7350 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/molex/0430450800/252529?s=N4IgTCBcDaICwGYAMcCsBaJAOJSQF0BfIA" H 2900 7350 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2900 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 7650 3300 7650
Wire Wire Line
	3100 7050 3300 7050
Wire Wire Line
	3300 7050 3300 7000
Wire Wire Line
	3100 7450 3300 7450
Wire Wire Line
	3100 7550 3300 7550
Wire Wire Line
	3300 7250 3100 7250
Wire Wire Line
	3100 7350 3300 7350
Wire Wire Line
	3300 7150 3100 7150
$EndSCHEMATC
