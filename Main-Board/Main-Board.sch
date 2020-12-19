EESchema Schematic File Version 4
LIBS:Main-Board-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title ""
Date "2020-12-13"
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
S 3400 1050 1400 450 
U 5FDD4B9C
F0 "Microcontroller" 50
F1 "Microcontroller.sch" 50
$EndSheet
Text Notes 7800 6250 0    50   ~ 0
Double check interupt pins and ESC compatible 
Text Notes 7800 6400 0    50   ~ 0
Connection to PDB? Molex connectors?
Text Notes 7800 6100 0    50   ~ 0
Debug port? Extra spare PWM?\n
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60058BBB
P 7000 1600
F 0 "J?" H 6918 1275 50  0000 C CNN
F 1 "Power In" H 6918 1366 50  0000 C CNN
F 2 "" H 7000 1600 50  0001 C CNN
F 3 "~" H 7000 1600 50  0001 C CNN
	1    7000 1600
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 60059FB0
P 7400 1500
AR Path="/5FDD4B9C/60059FB0" Ref="#PWR?"  Part="1" 
AR Path="/60059FB0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 1350 50  0001 C CNN
F 1 "VDD" H 7417 1673 50  0000 C CNN
F 2 "" H 7400 1500 50  0001 C CNN
F 3 "" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6005B104
P 7400 1600
F 0 "#PWR?" H 7400 1350 50  0001 C CNN
F 1 "GND" H 7405 1427 50  0000 C CNN
F 2 "" H 7400 1600 50  0001 C CNN
F 3 "" H 7400 1600 50  0001 C CNN
	1    7400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1600 7400 1600
Wire Wire Line
	7200 1500 7400 1500
$Comp
L power:VDD #PWR?
U 1 1 6005BC3C
P 8400 1300
AR Path="/5FDD4B9C/6005BC3C" Ref="#PWR?"  Part="1" 
AR Path="/6005BC3C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8400 1150 50  0001 C CNN
F 1 "VDD" H 8417 1473 50  0000 C CNN
F 2 "" H 8400 1300 50  0001 C CNN
F 3 "" H 8400 1300 50  0001 C CNN
	1    8400 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6005CA0F
P 8400 1650
AR Path="/5FD99B6C/6005CA0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6005CA0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/6005CA0F" Ref="R?"  Part="1" 
AR Path="/6005CA0F" Ref="R?"  Part="1" 
F 0 "R?" V 8607 1650 50  0000 C CNN
F 1 "?? kOhm 1%" V 8516 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8330 1650 50  0001 C CNN
F 3 "~" H 8400 1650 50  0001 C CNN
	1    8400 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6005CE27
P 8400 2250
AR Path="/5FD99B6C/6005CE27" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6005CE27" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/6005CE27" Ref="R?"  Part="1" 
AR Path="/6005CE27" Ref="R?"  Part="1" 
F 0 "R?" V 8607 2250 50  0000 C CNN
F 1 "?? kOhm 1%" V 8516 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8330 2250 50  0001 C CNN
F 3 "~" H 8400 2250 50  0001 C CNN
	1    8400 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6005DA0E
P 8400 2700
F 0 "#PWR?" H 8400 2450 50  0001 C CNN
F 1 "GND" H 8405 2527 50  0000 C CNN
F 2 "" H 8400 2700 50  0001 C CNN
F 3 "" H 8400 2700 50  0001 C CNN
	1    8400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1300 8400 1500
$Comp
L Device:R R?
U 1 1 60061C0F
P 9100 4050
AR Path="/5FD99B6C/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60061C0F" Ref="R?"  Part="1" 
AR Path="/60061C0F" Ref="R?"  Part="1" 
F 0 "R?" V 9307 4050 50  0000 C CNN
F 1 "?? ohm 5%" V 9216 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 4050 50  0001 C CNN
F 3 "~" H 9100 4050 50  0001 C CNN
	1    9100 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 600625FC
P 9100 4450
AR Path="/5FD99B6C/600625FC" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/600625FC" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/600625FC" Ref="R?"  Part="1" 
AR Path="/600625FC" Ref="R?"  Part="1" 
F 0 "R?" V 9307 4450 50  0000 C CNN
F 1 "?? ohm 5%" V 9216 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 4450 50  0001 C CNN
F 3 "~" H 9100 4450 50  0001 C CNN
	1    9100 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60062A76
P 9100 4850
AR Path="/5FD99B6C/60062A76" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60062A76" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60062A76" Ref="R?"  Part="1" 
AR Path="/60062A76" Ref="R?"  Part="1" 
F 0 "R?" V 9307 4850 50  0000 C CNN
F 1 "?? ohm 5%" V 9216 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 4850 50  0001 C CNN
F 3 "~" H 9100 4850 50  0001 C CNN
	1    9100 4850
	0    1    1    0   
