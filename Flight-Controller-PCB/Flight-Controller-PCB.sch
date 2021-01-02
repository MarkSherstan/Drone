EESchema Schematic File Version 4
LIBS:Flight-Controller-PCB-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Flight Controller"
Date "2021-01-01"
Rev "A"
Comp "Mark Sherstan"
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
P 7550 1850
AR Path="/5FDD4B9C/60059FB0" Ref="#PWR?"  Part="1" 
AR Path="/60059FB0" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 7550 1700 50  0001 C CNN
F 1 "VDD" H 7567 2023 50  0000 C CNN
F 2 "" H 7550 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0001 C CNN
	1    7550 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6005B104
P 7550 2350
F 0 "#PWR020" H 7550 2100 50  0001 C CNN
F 1 "GND" H 7555 2177 50  0000 C CNN
F 2 "" H 7550 2350 50  0001 C CNN
F 3 "" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2350 7400 2350
Wire Wire Line
	7350 1850 7400 1850
$Comp
L power:VDD #PWR?
U 1 1 6005BC3C
P 8200 1450
AR Path="/5FDD4B9C/6005BC3C" Ref="#PWR?"  Part="1" 
AR Path="/6005BC3C" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 8200 1300 50  0001 C CNN
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
L power:GND #PWR024
U 1 1 6005DA0E
P 8200 2850
F 0 "#PWR024" H 8200 2600 50  0001 C CNN
F 1 "GND" H 8205 2677 50  0000 C CNN
F 2 "" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1450 8200 1650
Text Notes 1550 750  0    79   ~ 16
Microcontroller and Inertial Measurement Unit (IMU)
$Comp
L power:+5V #PWR025
U 1 1 6007601B
P 8950 1200
F 0 "#PWR025" H 8950 1050 50  0001 C CNN
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
AR Path="/6007A77A" Ref="C2"  Part="1" 
F 0 "C2" V 9950 1700 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" V 10050 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9838 1600 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6007DC43
P 8950 2500
F 0 "#PWR026" H 8950 2250 50  0001 C CNN
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
Text Notes 2750 2150 0    79   ~ 16
Pin Mapping
Text GLabel 2350 2400 2    50   Input ~ 0
Battery_Monitor
Text GLabel 9600 2200 2    50   Input ~ 0
Battery_Monitor
Wire Wire Line
	9350 2200 9600 2200
Connection ~ 9350 2200
Text GLabel 2350 2800 2    59   Input ~ 0
IMU_SCL_LH
Text GLabel 2350 2650 2    59   Input ~ 0
IMU_SDA_LH
Text Notes 2500 4800 0    79   ~ 16
ESC and Light Connections
Text GLabel 2350 3050 2    50   Input ~ 0
R_RGB_LED
Text GLabel 2350 3350 2    50   Input ~ 0
B_RGB_LED
Text GLabel 2350 3200 2    50   Input ~ 0
G_RGB_LED
Text GLabel 2350 3600 2    50   Input ~ 0
ESC_1
Text GLabel 2350 3750 2    50   Input ~ 0
ESC_2
Text GLabel 2350 3900 2    50   Input ~ 0
ESC_3
Text GLabel 2350 4050 2    50   Input ~ 0
ESC_4
Wire Wire Line
	1000 3600 2350 3600
Wire Wire Line
	2350 3750 1000 3750
Wire Wire Line
	1000 3900 2350 3900
Wire Wire Line
	2350 4050 1000 4050
Text GLabel 5200 2400 2    50   Input ~ 0
Receiver_1
Text GLabel 5200 2550 2    50   Input ~ 0
Receiver_2
Text GLabel 5200 2700 2    50   Input ~ 0
Receiver_3
Text GLabel 5200 2850 2    50   Input ~ 0
Receiver_4
Wire Wire Line
	3850 2400 5200 2400
Wire Wire Line
	5200 2550 3850 2550
Wire Wire Line
	3850 2700 5200 2700
Wire Wire Line
	5200 2850 3850 2850
Wire Wire Line
	1000 3050 2350 3050
Wire Wire Line
	2350 3200 1000 3200
Wire Wire Line
	2350 3350 1000 3350
Wire Wire Line
	1000 2800 2350 2800
