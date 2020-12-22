EESchema Schematic File Version 4
LIBS:Main-Board-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title "Microcontroller"
Date "2020-12-21"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3450 4200 3200 4200
Wire Wire Line
	3200 4300 3450 4300
Wire Wire Line
	3450 4400 3200 4400
Wire Wire Line
	3200 4500 3450 4500
Wire Wire Line
	3450 4600 3200 4600
Wire Wire Line
	3200 4700 3450 4700
Text GLabel 3450 4700 2    50   Input ~ 0
D7
Text GLabel 3450 4600 2    50   Input ~ 0
D6
Text GLabel 3450 4500 2    50   Input ~ 0
D5
Text GLabel 3450 4400 2    50   Input ~ 0
D4
Text GLabel 3450 4300 2    50   Input ~ 0
D3
Text GLabel 3450 4200 2    50   Input ~ 0
D2
Text GLabel 4400 4100 2    50   Input ~ 0
TX
Text GLabel 4400 4000 2    50   Input ~ 0
RX
Wire Wire Line
	2600 5300 2600 5000
$Comp
L power:GND #PWR?
U 1 1 5FDD5866
P 2600 5300
AR Path="/5FDD5866" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FDD5866" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 2600 5050 50  0001 C CNN
F 1 "GND" H 2605 5127 50  0000 C CNN
F 2 "" H 2600 5300 50  0001 C CNN
F 3 "" H 2600 5300 50  0001 C CNN
	1    2600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3700 3200 3700
Wire Wire Line
	3200 3600 3450 3600
Text GLabel 3450 3700 2    50   Input ~ 0
A5_SCL
Text GLabel 3450 3600 2    50   Input ~ 0
A4_SDA
Wire Wire Line
	3450 3500 3200 3500
Text GLabel 3450 3500 2    50   Input ~ 0
A3
Wire Wire Line
	3450 3400 3200 3400
Text GLabel 3450 3400 2    50   Input ~ 0
A2
Wire Wire Line
	3450 3300 3200 3300
Wire Wire Line
	3450 3200 3200 3200
Wire Wire Line
	2000 2600 1750 2600
Wire Wire Line
	1750 2500 2000 2500
Text GLabel 1750 2500 0    50   Input ~ 0
A6
Text GLabel 1750 2600 0    50   Input ~ 0
A7
Text GLabel 3450 3300 2    50   Input ~ 0
A1
Text GLabel 3450 3200 2    50   Input ~ 0
A0
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5FDD587C
P 2600 3500
AR Path="/5FDD587C" Ref="U?"  Part="1" 
AR Path="/5FDD4B9C/5FDD587C" Ref="U4"  Part="1" 
F 0 "U4" H 2600 1911 50  0000 C CNN
F 1 "ATmega328P-AU" H 2600 1820 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2600 3500 50  0001 C CIN
F 3 "" H 2600 3500 50  0001 C CNN
F 4 "Microchip Technology" H 2600 3500 50  0001 C CNN "Manufacturer"
F 5 "ATMEGA328P-AU" H 2600 3500 50  0001 C CNN "Manufacturer #"
F 6 "ATMEGA328P-AU-ND" H 2600 3500 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/microchip-technology/ATMEGA328P-AU/1832260" H 2600 3500 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2600 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J8
U 1 1 5FDD6952
P 10200 2850
F 0 "J8" H 10250 3300 50  0000 R CNN
F 1 "USB_B_Micro" H 10400 3200 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 10350 2800 50  0001 C CNN
F 3 "~" H 10350 2800 50  0001 C CNN
F 4 "Molex" H 10200 2850 50  0001 C CNN "Manufacturer"
F 5 "105017-0001" H 10200 2850 50  0001 C CNN "Manufacturer #"
F 6 "WM1399CT-ND" H 10200 2850 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/molex/1050170001/2350832" H 10200 2850 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    10200 2850
	-1   0    0    -1  