$EndComp
Text Notes 7800 6550 0    50   ~ 0
Interface with lights?
Text Notes 2350 750  0    79   ~ 16
Microcontroller and IMU
$Comp
L power:+5V #PWR?
U 1 1 6007601B
P 9150 1500
F 0 "#PWR?" H 9150 1350 50  0001 C CNN
F 1 "+5V" H 9165 1673 50  0000 C CNN
F 2 "" H 9150 1500 50  0001 C CNN
F 3 "" H 9150 1500 50  0001 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6001U U?
U 1 1 6007878C
P 9250 2050
F 0 "U?" H 9250 2300 50  0000 L CNN
F 1 "MCP6001U" H 9250 2200 50  0000 L CNN
F 2 "" H 9250 2050 50  0001 L CNN
F 3 "" H 9250 2050 50  0001 C CNN
F 4 "https://www.digikey.ca/en/products/detail/microchip-technology/MCP6001UT-I-OT/562450" H 9250 2050 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    9250 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6007A77A
P 9550 1600
AR Path="/5FD99B6C/6007A77A" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6007A77A" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6007A77A" Ref="C?"  Part="1" 
AR Path="/6007A77A" Ref="C?"  Part="1" 
F 0 "C?" H 9665 1646 50  0000 L CNN
F 1 "X7R, 0.1uF 10%" H 9665 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9588 1450 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6007C634
P 9950 1600
F 0 "#PWR?" H 9950 1350 50  0001 C CNN
F 1 "GND" H 9955 1427 50  0000 C CNN
F 2 "" H 9950 1600 50  0001 C CNN
F 3 "" H 9950 1600 50  0001 C CNN
	1    9950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1500 9150 1600
Wire Wire Line
	9150 1600 9400 1600
Connection ~ 9150 1600
Wire Wire Line
	9150 1600 9150 1750
Wire Wire Line
	9700 1600 9950 1600
$Comp
L power:GND #PWR?
U 1 1 6007DC43
P 9150 2350
F 0 "#PWR?" H 9150 2100 50  0001 C CNN
F 1 "GND" H 9155 2177 50  0000 C CNN
F 2 "" H 9150 2350 50  0001 C CNN
F 3 "" H 9150 2350 50  0001 C CNN
	1    9150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2700 9550 2700
Wire Wire Line
	8950 1950 8400 1950
Connection ~ 8400 1950
Wire Wire Line
	8400 1950 8400 2100
Wire Wire Line
	8400 1800 8400 1950
Wire Wire Line
	8400 2400 8400 2700
Wire Wire Line
	8950 2150 8950 2700
Wire Wire Line
	9550 2050 9550 2700
Text Notes 2800 2100 0    79   ~ 16
Pin Mapping
Text GLabel 1050 2350 0    50   Input ~ 0
A0
Text GLabel 2400 2350 2    50   Input ~ 0
Battery_Monitor
Text GLabel 9800 2050 2    50   Input ~ 0
Battery_Monitor
Wire Wire Line
	9550 2050 9800 2050
Connection ~ 9550 2050
Text GLabel 2400 2550 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 2400 2700 2    59   Input ~ 0
IMU_SDA_LH
Text GLabel 1050 2550 0    50   Input ~ 0
A5_SCL
Text GLabel 1050 2700 0    50   Input ~ 0
A4_SDA
Text Notes 8300 3700 0    79   ~ 16
Master Indicator LED
Text Notes 2200 5000 0    79   ~ 16
ESC and Light Connections
$Comp
L Custom:LED_RGB D?
U 1 1 6009D7CE
P 8350 4450
F 0 "D?" H 8350 4947 50  0000 C CNN
F 1 "LED_RGB" H 8350 4856 50  0000 C CNN
F 2 "" H 8350 4400 50  0001 C CNN
F 3 "~" H 8350 4400 50  0001 C CNN
	1    8350 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600A2F32
P 7750 4450
F 0 "#PWR?" H 7750 4200 50  0001 C CNN
F 1 "GND" H 7755 4277 50  0000 C CNN
F 2 "" H 7750 4450 50  0001 C CNN
F 3 "" H 7750 4450 50  0001 C CNN
	1    7750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4250 8050 4250
Wire Wire Line
	8050 4250 8050 4450
Wire Wire Line
	8050 4450 8150 4450
Wire Wire Line
	8150 4650 8050 4650
Wire Wire Line
	8050 4650 8050 4450
Connection ~ 8050 4450
Wire Wire Line
	8550 4250 8700 4250