Wire Wire Line
	1000 2650 2350 2650
Wire Wire Line
	1000 2400 2350 2400
Text GLabel 5200 3300 2    50   Input ~ 0
Light_1
Text GLabel 5200 3450 2    50   Input ~ 0
Light_2
Text GLabel 5200 3600 2    50   Input ~ 0
Light_3
Text GLabel 5200 3750 2    50   Input ~ 0
Light_4
Wire Wire Line
	3850 3300 5200 3300
Wire Wire Line
	5200 3450 3850 3450
Wire Wire Line
	3850 3600 5200 3600
Wire Wire Line
	5200 3750 3850 3750
Text GLabel 1200 5600 2    50   Input ~ 0
Light_1
Text GLabel 2600 5600 2    50   Input ~ 0
Light_2
Text GLabel 4050 5600 2    50   Input ~ 0
Light_3
Text GLabel 5500 5600 2    50   Input ~ 0
Light_4
Text GLabel 1200 5400 2    50   Input ~ 0
ESC_1
Text GLabel 2600 5400 2    50   Input ~ 0
ESC_2
Text GLabel 4050 5400 2    50   Input ~ 0
ESC_3
Text GLabel 5500 5400 2    50   Input ~ 0
ESC_4
$Comp
L power:GND #PWR02
U 1 1 6010F938
P 1200 5700
F 0 "#PWR02" H 1200 5450 50  0001 C CNN
F 1 "GND" H 1205 5527 50  0000 C CNN
F 2 "" H 1200 5700 50  0001 C CNN
F 3 "" H 1200 5700 50  0001 C CNN
	1    1200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5700 1200 5700
$Comp
L power:+5V #PWR01
U 1 1 6011BFD6
P 1200 5300
F 0 "#PWR01" H 1200 5150 50  0001 C CNN
F 1 "+5V" H 1215 5473 50  0000 C CNN
F 2 "" H 1200 5300 50  0001 C CNN
F 3 "" H 1200 5300 50  0001 C CNN
	1    1200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5300 1200 5300
Wire Wire Line
	1200 5400 1050 5400
$Comp
L Mechanical:MountingHole H1
U 1 1 5FDEB61F
P 7900 6550
F 0 "H1" H 8000 6596 50  0000 L CNN
F 1 "M2" H 8000 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 7900 6550 50  0001 C CNN
F 3 "~" H 7900 6550 50  0001 C CNN
	1    7900 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FDEDAAD
P 8300 6550
F 0 "H2" H 8400 6596 50  0000 L CNN
F 1 "M2" H 8400 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 8300 6550 50  0001 C CNN
F 3 "~" H 8300 6550 50  0001 C CNN
	1    8300 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FDEF850
P 8700 6550
F 0 "H3" H 8800 6596 50  0000 L CNN
F 1 "M2" H 8800 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 8700 6550 50  0001 C CNN
F 3 "~" H 8700 6550 50  0001 C CNN
	1    8700 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FDF1549
P 9100 6550
F 0 "H4" H 9200 6596 50  0000 L CNN
F 1 "M2" H 9200 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad" H 9100 6550 50  0001 C CNN
F 3 "~" H 9100 6550 50  0001 C CNN
	1    9100 6550
	1    0    0    -1  
$EndComp
Text Notes 8150 6250 0    79   ~ 16
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
AR Path="/5FE12F4E" Ref="C1"  Part="1" 
F 0 "C1" V 9600 1300 50  0000 L CNN
F 1 "1uF 16V X7R 10%" V 9700 1000 50  0000 L CNN
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
L power:GND #PWR031
U 1 1 5FE2F38B
P 10350 1350
F 0 "#PWR031" H 10350 1100 50  0001 C CNN
F 1 "GND" H 10355 1177 50  0000 C CNN
F 2 "" H 10350 1350 50  0001 C CNN
F 3 "" H 10350 1350 50  0001 C CNN
	1    10350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1350 10350 1350
$Comp
L power:GND #PWR030
U 1 1 5FE330F9
P 10150 1750
F 0 "#PWR030" H 10150 1500 50  0001 C CNN
F 1 "GND" H 10155 1577 50  0000 C CNN
F 2 "" H 10150 1750 50  0001 C CNN
F 3 "" H 10150 1750 50  0001 C CNN
	1    10150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1750 10150 1750