$EndComp
$Comp
L Interface_USB:FT232RL U3
U 1 1 5FDD712D
P 7850 2300
F 0 "U3" H 7850 3481 50  0000 C CNN
F 1 "FT232RL" H 7850 3390 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 7850 2300 50  0001 C CNN
F 3 "" H 7850 2300 50  0001 C CNN
F 4 "FTDI, Future Technology Devices International Ltd" H 7850 2300 50  0001 C CNN "Manufacturer"
F 5 "FT232RL-REEL" H 7850 2300 50  0001 C CNN "Manufacturer #"
F 6 "768-1007-1-ND" H 7850 2300 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/ftdi-future-technology-devices-international-ltd/FT232RL-REEL/1836385" H 7850 2300 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7850 2300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FDDD3A0
P 9400 1750
AR Path="/5FD99B6C/5FDDD3A0" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FDDD3A0" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FDDD3A0" Ref="C10"  Part="1" 
F 0 "C10" H 9515 1796 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 9515 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9438 1600 50  0001 C CNN
F 3 "~" H 9400 1750 50  0001 C CNN
	1    9400 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5FDDDC15
P 9400 2000
F 0 "#PWR041" H 9400 1750 50  0001 C CNN
F 1 "GND" H 9405 1827 50  0000 C CNN
F 2 "" H 9400 2000 50  0001 C CNN
F 3 "" H 9400 2000 50  0001 C CNN
	1    9400 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 1600 9400 1600
Wire Wire Line
	9400 1900 9400 2000
$Comp
L power:VBUS #PWR042
U 1 1 5FDE042A
P 9400 2550
F 0 "#PWR042" H 9400 2400 50  0001 C CNN
F 1 "VBUS" H 9415 2723 50  0000 C CNN
F 2 "" H 9400 2550 50  0001 C CNN
F 3 "" H 9400 2550 50  0001 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR039
U 1 1 5FDE216F
P 9400 1300
F 0 "#PWR039" H 9400 1150 50  0001 C CNN
F 1 "+3.3V" H 9415 1473 50  0000 C CNN
F 2 "" H 9400 1300 50  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
	1    9400 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 1600 9400 1300
Connection ~ 9400 1600
$Comp
L Device:Polyfuse_Small F1
U 1 1 5FDED7D4
P 9700 2650
F 0 "F1" H 9800 2600 50  0000 C CNN
F 1 "PTC 15V 500mA" H 10050 2700 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9750 2450 50  0001 L CNN
F 3 "~" H 9700 2650 50  0001 C CNN
F 4 "Eaton - Electronics Division" H 9700 2650 50  0001 C CNN "Manufacturer"
F 5 "PTS120615V050" H 9700 2650 50  0001 C CNN "Manufacturer #"
F 6 "283-3140-1-ND" H 9700 2650 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/eaton-electronics-division/PTS120615V050/2639137" H 9700 2650 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    9700 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	9400 2550 9400 2650
Wire Wire Line
	9400 2650 9600 2650
Wire Wire Line
	9800 2650 9900 2650
Wire Wire Line
	8650 1900 9250 1900
Wire Wire Line
	9250 1900 9250 2850
Wire Wire Line
	9250 2850 9900 2850
Wire Wire Line
	8650 2000 9150 2000
Wire Wire Line
	9150 2000 9150 2950
Wire Wire Line
	9150 2950 9900 2950
$Comp
L power:GND #PWR047
U 1 1 5FDF14CF
P 10200 3350
F 0 "#PWR047" H 10200 3100 50  0001 C CNN
F 1 "GND" H 10205 3177 50  0000 C CNN
F 2 "" H 10200 3350 50  0001 C CNN
F 3 "" H 10200 3350 50  0001 C CNN
	1    10200 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 3250 10200 3300
Wire Wire Line
	10300 3250 10300 3300
Wire Wire Line
	10300 3300 10200 3300
Connection ~ 10200 3300
Wire Wire Line
	10200 3300 10200 3350
$Comp
L power:GND #PWR048
U 1 1 5FDF2520
P 8050 3450
F 0 "#PWR048" H 8050 3200 50  0001 C CNN
F 1 "GND" H 8055 3277 50  0000 C CNN
F 2 "" H 8050 3450 50  0001 C CNN
F 3 "" H 8050 3450 50  0001 C CNN
	1    8050 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5FDF4FEF
P 8800 3000
F 0 "#PWR046" H 8800 2750 50  0001 C CNN
F 1 "GND" H 8805 2827 50  0000 C CNN
F 2 "" H 8800 3000 50  0001 C CNN
F 3 "" H 8800 3000 50  0001 C CNN
	1    8800 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 3000 8800 3000
