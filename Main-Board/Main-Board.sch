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
U 1 1 60055D25
P 2150 4700
F 0 "J?" H 2068 4375 50  0000 C CNN
F 1 "ESC1" H 2068 4466 50  0000 C CNN
F 2 "" H 2150 4700 50  0001 C CNN
F 3 "~" H 2150 4700 50  0001 C CNN
	1    2150 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60056CDE
P 2150 5300
F 0 "J?" H 2068 4975 50  0000 C CNN
F 1 "ESC2" H 2068 5066 50  0000 C CNN
F 2 "" H 2150 5300 50  0001 C CNN
F 3 "~" H 2150 5300 50  0001 C CNN
	1    2150 5300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60056F29
P 4200 4700
F 0 "J?" H 4118 4375 50  0000 C CNN
F 1 "ESC3" H 4118 4466 50  0000 C CNN
F 2 "" H 4200 4700 50  0001 C CNN
F 3 "~" H 4200 4700 50  0001 C CNN
	1    4200 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 600574C6
P 4200 5350
F 0 "J?" H 4118 5025 50  0000 C CNN
F 1 "ESC4" H 4118 5116 50  0000 C CNN
F 2 "" H 4200 5350 50  0001 C CNN
F 3 "~" H 4200 5350 50  0001 C CNN
	1    4200 5350
	-1   0    0    1   
$EndComp
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
L Device:LED_RGB D?
U 1 1 6005F303
P 8950 4300
F 0 "D?" H 8950 4797 50  0000 C CNN
F 1 "LED_RGB" H 8950 4706 50  0000 C CNN
F 2 "" H 8950 4250 50  0001 C CNN
F 3 "~" H 8950 4250 50  0001 C CNN
F 4 "https://www.digikey.ca/en/products/detail/everlight-electronics-co-ltd/EAST1616RGBA4/11200796" H 8950 4300 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    8950 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60061C0F
P 8150 3900
AR Path="/5FD99B6C/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60061C0F" Ref="R?"  Part="1" 
AR Path="/60061C0F" Ref="R?"  Part="1" 
F 0 "R?" V 8357 3900 50  0000 C CNN
F 1 "?? ohm 5%" V 8266 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8080 3900 50  0001 C CNN
F 3 "~" H 8150 3900 50  0001 C CNN
	1    8150 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 600625FC
P 8150 4300
AR Path="/5FD99B6C/600625FC" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/600625FC" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/600625FC" Ref="R?"  Part="1" 
AR Path="/600625FC" Ref="R?"  Part="1" 
F 0 "R?" V 8357 4300 50  0000 C CNN
F 1 "?? ohm 5%" V 8266 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8080 4300 50  0001 C CNN
F 3 "~" H 8150 4300 50  0001 C CNN
	1    8150 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60062A76
P 8150 4700
AR Path="/5FD99B6C/60062A76" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60062A76" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60062A76" Ref="R?"  Part="1" 
AR Path="/60062A76" Ref="R?"  Part="1" 
F 0 "R?" V 8357 4700 50  0000 C CNN
F 1 "?? ohm 5%" V 8266 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8080 4700 50  0001 C CNN
F 3 "~" H 8150 4700 50  0001 C CNN
	1    8150 4700
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
Text GLabel 2550 2350 0    50   Input ~ 0
A0
Text GLabel 3750 2350 2    50   Input ~ 0
Battery_Monitor
Wire Wire Line
	2550 2350 3750 2350
Text GLabel 9800 2050 2    50   Input ~ 0
Battery_Monitor
Wire Wire Line
	9550 2050 9800 2050
Connection ~ 9550 2050
Text GLabel 3750 2500 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 3750 2650 2    59   Input ~ 0
IMU_SDA_LH
Text GLabel 2550 2500 0    50   Input ~ 0
A5_SCL
Text GLabel 2550 2650 0    50   Input ~ 0
A4_SDA
Wire Wire Line
	2550 2500 3750 2500
Wire Wire Line
	3750 2650 2550 2650
Text Notes 8000 3650 0    79   ~ 16
Master Indicator LED
Text Notes 2250 4050 0    79   ~ 16
ESC (and light?) Connections
$EndSCHEMATC