Text Label 1350 2400 0    50   ~ 0
Battery_Monitor
Text Label 1550 2800 0    50   ~ 0
SCL
Text Label 1550 2650 0    50   ~ 0
SDA
Text Label 1450 3050 0    50   ~ 0
R_RGB_LED
Text Label 1450 3200 0    50   ~ 0
G_RGB_LED
Text Label 1450 3350 0    50   ~ 0
B_RGB_LED
Text Label 1500 3600 0    50   ~ 0
ESC_1
Text Label 1500 3750 0    50   ~ 0
ESC_2
Text Label 1500 3900 0    50   ~ 0
ESC_3
Text Label 1500 4050 0    50   ~ 0
ESC_4
Text Notes 1100 6650 0    79   ~ 16
Receiver
Text GLabel 1350 7500 2    50   Input ~ 0
Receiver_1
Text GLabel 1350 7400 2    50   Input ~ 0
Receiver_2
Text GLabel 1350 7300 2    50   Input ~ 0
Receiver_3
Text GLabel 1350 7200 2    50   Input ~ 0
Receiver_4
$Comp
L power:+5V #PWR03
U 1 1 5FE81BA9
P 1350 6950
F 0 "#PWR03" H 1350 6800 50  0001 C CNN
F 1 "+5V" H 1365 7123 50  0000 C CNN
F 2 "" H 1350 6950 50  0001 C CNN
F 3 "" H 1350 6950 50  0001 C CNN
	1    1350 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FE821AC
P 1350 7600
F 0 "#PWR04" H 1350 7350 50  0001 C CNN
F 1 "GND" H 1355 7427 50  0000 C CNN
F 2 "" H 1350 7600 50  0001 C CNN
F 3 "" H 1350 7600 50  0001 C CNN
	1    1350 7600
	1    0    0    -1  
$EndComp
Text Label 4350 2400 0    50   ~ 0
Receiver_1
Text Label 4350 2550 0    50   ~ 0
Receiver_2
Text Label 4350 2700 0    50   ~ 0
Receiver_3
Text Label 4350 2850 0    50   ~ 0
Receiver_4
Text Label 4350 3300 0    50   ~ 0
Light_1
Text Label 4350 3450 0    50   ~ 0
Light_2
Text Label 4350 3600 0    50   ~ 0
Light_3
Text Label 4350 3750 0    50   ~ 0
Light_4
Wire Wire Line
	1150 7600 1350 7600
Wire Wire Line
	1150 7000 1350 7000
Wire Wire Line
	1350 7000 1350 6950
Wire Wire Line
	1150 7500 1350 7500
Wire Wire Line
	1150 7400 1350 7400
Wire Wire Line
	1350 7300 1150 7300
Wire Wire Line
	1150 7200 1350 7200
Wire Wire Line
	7350 2250 7400 2250
Wire Wire Line
	7400 2250 7400 2350
Connection ~ 7400 2350
Wire Wire Line
	7400 2350 7550 2350
Wire Wire Line
	7350 1950 7400 1950
Wire Wire Line
	7400 1950 7400 1850
Connection ~ 7400 1850
Wire Wire Line
	7400 1850 7550 1850
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 5FF977CD
P 950 7300
F 0 "J2" H 868 6775 50  0000 C CNN
F 1 "Receiver" H 868 6866 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM07B-GHS-TBT_1x07-1MP_P1.25mm_Vertical" H 950 7300 50  0001 C CNN
F 3 "~" H 950 7300 50  0001 C CNN
F 4 "JST Sales America Inc." H 950 7300 50  0001 C CNN "Manufacturer"
F 5 "BM07B-GHS-TBT(LF)(SN)(N)" H 950 7300 50  0001 C CNN "Manufacturer #"
F 6 "455-1583-1-ND" H 950 7300 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM07B-GHS-TBT-LF-SN-N/807805?s=N4IgTCBcDaIEIFkAMB2OBaA4gCQMroBU4CQBdAXyA" H 950 7300 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    950  7300
	-1   0    0    1   