Text GLabel 6600 1700 0    50   Input ~ 0
TX
Text GLabel 6600 1600 0    50   Input ~ 0
RX
Wire Wire Line
	6600 1600 7050 1600
Wire Wire Line
	6600 1700 7050 1700
$Comp
L power:+5V #PWR037
U 1 1 5FDF97EF
P 8300 1100
F 0 "#PWR037" H 8300 950 50  0001 C CNN
F 1 "+5V" H 8315 1273 50  0000 C CNN
F 2 "" H 8300 1100 50  0001 C CNN
F 3 "" H 8300 1100 50  0001 C CNN
	1    8300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1300 7950 1300
Connection ~ 7950 1300
Wire Wire Line
	8050 3300 8050 3450
Wire Wire Line
	7650 3300 7750 3300
Connection ~ 8050 3300
Connection ~ 7750 3300
Wire Wire Line
	7750 3300 7850 3300
Connection ~ 7850 3300
Wire Wire Line
	7850 3300 8050 3300
$Comp
L Device:C C?
U 1 1 5FDFD588
P 6100 2000
AR Path="/5FD99B6C/5FDFD588" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FDFD588" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FDFD588" Ref="C11"  Part="1" 
F 0 "C11" H 6215 2046 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 6215 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6138 1850 50  0001 C CNN
F 3 "~" H 6100 2000 50  0001 C CNN
	1    6100 2000
	0    -1   -1   0   
$EndComp
Text GLabel 3450 3800 2    50   Input ~ 0
RESET
Wire Wire Line
	3200 3800 3450 3800
Text GLabel 5700 2000 0    50   Input ~ 0
RESET
Wire Wire Line
	7050 2000 6250 2000
Wire Wire Line
	5950 2000 5700 2000
$Comp
L power:+5V #PWR043
U 1 1 5FE06365
P 5250 2600
F 0 "#PWR043" H 5250 2450 50  0001 C CNN
F 1 "+5V" H 5265 2773 50  0000 C CNN
F 2 "" H 5250 2600 50  0001 C CNN
F 3 "" H 5250 2600 50  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5FE081E4
P 5600 2600
F 0 "R16" V 5393 2600 50  0000 C CNN
F 1 "200 ohm 5%" V 5484 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5530 2600 50  0001 C CNN
F 3 "~" H 5600 2600 50  0001 C CNN
	1    5600 2600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR045
U 1 1 5FE0F873
P 5250 3000
F 0 "#PWR045" H 5250 2850 50  0001 C CNN
F 1 "+5V" H 5265 3173 50  0000 C CNN
F 2 "" H 5250 3000 50  0001 C CNN
F 3 "" H 5250 3000 50  0001 C CNN
	1    5250 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5FE0F87F
P 6300 3000
F 0 "D3" H 6293 2745 50  0000 C CNN
F 1 "Orange 1.9V 20mA" H 6293 2836 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6300 3000 50  0001 C CNN
F 3 "~" H 6300 3000 50  0001 C CNN
	1    6300 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2600 5450 2600
Wire Wire Line
	6450 2600 7050 2600
Wire Wire Line
	5250 3000 5450 3000
Wire Wire Line
	7050 2700 6800 2700
Wire Wire Line
	6800 2700 6800 3000
Wire Wire Line
	6800 3000 6450 3000
$Comp
L Device:C C?
U 1 1 5FE1D929
P 9000 5950
AR Path="/5FD99B6C/5FE1D929" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FE1D929" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FE1D929" Ref="C17"  Part="1" 
F 0 "C17" H 9115 5996 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 9115 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9038 5800 50  0001 C CNN
F 3 "~" H 9000 5950 50  0001 C CNN
	1    9000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR058
U 1 1 5FE2169A
P 8800 5600
F 0 "#PWR058" H 8800 5450 50  0001 C CNN
F 1 "VBUS" H 8815 5773 50  0000 C CNN
F 2 "" H 8800 5600 50  0001 C CNN
F 3 "" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5800 8600 5650
Wire Wire Line
	9000 5650 9000 5800
$Comp
L power:GND #PWR063
U 1 1 5FE2B2D7
P 8800 6300
F 0 "#PWR063" H 8800 6050 50  0001 C CNN
F 1 "GND" H 8805 6127 50  0000 C CNN
F 2 "" H 8800 6300 50  0001 C CNN
F 3 "" H 8800 6300 50  0001 C CNN
	1    8800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 6100 8600 6250