Wire Wire Line
	8700 4250 8700 4050
Wire Wire Line
	8700 4850 8700 4650
Wire Wire Line
	8700 4650 8550 4650
Text GLabel 9500 4450 2    50   Input ~ 0
R_LED
Text GLabel 9500 4050 2    50   Input ~ 0
B_LED
Text GLabel 9500 4850 2    50   Input ~ 0
G_LED
Text GLabel 2400 2900 2    50   Input ~ 0
R_LED
Text GLabel 2400 3200 2    50   Input ~ 0
B_LED
Text GLabel 2400 3050 2    50   Input ~ 0
G_LED
Wire Wire Line
	7750 4450 8050 4450
Wire Wire Line
	8700 4050 8950 4050
Wire Wire Line
	9250 4050 9500 4050
Wire Wire Line
	9500 4450 9250 4450
Wire Wire Line
	9500 4850 9250 4850
Wire Wire Line
	8700 4850 8950 4850
Wire Wire Line
	8550 4450 8950 4450
Text GLabel 1050 3400 0    50   Input ~ 0
D4
Text GLabel 1050 3550 0    50   Input ~ 0
D5
Text GLabel 1050 3700 0    50   Input ~ 0
D6
Text GLabel 1050 3850 0    50   Input ~ 0
D7
Text GLabel 2400 3400 2    50   Input ~ 0
ESC_1
Text GLabel 2400 3550 2    50   Input ~ 0
ESC_2
Text GLabel 2400 3700 2    50   Input ~ 0
ESC_3
Text GLabel 2400 3850 2    50   Input ~ 0
ESC_4
Wire Wire Line
	1050 3400 2400 3400
Wire Wire Line
	2400 3550 1050 3550
Wire Wire Line
	1050 3700 2400 3700
Wire Wire Line
	2400 3850 1050 3850
Text GLabel 5250 2350 2    50   Input ~ 0
Receiver_1
Text GLabel 5250 2500 2    50   Input ~ 0
Receiver_2
Text GLabel 5250 2650 2    50   Input ~ 0
Receiver_3
Text GLabel 5250 2800 2    50   Input ~ 0
Receiver_4
Text GLabel 3900 2350 0    50   Input ~ 0
D8
Text GLabel 3900 2500 0    50   Input ~ 0
D9
Text GLabel 3900 2650 0    50   Input ~ 0
D10
Text GLabel 3900 2800 0    50   Input ~ 0
D11
Wire Wire Line
	3900 2350 5250 2350
Wire Wire Line
	5250 2500 3900 2500
Wire Wire Line
	3900 2650 5250 2650
Wire Wire Line
	5250 2800 3900 2800
Text GLabel 1050 2900 0    50   Input ~ 0
D2
Text GLabel 1050 3050 0    50   Input ~ 0
D3
Wire Wire Line
	1050 2900 2400 2900
Wire Wire Line
	2400 3050 1050 3050
Text GLabel 1050 3200 0    50   Input ~ 0
D12
Wire Wire Line
	2400 3200 1050 3200
Wire Wire Line
	1050 2550 2400 2550
Wire Wire Line
	1050 2700 2400 2700
Wire Wire Line
	1050 2350 2400 2350
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 600D3DE3
P 1250 5650
F 0 "J?" H 1168 5225 50  0000 C CNN
F 1 "ESC_1" H 1168 5316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1250 5650 50  0001 C CNN
F 3 "~" H 1250 5650 50  0001 C CNN
	1    1250 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 600D7BFC
P 2200 5650
F 0 "J?" H 2118 5225 50  0000 C CNN
F 1 "ESC_2" H 2118 5316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2200 5650 50  0001 C CNN
F 3 "~" H 2200 5650 50  0001 C CNN
	1    2200 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 600DCAB5
P 3200 5650
F 0 "J?" H 3118 5225 50  0000 C CNN
F 1 "ESC_3" H 3118 5316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3200 5650 50  0001 C CNN
F 3 "~" H 3200 5650 50  0001 C CNN
	1    3200 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 600DCABB
P 4200 5650
F 0 "J?" H 4118 5225 50  0000 C CNN
F 1 "ESC_4" H 4118 5316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4200 5650 50  0001 C CNN
F 3 "~" H 4200 5650 50  0001 C CNN
	1    4200 5650
	-1   0    0    1   
$EndComp
Text GLabel 5250 3050 2    50   Input ~ 0
Light_1
Text GLabel 5250 3200 2    50   Input ~ 0
Light_2
Text GLabel 5250 3350 2    50   Input ~ 0
Light_3
Text GLabel 5250 3500 2    50   Input ~ 0
Light_4
Text GLabel 3900 3050 0    50   Input ~ 0
A1
Text GLabel 3900 3200 0    50   Input ~ 0
A2
Text GLabel 3900 3350 0    50   Input ~ 0
A3
Text GLabel 3900 3500 0    50   Input ~ 0
A4
Wire Wire Line
	3900 3050 5250 3050