$EndComp
Text Notes 4900 6650 0    79   ~ 16
Aux Outputs
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
Text GLabel 5300 7300 2    50   Input ~ 0
Aux_Digital
Text GLabel 5300 7400 2    50   Input ~ 0
Aux_Analog
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5FFD0529
P 4900 7400
F 0 "J6" H 4818 6975 50  0000 C CNN
F 1 "Aux" H 4818 7066 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 4900 7400 50  0001 C CNN
F 3 "~" H 4900 7400 50  0001 C CNN
F 4 "JST Sales America Inc." H 4900 7400 50  0001 C CNN "Manufacturer"
F 5 "BM04B-GHS-TBT(LF)(SN)(N)" H 4900 7400 50  0001 C CNN "Manufacturer #"
F 6 "455-1580-1-ND" H 4900 7400 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM04B-GHS-TBT-LF-SN-N/807802?s=N4IgTCBcDaIEIFkAMAWOBaA4gCQMroBU4CQBdAXyA" H 4900 7400 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    4900 7400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FFD3AC4
P 5300 7500
F 0 "#PWR015" H 5300 7250 50  0001 C CNN
F 1 "GND" H 5305 7327 50  0000 C CNN
F 2 "" H 5300 7500 50  0001 C CNN
F 3 "" H 5300 7500 50  0001 C CNN
	1    5300 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5FFD70B9
P 5300 7200
F 0 "#PWR014" H 5300 7050 50  0001 C CNN
F 1 "+5V" H 5315 7373 50  0000 C CNN
F 2 "" H 5300 7200 50  0001 C CNN
F 3 "" H 5300 7200 50  0001 C CNN
	1    5300 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7200 5300 7200
Wire Wire Line
	5100 7500 5300 7500
Wire Wire Line
	5100 7400 5300 7400
Wire Wire Line
	5100 7300 5300 7300
$Comp
L Connector_Generic:Conn_01x06 J8
U 1 1 6004E81C
P 7150 2150
F 0 "J8" H 7068 1625 50  0000 C CNN
F 1 "Power_In" H 7068 1716 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM06B-GHS-TBT_1x06-1MP_P1.25mm_Vertical" H 7150 2150 50  0001 C CNN
F 3 "~" H 7150 2150 50  0001 C CNN
F 4 "JST Sales America Inc." H 7150 2150 50  0001 C CNN "Manufacturer"
F 5 "BM06B-GHS-TBT(LF)(SN)(N)" H 7150 2150 50  0001 C CNN "Manufacturer #"
F 6 "455-1582-1-ND" H 7150 2150 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM06B-GHS-TBT-LF-SN-N/807804" H 7150 2150 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7150 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 2150 7400 2150
Wire Wire Line
	7400 2150 7400 2250
Connection ~ 7400 2250
Wire Wire Line
	7350 2050 7400 2050
Wire Wire Line
	7400 2050 7400 1950
Connection ~ 7400 1950
Text GLabel 5200 3000 2    50   Input ~ 0
Receiver_5
Wire Wire Line
	5200 3000 3850 3000
Text Label 4350 3000 0    50   ~ 0
Receiver_5
Text GLabel 1350 7100 2    50   Input ~ 0
Receiver_5
Wire Wire Line
	1150 7100 1350 7100
Text Notes 7900 3450 0    79   ~ 16
Master Indicator LEDs
$Comp
L Device:R R?
U 1 1 60061C0F
P 8600 3700
AR Path="/5FD99B6C/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60061C0F" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60061C0F" Ref="R?"  Part="1" 
AR Path="/60061C0F" Ref="R3"  Part="1" 
F 0 "R3" V 8807 3700 50  0000 C CNN
F 1 "100 ohm 5%" V 8716 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 3700 50  0001 C CNN
F 3 "~" H 8600 3700 50  0001 C CNN
	1    8600 3700
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 600625FC
P 8600 4100
AR Path="/5FD99B6C/600625FC" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/600625FC" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/600625FC" Ref="R?"  Part="1" 
AR Path="/600625FC" Ref="R4"  Part="1" 
F 0 "R4" V 8807 4100 50  0000 C CNN
F 1 "150 ohm 5%" V 8716 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4100 50  0001 C CNN
F 3 "~" H 8600 4100 50  0001 C CNN
	1    8600 4100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60062A76