Wire Wire Line
	9000 6250 9000 6100
Wire Wire Line
	8600 5650 8800 5650
Wire Wire Line
	8600 6250 8800 6250
Wire Wire Line
	8800 6300 8800 6250
Connection ~ 8800 6250
Wire Wire Line
	8800 6250 9000 6250
Wire Wire Line
	8800 5650 8800 5600
Connection ~ 8800 5650
Wire Wire Line
	8800 5650 9000 5650
$Comp
L power:VBUS #PWR060
U 1 1 5FE393FE
P 7150 5850
F 0 "#PWR060" H 7150 5700 50  0001 C CNN
F 1 "VBUS" H 7165 6023 50  0000 C CNN
F 2 "" H 7150 5850 50  0001 C CNN
F 3 "" H 7150 5850 50  0001 C CNN
	1    7150 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR059
U 1 1 5FE3AAD7
P 6550 5850
F 0 "#PWR059" H 6550 5700 50  0001 C CNN
F 1 "+5V" H 6565 6023 50  0000 C CNN
F 2 "" H 6550 5850 50  0001 C CNN
F 3 "" H 6550 5850 50  0001 C CNN
	1    6550 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D6
U 1 1 5FE3E5F4
P 6850 6100
F 0 "D6" H 6850 6316 50  0000 C CNN
F 1 "SS1P3L" H 6850 6225 50  0000 C CNN
F 2 "Custom:SS1P3L" H 6850 6100 50  0001 C CNN
F 3 "~" H 6850 6100 50  0001 C CNN
F 4 "Vishay Semiconductor Diodes Division" H 6850 6100 50  0001 C CNN "Manufacturer"
F 5 "MSS1P3LHM3_A/H" H 6850 6100 50  0001 C CNN "Manufacturer #"
F 6 "MSS1P3LHM3_A/HGICT-ND" H 6850 6100 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/vishay-semiconductor-diodes-division/MSS1P3LHM3_A-H/7594340" H 6850 6100 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    6850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5850 6550 6100
Wire Wire Line
	6550 6100 6700 6100
Wire Wire Line
	7000 6100 7150 6100
Wire Wire Line
	7150 6100 7150 5850
$Comp
L power:+5V #PWR050
U 1 1 5FE4FD6A
P 7850 4450
F 0 "#PWR050" H 7850 4300 50  0001 C CNN
F 1 "+5V" H 7865 4623 50  0000 C CNN
F 2 "" H 7850 4450 50  0001 C CNN
F 3 "" H 7850 4450 50  0001 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4450 7850 4550
$Comp
L power:GND #PWR052
U 1 1 5FE5885B
P 6900 5050
F 0 "#PWR052" H 6900 4800 50  0001 C CNN
F 1 "GND" H 6905 4877 50  0000 C CNN
F 2 "" H 6900 5050 50  0001 C CNN
F 3 "" H 6900 5050 50  0001 C CNN
	1    6900 5050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FE5E0DF
P 8250 4800
AR Path="/5FD99B6C/5FE5E0DF" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FE5E0DF" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FE5E0DF" Ref="C15"  Part="1" 
F 0 "C15" H 8365 4846 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 8365 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8288 4650 50  0001 C CNN
F 3 "~" H 8250 4800 50  0001 C CNN
	1    8250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4550 8250 4650
$Comp
L power:GND #PWR054
U 1 1 5FE615C0
P 8250 5050
F 0 "#PWR054" H 8250 4800 50  0001 C CNN
F 1 "GND" H 8255 4877 50  0000 C CNN
F 2 "" H 8250 5050 50  0001 C CNN
F 3 "" H 8250 5050 50  0001 C CNN
	1    8250 5050
	-1   0    0    -1  
$EndComp
Connection ~ 8250 4550
$Comp
L Device:R R20
U 1 1 5FE75985
P 8750 4550
F 0 "R20" V 8543 4550 50  0000 C CNN
F 1 "150 ohm 5%" V 8634 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8680 4550 50  0001 C CNN
F 3 "~" H 8750 4550 50  0001 C CNN
	1    8750 4550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FE7D361