Wire Wire Line
	5250 3200 3900 3200
Wire Wire Line
	3900 3350 5250 3350
Wire Wire Line
	5250 3500 3900 3500
Text GLabel 1600 5650 2    50   Input ~ 0
Light_1
Text GLabel 2550 5650 2    50   Input ~ 0
Light_2
Text GLabel 3550 5650 2    50   Input ~ 0
Light_3
Text GLabel 4550 5650 2    50   Input ~ 0
Light_4
$Comp
L power:GND #PWR?
U 1 1 600E6A1E
P 3550 5750
F 0 "#PWR?" H 3550 5500 50  0001 C CNN
F 1 "GND" H 3555 5577 50  0000 C CNN
F 2 "" H 3550 5750 50  0001 C CNN
F 3 "" H 3550 5750 50  0001 C CNN
	1    3550 5750
	1    0    0    -1  
$EndComp
Text GLabel 1600 5550 2    50   Input ~ 0
ESC_1
Text GLabel 2550 5550 2    50   Input ~ 0
ESC_2
Text GLabel 3550 5550 2    50   Input ~ 0
ESC_3
Text GLabel 4550 5550 2    50   Input ~ 0
ESC_4
$Comp
L power:+5V #PWR?
U 1 1 600F7869
P 3550 5450
F 0 "#PWR?" H 3550 5300 50  0001 C CNN
F 1 "+5V" H 3565 5623 50  0000 C CNN
F 2 "" H 3550 5450 50  0001 C CNN
F 3 "" H 3550 5450 50  0001 C CNN
	1    3550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5750 3550 5750
Wire Wire Line
	3400 5450 3550 5450
$Comp
L power:GND #PWR?
U 1 1 6010C038
P 4550 5750
F 0 "#PWR?" H 4550 5500 50  0001 C CNN
F 1 "GND" H 4555 5577 50  0000 C CNN
F 2 "" H 4550 5750 50  0001 C CNN
F 3 "" H 4550 5750 50  0001 C CNN
	1    4550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5750 4550 5750
$Comp
L power:GND #PWR?
U 1 1 6010E54B
P 2550 5750
F 0 "#PWR?" H 2550 5500 50  0001 C CNN
F 1 "GND" H 2555 5577 50  0000 C CNN
F 2 "" H 2550 5750 50  0001 C CNN
F 3 "" H 2550 5750 50  0001 C CNN
	1    2550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5750 2550 5750
$Comp
L power:GND #PWR?
U 1 1 6010F938
P 1600 5750
F 0 "#PWR?" H 1600 5500 50  0001 C CNN
F 1 "GND" H 1605 5577 50  0000 C CNN
F 2 "" H 1600 5750 50  0001 C CNN
F 3 "" H 1600 5750 50  0001 C CNN
	1    1600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5750 1600 5750
Wire Wire Line
	3550 5550 3400 5550
Wire Wire Line
	3400 5650 3550 5650
$Comp
L power:+5V #PWR?
U 1 1 60118F2B
P 4550 5450
F 0 "#PWR?" H 4550 5300 50  0001 C CNN
F 1 "+5V" H 4565 5623 50  0000 C CNN
F 2 "" H 4550 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0001 C CNN
	1    4550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5450 4550 5450
$Comp
L power:+5V #PWR?
U 1 1 6011A5D9
P 2550 5450
F 0 "#PWR?" H 2550 5300 50  0001 C CNN
F 1 "+5V" H 2565 5623 50  0000 C CNN
F 2 "" H 2550 5450 50  0001 C CNN
F 3 "" H 2550 5450 50  0001 C CNN
	1    2550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5450 2550 5450
$Comp
L power:+5V #PWR?
U 1 1 6011BFD6
P 1600 5450
F 0 "#PWR?" H 1600 5300 50  0001 C CNN
F 1 "+5V" H 1615 5623 50  0000 C CNN
F 2 "" H 1600 5450 50  0001 C CNN
F 3 "" H 1600 5450 50  0001 C CNN
	1    1600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5450 1600 5450
Wire Wire Line
	1600 5550 1450 5550
Wire Wire Line
	1450 5650 1600 5650
Wire Wire Line
	2550 5550 2400 5550
Wire Wire Line
	2400 5650 2550 5650
Wire Wire Line
	4550 5550 4400 5550
Wire Wire Line
	4400 5650 4550 5650
$EndSCHEMATC