P 8600 4500
AR Path="/5FD99B6C/60062A76" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60062A76" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60062A76" Ref="R?"  Part="1" 
AR Path="/60062A76" Ref="R5"  Part="1" 
F 0 "R5" V 8807 4500 50  0000 C CNN
F 1 "100 ohm 5%" V 8716 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4500 50  0001 C CNN
F 3 "~" H 8600 4500 50  0001 C CNN
	1    8600 4500
	0    -1   1    0   
$EndComp
Wire Wire Line
	9150 3900 9000 3900
Wire Wire Line
	9000 3900 9000 3700
Wire Wire Line
	9000 4500 9000 4300
Wire Wire Line
	9000 4300 9150 4300
Text GLabel 8200 4100 0    50   Input ~ 0
R_RGB_LED
Text GLabel 8200 3700 0    50   Input ~ 0
B_RGB_LED
Text GLabel 8200 4500 0    50   Input ~ 0
G_RGB_LED
Wire Wire Line
	9000 3700 8750 3700
Wire Wire Line
	8450 3700 8200 3700
Wire Wire Line
	8200 4500 8450 4500
Wire Wire Line
	9000 4500 8750 4500
$Comp
L Custom:LED_RGB D1
U 1 1 6009D7CE
P 9350 4100
F 0 "D1" H 9350 4597 50  0000 C CNN
F 1 "LED_RGB" H 9350 4506 50  0000 C CNN
F 2 "Custom:RGB_LED" H 9350 4050 50  0001 C CNN
F 3 "~" H 9350 4050 50  0001 C CNN
F 4 "Everlight Electronics Co Ltd" H 9350 4100 50  0001 C CNN "Manufacturer"
F 5 "EAST1616RGBA4" H 9350 4100 50  0001 C CNN "Manufacturer #"
F 6 "1080-EAST1616RGBA4CT-ND" H 9350 4100 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/everlight-electronics-co-ltd/EAST1616RGBA4/11200796" H 9350 4100 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    9350 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 4100 8750 4100
Wire Wire Line
	8450 4100 8200 4100
Text Label 9000 3700 2    50   ~ 0
B_RGB
Text Label 9000 4100 2    50   ~ 0
R_RGB
Text Label 9000 4500 2    50   ~ 0
G_RGB
Wire Wire Line
	9950 4100 9650 4100
Connection ~ 9650 4100
Wire Wire Line
	9650 4300 9650 4100
Wire Wire Line
	9550 4300 9650 4300
Wire Wire Line
	9650 4100 9550 4100
Wire Wire Line
	9650 3900 9650 4100
Wire Wire Line
	9550 3900 9650 3900
$Comp
L power:GND #PWR027
U 1 1 600A2F32
P 9950 4100
F 0 "#PWR027" H 9950 3850 50  0001 C CNN
F 1 "GND" H 9955 3927 50  0000 C CNN
F 2 "" H 9950 4100 50  0001 C CNN
F 3 "" H 9950 4100 50  0001 C CNN
	1    9950 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 603EC936
P 9350 5150
F 0 "D2" H 9343 4895 50  0000 C CNN
F 1 "Green 2.2V 20mA" H 9343 4986 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9350 5150 50  0001 C CNN
F 3 "~" H 9350 5150 50  0001 C CNN
	1    9350 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 603F17D7
P 9350 5650
F 0 "D3" H 9343 5395 50  0000 C CNN
F 1 "Green 2.2V 20mA" H 9343 5486 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9350 5650 50  0001 C CNN
F 3 "~" H 9350 5650 50  0001 C CNN
	1    9350 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 6040BA96
P 7750 5650
F 0 "#PWR022" H 7750 5500 50  0001 C CNN
F 1 "+3.3V" H 7765 5823 50  0000 C CNN
F 2 "" H 7750 5650 50  0001 C CNN
F 3 "" H 7750 5650 50  0001 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 6040BA8E
P 7750 5150
F 0 "#PWR021" H 7750 5000 50  0001 C CNN
F 1 "+5V" H 7765 5323 50  0000 C CNN
F 2 "" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60451094
P 8600 5150
AR Path="/5FD99B6C/60451094" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60451094" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60451094" Ref="R?"  Part="1" 
AR Path="/60451094" Ref="R6"  Part="1" 
F 0 "R6" V 8807 5150 50  0000 C CNN
F 1 "150 ohm 5%" V 8716 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 5150 50  0001 C CNN
F 3 "~" H 8600 5150 50  0001 C CNN
	1    8600 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 5150 9200 5150