P 9200 4800
F 0 "D4" V 9239 4682 50  0000 R CNN
F 1 "Green 2.2V 20mA" V 9148 4682 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9200 4800 50  0001 C CNN
F 3 "~" H 9200 4800 50  0001 C CNN
	1    9200 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR055
U 1 1 5FE7F368
P 9200 5050
F 0 "#PWR055" H 9200 4800 50  0001 C CNN
F 1 "GND" H 9205 4877 50  0000 C CNN
F 2 "" H 9200 5050 50  0001 C CNN
F 3 "" H 9200 5050 50  0001 C CNN
	1    9200 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 4650 9200 4550
Wire Wire Line
	6900 4850 6900 5050
Wire Wire Line
	8250 5050 8250 4950
Wire Wire Line
	9200 5050 9200 4950
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J9
U 1 1 5FE91946
P 2600 6950
F 0 "J9" H 2650 7267 50  0000 C CNN
F 1 "ICSP" H 2650 7176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2600 6950 50  0001 C CNN
F 3 "~" H 2600 6950 50  0001 C CNN
	1    2600 6950
	-1   0    0    1   
$EndComp
Text GLabel 2100 7050 0    50   Input ~ 0
RESET
$Comp
L power:GND #PWR066
U 1 1 5FE94089
P 3000 7050
F 0 "#PWR066" H 3000 6800 50  0001 C CNN
F 1 "GND" H 3005 6877 50  0000 C CNN
F 2 "" H 3000 7050 50  0001 C CNN
F 3 "" H 3000 7050 50  0001 C CNN
	1    3000 7050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 7050 2300 7050
Wire Wire Line
	2800 7050 3000 7050
$Comp
L power:+5V #PWR064
U 1 1 5FE9C160
P 3000 6850
F 0 "#PWR064" H 3000 6700 50  0001 C CNN
F 1 "+5V" H 3015 7023 50  0000 C CNN
F 2 "" H 3000 6850 50  0001 C CNN
F 3 "" H 3000 6850 50  0001 C CNN
	1    3000 6850
	1    0    0    -1  
$EndComp
Text GLabel 3000 6950 2    50   Input ~ 0
D11
Text GLabel 2100 6850 0    50   Input ~ 0
D12
Text GLabel 2100 6950 0    50   Input ~ 0
D13
Wire Wire Line
	2100 6850 2300 6850
Wire Wire Line
	2300 6950 2100 6950
Wire Wire Line
	2800 6850 3000 6850
Wire Wire Line
	3000 6950 2800 6950
$Comp
L power:GND #PWR061
U 1 1 5FEF5DEF
P 750 5900
F 0 "#PWR061" H 750 5650 50  0001 C CNN
F 1 "GND" H 755 5727 50  0000 C CNN
F 2 "" H 750 5900 50  0001 C CNN
F 3 "" H 750 5900 50  0001 C CNN
	1    750  5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5900 750  5900
Text GLabel 2000 5900 2    50   Input ~ 0
RESET
$Comp
L Device:R R?
U 1 1 5FF130A7
P 1650 5550
AR Path="/5FD99B6C/5FF130A7" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FF130A7" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/5FF130A7" Ref="R21"  Part="1" 
F 0 "R21" V 1857 5550 50  0000 C CNN
F 1 "1 kohm 5%" V 1766 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR056
U 1 1 5FF18C00
P 1650 5250
F 0 "#PWR056" H 1650 5100 50  0001 C CNN
F 1 "+5V" H 1665 5423 50  0000 C CNN
F 2 "" H 1650 5250 50  0001 C CNN
F 3 "" H 1650 5250 50  0001 C CNN
	1    1650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5400 1650 5250
Wire Wire Line
	1300 5900 1650 5900
Wire Wire Line
	1650 5700 1650 5900
Connection ~ 1650 5900
Wire Wire Line
	1650 5900 2000 5900
$Comp
L Device:C C?
U 1 1 5FF2F0D6
P 1050 2750
AR Path="/5FD99B6C/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF2F0D6" Ref="C12"  Part="1" 
F 0 "C12" H 1165 2796 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 1165 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1088 2600 50  0001 C CNN
F 3 "~" H 1050 2750 50  0001 C CNN
	1    1050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2600 1050 2300