$Comp
L power:GND #PWR028
U 1 1 6046EADD
P 9950 5150
F 0 "#PWR028" H 9950 4900 50  0001 C CNN
F 1 "GND" H 9955 4977 50  0000 C CNN
F 2 "" H 9950 5150 50  0001 C CNN
F 3 "" H 9950 5150 50  0001 C CNN
	1    9950 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 5150 9950 5150
$Comp
L power:GND #PWR029
U 1 1 60476348
P 9950 5650
F 0 "#PWR029" H 9950 5400 50  0001 C CNN
F 1 "GND" H 9955 5477 50  0000 C CNN
F 2 "" H 9950 5650 50  0001 C CNN
F 3 "" H 9950 5650 50  0001 C CNN
	1    9950 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 5650 9950 5650
$Comp
L Device:R R?
U 1 1 60479F73
P 8600 5650
AR Path="/5FD99B6C/60479F73" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/60479F73" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/60479F73" Ref="R?"  Part="1" 
AR Path="/60479F73" Ref="R7"  Part="1" 
F 0 "R7" V 8807 5650 50  0000 C CNN
F 1 "55 ohm 5%" V 8716 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 5650 50  0001 C CNN
F 3 "~" H 8600 5650 50  0001 C CNN
	1    8600 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 5650 9200 5650
Wire Wire Line
	7750 5650 8450 5650
Wire Wire Line
	7750 5150 8450 5150
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 6036A900
P 3350 7350
AR Path="/5FDD4B9C/6036A900" Ref="J?"  Part="1" 
AR Path="/6036A900" Ref="J4"  Part="1" 
F 0 "J4" H 3400 7667 50  0000 C CNN
F 1 "ICSP" H 3400 7576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3350 7350 50  0001 C CNN
F 3 "~" H 3350 7350 50  0001 C CNN
	1    3350 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6036A909
P 3850 7250
AR Path="/5FDD4B9C/6036A909" Ref="#PWR?"  Part="1" 
AR Path="/6036A909" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3850 7100 50  0001 C CNN
F 1 "+5V" H 3865 7423 50  0000 C CNN
F 2 "" H 3850 7250 50  0001 C CNN
F 3 "" H 3850 7250 50  0001 C CNN
	1    3850 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6036A90F
P 3850 7450
AR Path="/5FDD4B9C/6036A90F" Ref="#PWR?"  Part="1" 
AR Path="/6036A90F" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 3850 7200 50  0001 C CNN
F 1 "GND" H 3855 7277 50  0000 C CNN
F 2 "" H 3850 7450 50  0001 C CNN
F 3 "" H 3850 7450 50  0001 C CNN
	1    3850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7250 3850 7250
Wire Wire Line
	3850 7350 3650 7350
Wire Wire Line
	3650 7450 3850 7450
Wire Wire Line
	2950 7250 3150 7250
Text GLabel 2950 7450 0    50   Input ~ 0
RESET
Wire Wire Line
	2950 7450 3150 7450
Wire Wire Line
	3150 7350 2950 7350
Text Notes 3250 6650 0    79   ~ 16
ICSP
Text GLabel 3850 3750 0    50   Input ~ 0
A4
Text GLabel 3850 4150 0    50   Input ~ 0
A5
Text GLabel 3850 3450 0    50   Input ~ 0
A2
Text GLabel 3850 3600 0    50   Input ~ 0
A3
Text GLabel 1000 2400 0    50   Input ~ 0
A0
Text GLabel 3850 3300 0    50   Input ~ 0
A1
Text GLabel 1000 4050 0    50   Input ~ 0
D7
Text GLabel 1000 3900 0    50   Input ~ 0
D6
Text GLabel 1000 3200 0    50   Input ~ 0
D12
Text GLabel 1000 2650 0    50   Input ~ 0
SDA
Text GLabel 1000 3600 0    50   Input ~ 0
D4
Text GLabel 1000 3750 0    50   Input ~ 0
D5
Text GLabel 3850 2850 0    50   Input ~ 0
D8
Text GLabel 3850 3000 0    50   Input ~ 0
D9
Text GLabel 3850 4000 0    50   Input ~ 0
D10
Text GLabel 1000 3050 0    50   Input ~ 0
D11
Text GLabel 1000 3350 0    50   Input ~ 0
D13
Text GLabel 1000 2800 0    50   Input ~ 0
SCL
Text GLabel 3850 7350 2    50   Input ~ 0
D16-MOSI
Text GLabel 2950 7250 0    50   Input ~ 0
D14-MISO
Text GLabel 2950 7350 0    50   Input ~ 0
D15-SCK
Text GLabel 3850 2550 0    50   Input ~ 0
D16-MOSI
Text GLabel 3850 2700 0    50   Input ~ 0
D14-MISO
Text GLabel 3850 2400 0    50   Input ~ 0
D15-SCK
Text Notes 5800 3050 1    50   ~ 0
PCINT5 … PCINT1
Wire Wire Line
	1050 5600 1200 5600
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 60675A93
P 850 5500
F 0 "J1" H 768 5075 50  0000 C CNN
F 1 "ESC_1" H 768 5166 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM05B-GHS-TBT_1x05-1MP_P1.25mm_Vertical" H 850 5500 50  0001 C CNN
F 3 "~" H 850 5500 50  0001 C CNN
F 4 "JST Sales America Inc." H 850 5500 50  0001 C CNN "Manufacturer"
F 5 "BM05B-GHS-TBT(LF)(SN)(N)" H 850 5500 50  0001 C CNN "Manufacturer #"
F 6 "455-1581-1-ND" H 850 5500 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM05B-GHS-TBT-LF-SN-N/807803?s=N4IgTCBcDaIEIFkAMBWOBaA4gCQMroBU4CQBdAXyA" H 850 5500 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    850  5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 606929E2
P 1700 5500
F 0 "#PWR05" H 1700 5250 50  0001 C CNN
F 1 "GND" H 1705 5327 50  0000 C CNN
F 2 "" H 1700 5500 50  0001 C CNN
F 3 "" H 1700 5500 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5500 1700 5500
$Comp
L power:GND #PWR07
U 1 1 60719E10
P 2600 5700
F 0 "#PWR07" H 2600 5450 50  0001 C CNN
F 1 "GND" H 2605 5527 50  0000 C CNN
F 2 "" H 2600 5700 50  0001 C CNN
F 3 "" H 2600 5700 50  0001 C CNN
	1    2600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5700 2600 5700
$Comp
L power:+5V #PWR06
U 1 1 60719E17
P 2600 5300
F 0 "#PWR06" H 2600 5150 50  0001 C CNN
F 1 "+5V" H 2615 5473 50  0000 C CNN
F 2 "" H 2600 5300 50  0001 C CNN
F 3 "" H 2600 5300 50  0001 C CNN
	1    2600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5300 2600 5300
Wire Wire Line
	2600 5400 2450 5400
Wire Wire Line
	2450 5600 2600 5600
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 60719E24
P 2250 5500
F 0 "J3" H 2168 5075 50  0000 C CNN
F 1 "ESC_2" H 2168 5166 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM05B-GHS-TBT_1x05-1MP_P1.25mm_Vertical" H 2250 5500 50  0001 C CNN
F 3 "~" H 2250 5500 50  0001 C CNN
F 4 "JST Sales America Inc." H 2250 5500 50  0001 C CNN "Manufacturer"
F 5 "BM05B-GHS-TBT(LF)(SN)(N)" H 2250 5500 50  0001 C CNN "Manufacturer #"
F 6 "455-1581-1-ND" H 2250 5500 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM05B-GHS-TBT-LF-SN-N/807803?s=N4IgTCBcDaIEIFkAMBWOBaA4gCQMroBU4CQBdAXyA" H 2250 5500 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2250 5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60719E2A
P 3100 5500
F 0 "#PWR08" H 3100 5250 50  0001 C CNN
F 1 "GND" H 3105 5327 50  0000 C CNN
F 2 "" H 3100 5500 50  0001 C CNN
F 3 "" H 3100 5500 50  0001 C CNN
	1    3100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5500 3100 5500