$Comp
L power:GND #PWR?
U 1 1 5FF3E163
P 1050 3000
AR Path="/5FF3E163" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FF3E163" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 1050 2750 50  0001 C CNN
F 1 "GND" H 1055 2827 50  0000 C CNN
F 2 "" H 1050 3000 50  0001 C CNN
F 3 "" H 1050 3000 50  0001 C CNN
	1    1050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3000 1050 2900
Wire Wire Line
	3450 2800 3200 2800
Text GLabel 3450 2800 2    50   Input ~ 0
D13
Text GLabel 3450 2700 2    50   Input ~ 0
D12
Text GLabel 3450 2600 2    50   Input ~ 0
D11
Text GLabel 3450 2500 2    50   Input ~ 0
D10
Text GLabel 3450 2400 2    50   Input ~ 0
D9
Text GLabel 3450 2300 2    50   Input ~ 0
D8
Wire Wire Line
	3200 2300 3450 2300
Wire Wire Line
	3450 2400 3200 2400
Wire Wire Line
	3200 2500 3450 2500
Wire Wire Line
	3450 2600 3200 2600
Wire Wire Line
	3200 2700 3450 2700
Text GLabel 3000 5900 0    50   Input ~ 0
D13
Wire Wire Line
	3000 5900 3250 5900
Wire Wire Line
	4250 5900 4500 5900
$Comp
L power:GND #PWR062
U 1 1 5FFB2A37
P 4500 5900
F 0 "#PWR062" H 4500 5650 50  0001 C CNN
F 1 "GND" H 4505 5727 50  0000 C CNN
F 2 "" H 4500 5900 50  0001 C CNN
F 3 "" H 4500 5900 50  0001 C CNN
	1    4500 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5FFC9EA0
P 4000 4000
F 0 "R18" V 3793 4000 50  0000 C CNN
F 1 "1 kohm 5%" V 3884 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 4000 50  0001 C CNN
F 3 "~" H 4000 4000 50  0001 C CNN
	1    4000 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 4000 4400 4000
$Comp
L Device:R R19
U 1 1 5FFCE977
P 4000 4100
F 0 "R19" V 4207 4100 50  0000 C CNN
F 1 "1 kohm 5%" V 4116 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 4100 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 4100 4400 4100
$Comp
L Device:CP C8
U 1 1 5FFF2594
P 2200 1550
F 0 "C8" H 2318 1596 50  0000 L CNN
F 1 "4.7uF 10V 20%" H 2318 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 1400 50  0001 C CNN
F 3 "~" H 2200 1550 50  0001 C CNN
	1    2200 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFF6D3F
P 3150 1550
AR Path="/5FD99B6C/5FFF6D3F" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FFF6D3F" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FFF6D3F" Ref="C9"  Part="1" 
F 0 "C9" H 3265 1596 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 3265 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 1400 50  0001 C CNN
F 3 "~" H 3150 1550 50  0001 C CNN
	1    3150 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60005570
P 1400 1550
AR Path="/5FD99B6C/60005570" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/60005570" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/60005570" Ref="C7"  Part="1" 
F 0 "C7" H 1515 1596 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 1515 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1438 1400 50  0001 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
	1    1400 1550
	-1   0    0    1   
$EndComp
Connection ~ 2200 1700
Connection ~ 2200 1400
$Comp
L power:GND #PWR040
U 1 1 6002F3CE
P 2200 1800
F 0 "#PWR040" H 2200 1550 50  0001 C CNN
F 1 "GND" H 2205 1627 50  0000 C CNN
F 2 "" H 2200 1800 50  0001 C CNN
F 3 "" H 2200 1800 50  0001 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1700 2200 1800
$Comp
L power:+5V #PWR038
U 1 1 6004057F
P 2200 1200
F 0 "#PWR038" H 2200 1050 50  0001 C CNN
F 1 "+5V" H 2215 1373 50  0000 C CNN
F 2 "" H 2200 1200 50  0001 C CNN
F 3 "" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1200 2200 1400
Wire Wire Line
	2600 2000 2700 2000
Wire Wire Line
	2700 2000 3300 2000
Wire Wire Line
	3300 2000 3300 1400
Connection ~ 2700 2000
Text Notes 7500 750  0    79   ~ 16
USB Interface
Wire Wire Line
	3300 1400 3150 1400