$Comp
L power:GND #PWR012
U 1 1 607255C7
P 4050 5700
F 0 "#PWR012" H 4050 5450 50  0001 C CNN
F 1 "GND" H 4055 5527 50  0000 C CNN
F 2 "" H 4050 5700 50  0001 C CNN
F 3 "" H 4050 5700 50  0001 C CNN
	1    4050 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5700 4050 5700
$Comp
L power:+5V #PWR011
U 1 1 607255CE
P 4050 5300
F 0 "#PWR011" H 4050 5150 50  0001 C CNN
F 1 "+5V" H 4065 5473 50  0000 C CNN
F 2 "" H 4050 5300 50  0001 C CNN
F 3 "" H 4050 5300 50  0001 C CNN
	1    4050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5300 4050 5300
Wire Wire Line
	4050 5400 3900 5400
Wire Wire Line
	3900 5600 4050 5600
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 607255DB
P 3700 5500
F 0 "J5" H 3618 5075 50  0000 C CNN
F 1 "ESC_3" H 3618 5166 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM05B-GHS-TBT_1x05-1MP_P1.25mm_Vertical" H 3700 5500 50  0001 C CNN
F 3 "~" H 3700 5500 50  0001 C CNN
F 4 "JST Sales America Inc." H 3700 5500 50  0001 C CNN "Manufacturer"
F 5 "BM05B-GHS-TBT(LF)(SN)(N)" H 3700 5500 50  0001 C CNN "Manufacturer #"
F 6 "455-1581-1-ND" H 3700 5500 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM05B-GHS-TBT-LF-SN-N/807803?s=N4IgTCBcDaIEIFkAMBWOBaA4gCQMroBU4CQBdAXyA" H 3700 5500 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    3700 5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 607255E1
P 4550 5500
F 0 "#PWR013" H 4550 5250 50  0001 C CNN
F 1 "GND" H 4555 5327 50  0000 C CNN
F 2 "" H 4550 5500 50  0001 C CNN
F 3 "" H 4550 5500 50  0001 C CNN
	1    4550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5500 4550 5500
$Comp
L power:GND #PWR017
U 1 1 6072CA89
P 5500 5700
F 0 "#PWR017" H 5500 5450 50  0001 C CNN
F 1 "GND" H 5505 5527 50  0000 C CNN
F 2 "" H 5500 5700 50  0001 C CNN
F 3 "" H 5500 5700 50  0001 C CNN
	1    5500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5700 5500 5700
$Comp
L power:+5V #PWR016
U 1 1 6072CA90
P 5500 5300
F 0 "#PWR016" H 5500 5150 50  0001 C CNN
F 1 "+5V" H 5515 5473 50  0000 C CNN
F 2 "" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0001 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5300 5500 5300
Wire Wire Line
	5500 5400 5350 5400
Wire Wire Line
	5350 5600 5500 5600
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 6072CA9D
P 5150 5500
F 0 "J7" H 5068 5075 50  0000 C CNN
F 1 "ESC_4" H 5068 5166 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM05B-GHS-TBT_1x05-1MP_P1.25mm_Vertical" H 5150 5500 50  0001 C CNN
F 3 "~" H 5150 5500 50  0001 C CNN
F 4 "JST Sales America Inc." H 5150 5500 50  0001 C CNN "Manufacturer"
F 5 "BM05B-GHS-TBT(LF)(SN)(N)" H 5150 5500 50  0001 C CNN "Manufacturer #"
F 6 "455-1581-1-ND" H 5150 5500 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/jst-sales-america-inc/BM05B-GHS-TBT-LF-SN-N/807803?s=N4IgTCBcDaIEIFkAMBWOBaA4gCQMroBU4CQBdAXyA" H 5150 5500 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    5150 5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 6072CAA3
P 6000 5500
F 0 "#PWR018" H 6000 5250 50  0001 C CNN
F 1 "GND" H 6005 5327 50  0000 C CNN
F 2 "" H 6000 5500 50  0001 C CNN
F 3 "" H 6000 5500 50  0001 C CNN
	1    6000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5500 6000 5500
$EndSCHEMATC