Text Notes 2150 750  0    79   ~ 16
Microcontroller
Text Notes 7000 4050 0    79   ~ 16
5V Regulation and Selection
Wire Wire Line
	5750 3000 6150 3000
Wire Wire Line
	5750 2600 6150 2600
$Comp
L Device:LED D2
U 1 1 6028A409
P 6300 2600
F 0 "D2" H 6293 2345 50  0000 C CNN
F 1 "Orange 1.9V 20mA" H 6293 2436 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6300 2600 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6300 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 6029A343
P 5600 3000
F 0 "R17" V 5393 3000 50  0000 C CNN
F 1 "200 ohm 5%" V 5484 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5530 3000 50  0001 C CNN
F 3 "~" H 5600 3000 50  0001 C CNN
	1    5600 3000
	0    1    1    0   
$EndComp
$Comp
L Device:CP C16
U 1 1 5FE1EC4C
P 8600 5950
F 0 "C16" H 8482 5996 50  0000 R CNN
F 1 "4.7uF 10V 20%" H 8482 5905 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8638 5800 50  0001 C CNN
F 3 "~" H 8600 5950 50  0001 C CNN
	1    8600 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 602CE813
P 4100 5900
F 0 "D5" H 4150 5650 50  0000 R CNN
F 1 "Green 2.2V 20mA" H 4450 5750 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4100 5900 50  0001 C CNN
F 3 "~" H 4100 5900 50  0001 C CNN
	1    4100 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 602E95FC
P 3400 5900
F 0 "R22" V 3193 5900 50  0000 C CNN
F 1 "200 ohm 5%" V 3284 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3330 5900 50  0001 C CNN
F 3 "~" H 3400 5900 50  0001 C CNN
	1    3400 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 5900 3950 5900
Text Notes 2400 6600 0    79   ~ 16
ICSP
$Comp
L Custom:Push-Switch SW1
U 1 1 5FDF717A
P 1100 5850
F 0 "SW1" H 1100 6085 50  0000 C CNN
F 1 "Reset" H 1100 5994 50  0000 C CNN
F 2 "Custom:Switch" H 1100 6100 50  0001 C CNN
F 3 "" H 1100 6100 50  0001 C CNN
F 4 "C&K" H 1100 5850 50  0001 C CNN "Manufacturer"
F 5 "RS-187R05A2-DS MT RT" H 1100 5850 50  0001 C CNN "Manufacturer #"
F 6 "CKN10361CT-ND" H 1100 5850 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/c-k/RS-187R05A2-DS-MT-RT/2747186?s=N4IgTCBcDaIMIGkByBGADAZgGwrgFQFokAREAXQF8g" H 1100 5850 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    1100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4550 8600 4550
Wire Wire Line
	8900 4550 9200 4550
Connection ~ 3150 1400
Wire Wire Line
	2200 1400 3150 1400
Wire Wire Line
	1400 1400 2200 1400
Wire Wire Line
	1400 1700 2200 1700
Wire Wire Line
	2200 1700 3150 1700
Wire Wire Line
	3200 4000 3850 4000
Wire Wire Line
	3200 4100 3850 4100
$Comp
L Custom:LM1117-5.0 U5
U 1 1 601353AD
P 6900 4600
F 0 "U5" H 6900 4892 50  0000 C CNN
F 1 "LM1117-5.0" H 6900 4801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 7050 4400 50  0001 C CNN
F 3 "" H 7050 4400 50  0001 C CNN
F 4 "Texas Instruments" H 6900 4600 50  0001 C CNN "Manufacturer"
F 5 "LM1117IMP-5.0/NOPBCT-ND" H 6900 4600 50  0001 C CNN "Digi-Key #"
F 6 "https://www.digikey.ca/en/products/detail/texas-instruments/LM1117IMP-5-0-NOPB/482940" H 6900 4600 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
F 7 "LM1117IMP-5.0/NOPB" H 6900 4600 50  0001 C CNN "Manufacturer #"
	1    6900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4650 7200 4550
Wire Wire Line
	6400 4550 6600 4550
$Comp
L power:VDD #PWR049
U 1 1 5FE4D61A
P 6400 4450
F 0 "#PWR049" H 6400 4300 50  0001 C CNN
F 1 "VDD" H 6417 4623 50  0000 C CNN
F 2 "" H 6400 4450 50  0001 C CNN
F 3 "" H 6400 4450 50  0001 C CNN
	1    6400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C14
U 1 1 601633A8
P 7450 4800
F 0 "C14" H 7332 4846 50  0000 R CNN
F 1 "10uF 25V 20%" H 7332 4755 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7488 4650 50  0001 C CNN
F 3 "~" H 7450 4800 50  0001 C CNN
	1    7450 4800
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 60171634
P 6400 4800
F 0 "C13" H 6282 4846 50  0000 R CNN
F 1 "10uF 25V 20%" H 6282 4755 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6438 4650 50  0001 C CNN
F 3 "~" H 6400 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
Connection ~ 6400 4550
Connection ~ 7200 4550
Wire Wire Line
	7450 4650 7450 4550
$Comp
L power:GND #PWR053
U 1 1 601A358C
P 7450 5050
F 0 "#PWR053" H 7450 4800 50  0001 C CNN
F 1 "GND" H 7455 4877 50  0000 C CNN
F 2 "" H 7450 5050 50  0001 C CNN
F 3 "" H 7450 5050 50  0001 C CNN
	1    7450 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 5050 7450 4950
$Comp
L power:GND #PWR051
U 1 1 601A9AE4
P 6400 5050
F 0 "#PWR051" H 6400 4800 50  0001 C CNN
F 1 "GND" H 6405 4877 50  0000 C CNN
F 2 "" H 6400 5050 50  0001 C CNN
F 3 "" H 6400 5050 50  0001 C CNN
	1    6400 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 5050 6400 4950
Wire Wire Line
	6400 4550 6400 4650
Wire Wire Line
	6400 4450 6400 4550
Connection ~ 7450 4550
Wire Wire Line
	7450 4550 7850 4550
Wire Wire Line
	7200 4550 7450 4550
Connection ~ 7850 4550
Wire Wire Line
	7850 4550 8250 4550
Wire Wire Line
	1050 2300 2000 2300
$Comp
L Device:Resonator Y1
U 1 1 60255C7D
P 4300 2950
F 0 "Y1" V 4346 3061 50  0000 L CNN
F 1 "16 MHz" V 4255 3061 50  0000 L CNN
F 2 "Custom:Resonator" H 4275 2950 50  0001 C CNN
F 3 "~" H 4275 2950 50  0001 C CNN
F 4 "Murata Electronics" H 4300 2950 50  0001 C CNN "Manufacturer"
F 5 "CSTNE16M0VH3L000R0" H 4300 2950 50  0001 C CNN "Manufacturer #"
F 6 "490-17952-1-ND" H 4300 2950 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/murata-electronics/CSTNE16M0VH3L000R0/8747733" H 4300 2950 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    4300 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 2900 3750 2800
Wire Wire Line
	3200 2900 3750 2900
Wire Wire Line
	3750 3100 4300 3100
Wire Wire Line
	3750 2800 4300 2800
Wire Wire Line
	3750 3100 3750 3000
Wire Wire Line
	3200 3000 3750 3000
$Comp
L power:GND #PWR0101
U 1 1 60296342
P 4650 2950
F 0 "#PWR0101" H 4650 2700 50  0001 C CNN
F 1 "GND" H 4655 2777 50  0000 C CNN
F 2 "" H 4650 2950 50  0001 C CNN
F 3 "" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2950 4650 2950
$Comp
L Device:C C?
U 1 1 60464E5D
P 8700 1300
AR Path="/5FD99B6C/60464E5D" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/60464E5D" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/60464E5D" Ref="C18"  Part="1" 
F 0 "C18" V 8950 1250 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" V 8850 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8738 1150 50  0001 C CNN
F 3 "~" H 8700 1300 50  0001 C CNN
	1    8700 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6048B115
P 8900 1350
F 0 "#PWR0102" H 8900 1100 50  0001 C CNN
F 1 "GND" H 8905 1177 50  0000 C CNN
F 2 "" H 8900 1350 50  0001 C CNN
F 3 "" H 8900 1350 50  0001 C CNN
	1    8900 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 1300 8900 1300
Wire Wire Line
	8900 1300 8900 1350
Wire Wire Line
	7950 1300 8300 1300
Wire Wire Line
	8300 1100 8300 1300
Connection ~ 8300 1300
Wire Wire Line
	8300 1300 8550 1300
$EndSCHEMATC
