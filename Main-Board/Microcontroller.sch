EESchema Schematic File Version 4
LIBS:Main-Board-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 3
Title "Microcontroller"
Date "2020-12-15"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3350 4200 3100 4200
Wire Wire Line
	3100 4300 3350 4300
Wire Wire Line
	3350 4400 3100 4400
Wire Wire Line
	3100 4500 3350 4500
Wire Wire Line
	3350 4600 3100 4600
Wire Wire Line
	3100 4700 3350 4700
Text GLabel 3350 4700 2    50   Input ~ 0
D7
Text GLabel 3350 4600 2    50   Input ~ 0
D6
Text GLabel 3350 4500 2    50   Input ~ 0
D5
Text GLabel 3350 4400 2    50   Input ~ 0
D4
Text GLabel 3350 4300 2    50   Input ~ 0
D3
Text GLabel 3350 4200 2    50   Input ~ 0
D2
Text GLabel 4150 4100 2    50   Input ~ 0
TX
Text GLabel 4150 4000 2    50   Input ~ 0
RX
Wire Wire Line
	2500 5300 2500 5000
$Comp
L power:GND #PWR?
U 1 1 5FDD5866
P 2500 5300
AR Path="/5FDD5866" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FDD5866" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2500 5050 50  0001 C CNN
F 1 "GND" H 2505 5127 50  0000 C CNN
F 2 "" H 2500 5300 50  0001 C CNN
F 3 "" H 2500 5300 50  0001 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3700 3100 3700
Wire Wire Line
	3100 3600 3350 3600
Text GLabel 3350 3700 2    50   Input ~ 0
A5_SCL
Text GLabel 3350 3600 2    50   Input ~ 0
A4_SDA
Wire Wire Line
	3350 3500 3100 3500
Text GLabel 3350 3500 2    50   Input ~ 0
A3
Wire Wire Line
	3350 3400 3100 3400
Text GLabel 3350 3400 2    50   Input ~ 0
A2
Wire Wire Line
	3350 3300 3100 3300
Wire Wire Line
	3350 3200 3100 3200
Wire Wire Line
	1900 2600 1650 2600
Wire Wire Line
	1650 2500 1900 2500
Text GLabel 1650 2500 0    50   Input ~ 0
A6
Text GLabel 1650 2600 0    50   Input ~ 0
A7
Text GLabel 3350 3300 2    50   Input ~ 0
A1
Text GLabel 3350 3200 2    50   Input ~ 0
A0
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5FDD587C
P 2500 3500
AR Path="/5FDD587C" Ref="U?"  Part="1" 
AR Path="/5FDD4B9C/5FDD587C" Ref="U?"  Part="1" 
F 0 "U?" H 2500 1911 50  0000 C CNN
F 1 "ATmega328P-AU" H 2500 1820 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2500 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2500 3500 50  0001 C CNN
	1    2500 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5FDD6952
P 10200 2500
F 0 "J?" H 10257 2967 50  0000 C CNN
F 1 "USB_B_Micro" H 10257 2876 50  0000 C CNN
F 2 "" H 10350 2450 50  0001 C CNN
F 3 "~" H 10350 2450 50  0001 C CNN
	1    10200 2500
	-1   0    0    -1  
$EndComp
$Comp
L Interface_USB:FT232RL U?
U 1 1 5FDD712D
P 7850 1950
F 0 "U?" H 7850 3131 50  0000 C CNN
F 1 "FT232RL" H 7850 3040 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 7850 1950 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 7850 1950 50  0001 C CNN
	1    7850 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FDDD3A0
P 9400 1400
AR Path="/5FD99B6C/5FDDD3A0" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FDDD3A0" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FDDD3A0" Ref="C?"  Part="1" 
F 0 "C?" H 9515 1446 50  0000 L CNN
F 1 "X7R, 100nF 10%" H 9515 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9438 1250 50  0001 C CNN
F 3 "~" H 9400 1400 50  0001 C CNN
	1    9400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDDDC15
P 9400 1650
F 0 "#PWR?" H 9400 1400 50  0001 C CNN
F 1 "GND" H 9405 1477 50  0000 C CNN
F 2 "" H 9400 1650 50  0001 C CNN
F 3 "" H 9400 1650 50  0001 C CNN
	1    9400 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 1250 9400 1250
Wire Wire Line
	9400 1550 9400 1650
$Comp
L power:VBUS #PWR?
U 1 1 5FDE042A
P 9400 2200
F 0 "#PWR?" H 9400 2050 50  0001 C CNN
F 1 "VBUS" H 9415 2373 50  0000 C CNN
F 2 "" H 9400 2200 50  0001 C CNN
F 3 "" H 9400 2200 50  0001 C CNN
	1    9400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FDE216F
P 9400 950
F 0 "#PWR?" H 9400 800 50  0001 C CNN
F 1 "+3.3V" H 9415 1123 50  0000 C CNN
F 2 "" H 9400 950 50  0001 C CNN
F 3 "" H 9400 950 50  0001 C CNN
	1    9400 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 1250 9400 950 
Connection ~ 9400 1250
$Comp
L Device:Polyfuse_Small F?
U 1 1 5FDED7D4
P 9700 2300
F 0 "F?" H 9768 2346 50  0000 L CNN
F 1 "Polyfuse_Small" H 9768 2255 50  0000 L CNN
F 2 "" H 9750 2100 50  0001 L CNN
F 3 "~" H 9700 2300 50  0001 C CNN
	1    9700 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	9400 2200 9400 2300
Wire Wire Line
	9400 2300 9600 2300
Wire Wire Line
	9800 2300 9900 2300
Wire Wire Line
	8650 1550 9250 1550
Wire Wire Line
	9250 1550 9250 2500
Wire Wire Line
	9250 2500 9900 2500
Wire Wire Line
	8650 1650 9150 1650
Wire Wire Line
	9150 1650 9150 2600
Wire Wire Line
	9150 2600 9900 2600
$Comp
L power:GND #PWR?
U 1 1 5FDF14CF
P 10200 3000
F 0 "#PWR?" H 10200 2750 50  0001 C CNN
F 1 "GND" H 10205 2827 50  0000 C CNN
F 2 "" H 10200 3000 50  0001 C CNN
F 3 "" H 10200 3000 50  0001 C CNN
	1    10200 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2900 10200 2950
Wire Wire Line
	10300 2900 10300 2950
Wire Wire Line
	10300 2950 10200 2950
Connection ~ 10200 2950
Wire Wire Line
	10200 2950 10200 3000
$Comp
L power:GND #PWR?
U 1 1 5FDF2520
P 8050 3100
F 0 "#PWR?" H 8050 2850 50  0001 C CNN
F 1 "GND" H 8055 2927 50  0000 C CNN
F 2 "" H 8050 3100 50  0001 C CNN
F 3 "" H 8050 3100 50  0001 C CNN
	1    8050 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDF4FEF
P 8800 2650
F 0 "#PWR?" H 8800 2400 50  0001 C CNN
F 1 "GND" H 8805 2477 50  0000 C CNN
F 2 "" H 8800 2650 50  0001 C CNN
F 3 "" H 8800 2650 50  0001 C CNN
	1    8800 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 2650 8800 2650
Text GLabel 6600 1350 0    50   Input ~ 0
TX
Text GLabel 6600 1250 0    50   Input ~ 0
RX
Wire Wire Line
	6600 1250 7050 1250
Wire Wire Line
	6600 1350 7050 1350
$Comp
L power:+5V #PWR?
U 1 1 5FDF97EF
P 8250 800
F 0 "#PWR?" H 8250 650 50  0001 C CNN
F 1 "+5V" H 8265 973 50  0000 C CNN
F 2 "" H 8250 800 50  0001 C CNN
F 3 "" H 8250 800 50  0001 C CNN
	1    8250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 950  7950 950 
Wire Wire Line
	7950 950  8250 950 
Wire Wire Line
	8250 950  8250 800 
Connection ~ 7950 950 
Wire Wire Line
	8050 2950 8050 3100
Wire Wire Line
	7650 2950 7750 2950
Connection ~ 8050 2950
Connection ~ 7750 2950
Wire Wire Line
	7750 2950 7850 2950
Connection ~ 7850 2950
Wire Wire Line
	7850 2950 8050 2950
$Comp
L Device:C C?
U 1 1 5FDFD588
P 6100 1650
AR Path="/5FD99B6C/5FDFD588" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FDFD588" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FDFD588" Ref="C?"  Part="1" 
F 0 "C?" H 6215 1696 50  0000 L CNN
F 1 "X7R, 100nF 10%" H 6215 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6138 1500 50  0001 C CNN
F 3 "~" H 6100 1650 50  0001 C CNN
	1    6100 1650
	0    -1   -1   0   
$EndComp
Text GLabel 3350 3800 2    50   Input ~ 0
RESET
Wire Wire Line
	3100 3800 3350 3800
Text GLabel 5700 1650 0    50   Input ~ 0
RESET
Wire Wire Line
	7050 1650 6250 1650
Wire Wire Line
	5950 1650 5700 1650
$Comp
L power:+5V #PWR?
U 1 1 5FE06365
P 5500 2250
F 0 "#PWR?" H 5500 2100 50  0001 C CNN
F 1 "+5V" H 5515 2423 50  0000 C CNN
F 2 "" H 5500 2250 50  0001 C CNN
F 3 "" H 5500 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE081E4
P 5850 2250
F 0 "R?" V 5643 2250 50  0000 C CNN
F 1 "R" V 5734 2250 50  0000 C CNN
F 2 "" V 5780 2250 50  0001 C CNN
F 3 "~" H 5850 2250 50  0001 C CNN
	1    5850 2250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FE08A72
P 6300 2250
F 0 "D?" H 6293 1995 50  0000 C CNN
F 1 "LED" H 6293 2086 50  0000 C CNN
F 2 "" H 6300 2250 50  0001 C CNN
F 3 "~" H 6300 2250 50  0001 C CNN
	1    6300 2250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE0F873
P 5500 2650
F 0 "#PWR?" H 5500 2500 50  0001 C CNN
F 1 "+5V" H 5515 2823 50  0000 C CNN
F 2 "" H 5500 2650 50  0001 C CNN
F 3 "" H 5500 2650 50  0001 C CNN
	1    5500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE0F879
P 5850 2650
F 0 "R?" V 5643 2650 50  0000 C CNN
F 1 "R" V 5734 2650 50  0000 C CNN
F 2 "" V 5780 2650 50  0001 C CNN
F 3 "~" H 5850 2650 50  0001 C CNN
	1    5850 2650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FE0F87F
P 6300 2650
F 0 "D?" H 6293 2395 50  0000 C CNN
F 1 "LED" H 6293 2486 50  0000 C CNN
F 2 "" H 6300 2650 50  0001 C CNN
F 3 "~" H 6300 2650 50  0001 C CNN
	1    6300 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2250 5700 2250
Wire Wire Line
	6000 2250 6150 2250
Wire Wire Line
	6450 2250 7050 2250
Wire Wire Line
	5500 2650 5700 2650
Wire Wire Line
	6000 2650 6150 2650
Wire Wire Line
	7050 2350 6800 2350
Wire Wire Line
	6800 2350 6800 2650
Wire Wire Line
	6800 2650 6450 2650
$Comp
L Device:C C?
U 1 1 5FE1D929
P 9550 5900
AR Path="/5FD99B6C/5FE1D929" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FE1D929" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FE1D929" Ref="C?"  Part="1" 
F 0 "C?" H 9665 5946 50  0000 L CNN
F 1 "X7R, 100nF 10%" H 9665 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9588 5750 50  0001 C CNN
F 3 "~" H 9550 5900 50  0001 C CNN
	1    9550 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5FE1EC4C
P 9150 5900
F 0 "C?" H 9032 5946 50  0000 R CNN
F 1 "4.7uF 16V" H 9032 5855 50  0000 R CNN
F 2 "" H 9188 5750 50  0001 C CNN
F 3 "~" H 9150 5900 50  0001 C CNN
	1    9150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 5FE2169A
P 9350 5550
F 0 "#PWR?" H 9350 5400 50  0001 C CNN
F 1 "VBUS" H 9365 5723 50  0000 C CNN
F 2 "" H 9350 5550 50  0001 C CNN
F 3 "" H 9350 5550 50  0001 C CNN
	1    9350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5750 9150 5600
Wire Wire Line
	9550 5600 9550 5750
$Comp
L power:GND #PWR?
U 1 1 5FE2B2D7
P 9350 6250
F 0 "#PWR?" H 9350 6000 50  0001 C CNN
F 1 "GND" H 9355 6077 50  0000 C CNN
F 2 "" H 9350 6250 50  0001 C CNN
F 3 "" H 9350 6250 50  0001 C CNN
	1    9350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 6050 9150 6200
Wire Wire Line
	9550 6200 9550 6050
Wire Wire Line
	9150 5600 9350 5600
Wire Wire Line
	9150 6200 9350 6200
Wire Wire Line
	9350 6250 9350 6200
Connection ~ 9350 6200
Wire Wire Line
	9350 6200 9550 6200
Wire Wire Line
	9350 5600 9350 5550
Connection ~ 9350 5600
Wire Wire Line
	9350 5600 9550 5600
$Comp
L power:VBUS #PWR?
U 1 1 5FE393FE
P 8100 5850
F 0 "#PWR?" H 8100 5700 50  0001 C CNN
F 1 "VBUS" H 8115 6023 50  0000 C CNN
F 2 "" H 8100 5850 50  0001 C CNN
F 3 "" H 8100 5850 50  0001 C CNN
	1    8100 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE3AAD7
P 7500 5850
F 0 "#PWR?" H 7500 5700 50  0001 C CNN
F 1 "+5V" H 7515 6023 50  0000 C CNN
F 2 "" H 7500 5850 50  0001 C CNN
F 3 "" H 7500 5850 50  0001 C CNN
	1    7500 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5FE3E5F4
P 7800 6100
F 0 "D?" H 7800 6316 50  0000 C CNN
F 1 "SS1P3L" H 7800 6225 50  0000 C CNN
F 2 "" H 7800 6100 50  0001 C CNN
F 3 "~" H 7800 6100 50  0001 C CNN
	1    7800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5850 7500 6100
Wire Wire Line
	7500 6100 7650 6100
Wire Wire Line
	7950 6100 8100 6100
Wire Wire Line
	8100 6100 8100 5850
$Comp
L Regulator_Linear:LM1117-5.0 U?
U 1 1 5FE4AC44
P 5550 5900
F 0 "U?" H 5550 6142 50  0000 C CNN
F 1 "LM1117-5.0" H 5550 6051 50  0000 C CNN
F 2 "" H 5550 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5550 5900 50  0001 C CNN
	1    5550 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5FE4D61A
P 5050 5800
F 0 "#PWR?" H 5050 5650 50  0001 C CNN
F 1 "VDD" H 5067 5973 50  0000 C CNN
F 2 "" H 5050 5800 50  0001 C CNN
F 3 "" H 5050 5800 50  0001 C CNN
	1    5050 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE4FD6A
P 6050 5800
F 0 "#PWR?" H 6050 5650 50  0001 C CNN
F 1 "+5V" H 6065 5973 50  0000 C CNN
F 2 "" H 6050 5800 50  0001 C CNN
F 3 "" H 6050 5800 50  0001 C CNN
	1    6050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5800 5050 5900
Wire Wire Line
	6050 5800 6050 5900
Wire Wire Line
	6300 5900 6050 5900
$Comp
L power:GND #PWR?
U 1 1 5FE5885B
P 5550 6400
F 0 "#PWR?" H 5550 6150 50  0001 C CNN
F 1 "GND" H 5555 6227 50  0000 C CNN
F 2 "" H 5550 6400 50  0001 C CNN
F 3 "" H 5550 6400 50  0001 C CNN
	1    5550 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FE5E0DF
P 6050 6150
AR Path="/5FD99B6C/5FE5E0DF" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FE5E0DF" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FE5E0DF" Ref="C?"  Part="1" 
F 0 "C?" H 6165 6196 50  0000 L CNN
F 1 "X7R, 1uF 10%" H 6165 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6088 6000 50  0001 C CNN
F 3 "~" H 6050 6150 50  0001 C CNN
	1    6050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5900 6050 6000
$Comp
L power:GND #PWR?
U 1 1 5FE615C0
P 6050 6400
F 0 "#PWR?" H 6050 6150 50  0001 C CNN
F 1 "GND" H 6055 6227 50  0000 C CNN
F 2 "" H 6050 6400 50  0001 C CNN
F 3 "" H 6050 6400 50  0001 C CNN
	1    6050 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 5900 5250 5900
Connection ~ 6050 5900
Wire Wire Line
	6050 5900 5850 5900
$Comp
L Device:R R?
U 1 1 5FE75985
P 6450 5900
F 0 "R?" V 6243 5900 50  0000 C CNN
F 1 "R" V 6334 5900 50  0000 C CNN
F 2 "" V 6380 5900 50  0001 C CNN
F 3 "~" H 6450 5900 50  0001 C CNN
	1    6450 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 5900 6600 5900
$Comp
L Device:LED D?
U 1 1 5FE7D361
P 6850 6150
F 0 "D?" H 6843 5895 50  0000 C CNN
F 1 "LED" H 6843 5986 50  0000 C CNN
F 2 "" H 6850 6150 50  0001 C CNN
F 3 "~" H 6850 6150 50  0001 C CNN
	1    6850 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE7F368
P 6850 6400
F 0 "#PWR?" H 6850 6150 50  0001 C CNN
F 1 "GND" H 6855 6227 50  0000 C CNN
F 2 "" H 6850 6400 50  0001 C CNN
F 3 "" H 6850 6400 50  0001 C CNN
	1    6850 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 6000 6850 5900
Wire Wire Line
	5550 6200 5550 6400
Wire Wire Line
	6050 6400 6050 6300
Wire Wire Line
	6850 6400 6850 6300
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5FE91946
P 5400 7450
F 0 "J?" H 5450 7767 50  0000 C CNN
F 1 "ICSP" H 5450 7676 50  0000 C CNN
F 2 "" H 5400 7450 50  0001 C CNN
F 3 "~" H 5400 7450 50  0001 C CNN
	1    5400 7450
	1    0    0    -1  
$EndComp
Text GLabel 5000 7550 0    50   Input ~ 0
RESET
$Comp
L power:GND #PWR?
U 1 1 5FE94089
P 5900 7550
F 0 "#PWR?" H 5900 7300 50  0001 C CNN
F 1 "GND" H 5905 7377 50  0000 C CNN
F 2 "" H 5900 7550 50  0001 C CNN
F 3 "" H 5900 7550 50  0001 C CNN
	1    5900 7550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 7550 5200 7550
Wire Wire Line
	5700 7550 5900 7550
$Comp
L power:+5V #PWR?
U 1 1 5FE9C160
P 5900 7350
F 0 "#PWR?" H 5900 7200 50  0001 C CNN
F 1 "+5V" H 5915 7523 50  0000 C CNN
F 2 "" H 5900 7350 50  0001 C CNN
F 3 "" H 5900 7350 50  0001 C CNN
	1    5900 7350
	1    0    0    -1  
$EndComp
Text GLabel 5900 7450 2    50   Input ~ 0
D11
Text GLabel 5000 7350 0    50   Input ~ 0
D12
Text GLabel 5000 7450 0    50   Input ~ 0
D13
Wire Wire Line
	5000 7350 5200 7350
Wire Wire Line
	5200 7450 5000 7450
Wire Wire Line
	5700 7350 5900 7350
Wire Wire Line
	5900 7450 5700 7450
$Comp
L Device:Resonator_Small Y?
U 1 1 5FEBDE9F
P 3900 2950
F 0 "Y?" V 4225 2900 50  0000 C CNN
F 1 "16 MHz" V 4134 2900 50  0000 C CNN
F 2 "" H 3875 2950 50  0001 C CNN
F 3 "~" H 3875 2950 50  0001 C CNN
	1    3900 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC1FF5
P 4300 2950
F 0 "#PWR?" H 4300 2700 50  0001 C CNN
F 1 "GND" H 4305 2777 50  0000 C CNN
F 2 "" H 4300 2950 50  0001 C CNN
F 3 "" H 4300 2950 50  0001 C CNN
	1    4300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2950 4300 2950
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 5FEF10E5
P 1250 7550
F 0 "SW?" H 1250 7835 50  0000 C CNN
F 1 "Reset" H 1250 7744 50  0000 C CNN
F 2 "" H 1250 7750 50  0001 C CNN
F 3 "" H 1250 7750 50  0001 C CNN
	1    1250 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEF5DEF
P 900 7550
F 0 "#PWR?" H 900 7300 50  0001 C CNN
F 1 "GND" H 905 7377 50  0000 C CNN
F 2 "" H 900 7550 50  0001 C CNN
F 3 "" H 900 7550 50  0001 C CNN
	1    900  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7550 900  7550
Text GLabel 2150 7550 2    50   Input ~ 0
RESET
$Comp
L Device:R R?
U 1 1 5FF130A7
P 1800 7200
AR Path="/5FD99B6C/5FF130A7" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/5FF130A7" Ref="R?"  Part="1" 
AR Path="/5FDD4B9C/5FF130A7" Ref="R?"  Part="1" 
F 0 "R?" V 2007 7200 50  0000 C CNN
F 1 "10 kOhm 5%" V 1916 7200 50  0000 C CNN
F 2 "" V 1730 7200 50  0001 C CNN
F 3 "~" H 1800 7200 50  0001 C CNN
	1    1800 7200
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FF18C00
P 1800 6900
F 0 "#PWR?" H 1800 6750 50  0001 C CNN
F 1 "+5V" H 1815 7073 50  0000 C CNN
F 2 "" H 1800 6900 50  0001 C CNN
F 3 "" H 1800 6900 50  0001 C CNN
	1    1800 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7050 1800 6900
Wire Wire Line
	1450 7550 1800 7550
Wire Wire Line
	1800 7350 1800 7550
Connection ~ 1800 7550
Wire Wire Line
	1800 7550 2150 7550
$Comp
L Device:C C?
U 1 1 5FF2F0D6
P 1150 2750
AR Path="/5FD99B6C/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF2F0D6" Ref="C?"  Part="1" 
F 0 "C?" H 1265 2796 50  0000 L CNN
F 1 "X7R, 100nF 10%" H 1265 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1188 2600 50  0001 C CNN
F 3 "~" H 1150 2750 50  0001 C CNN
	1    1150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2600 1150 2300
Wire Wire Line
	1150 2300 1900 2300
$Comp
L power:GND #PWR?
U 1 1 5FF3E163
P 1150 3000
AR Path="/5FF3E163" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FF3E163" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1150 2750 50  0001 C CNN
F 1 "GND" H 1155 2827 50  0000 C CNN
F 2 "" H 1150 3000 50  0001 C CNN
F 3 "" H 1150 3000 50  0001 C CNN
	1    1150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3000 1150 2900
Wire Wire Line
	3350 2800 3100 2800
Text GLabel 3350 2800 2    50   Input ~ 0
D13
Wire Wire Line
	3100 2900 3650 2900
Wire Wire Line
	3650 2900 3650 2850
Wire Wire Line
	3650 2850 3800 2850
Wire Wire Line
	3100 3000 3650 3000
Wire Wire Line
	3650 3000 3650 3050
Wire Wire Line
	3650 3050 3800 3050
Text GLabel 3350 2700 2    50   Input ~ 0
D12
Text GLabel 3350 2600 2    50   Input ~ 0
D11
Text GLabel 3350 2500 2    50   Input ~ 0
D10
Text GLabel 3350 2400 2    50   Input ~ 0
D9
Text GLabel 3350 2300 2    50   Input ~ 0
D8
Wire Wire Line
	3100 2300 3350 2300
Wire Wire Line
	3350 2400 3100 2400
Wire Wire Line
	3100 2500 3350 2500
Wire Wire Line
	3350 2600 3100 2600
Wire Wire Line
	3100 2700 3350 2700
Text GLabel 1100 6500 0    50   Input ~ 0
D13
$Comp
L Device:R R?
U 1 1 5FF81444
P 1500 6500
F 0 "R?" V 1293 6500 50  0000 C CNN
F 1 "R" V 1384 6500 50  0000 C CNN
F 2 "" V 1430 6500 50  0001 C CNN
F 3 "~" H 1500 6500 50  0001 C CNN
	1    1500 6500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF8144B
P 2050 6500
F 0 "D?" H 2043 6245 50  0000 C CNN
F 1 "LED" H 2043 6336 50  0000 C CNN
F 2 "" H 2050 6500 50  0001 C CNN
F 3 "~" H 2050 6500 50  0001 C CNN
	1    2050 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 6500 1350 6500
Wire Wire Line
	1650 6500 1900 6500
Wire Wire Line
	2200 6500 2450 6500
$Comp
L power:GND #PWR?
U 1 1 5FFB2A37
P 2450 6500
F 0 "#PWR?" H 2450 6250 50  0001 C CNN
F 1 "GND" H 2455 6327 50  0000 C CNN
F 2 "" H 2450 6500 50  0001 C CNN
F 3 "" H 2450 6500 50  0001 C CNN
	1    2450 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FFC9EA0
P 3750 4000
F 0 "R?" V 3543 4000 50  0000 C CNN
F 1 "R" V 3634 4000 50  0000 C CNN
F 2 "" V 3680 4000 50  0001 C CNN
F 3 "~" H 3750 4000 50  0001 C CNN
	1    3750 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4000 4150 4000
$Comp
L Device:R R?
U 1 1 5FFCE977
P 3750 4100
F 0 "R?" V 3543 4100 50  0000 C CNN
F 1 "R" V 3634 4100 50  0000 C CNN
F 2 "" V 3680 4100 50  0001 C CNN
F 3 "~" H 3750 4100 50  0001 C CNN
	1    3750 4100
	0    1    -1   0   
$EndComp
Wire Wire Line
	3900 4100 4150 4100
Wire Wire Line
	3100 4100 3600 4100
Wire Wire Line
	3100 4000 3600 4000
$Comp
L Device:CP C?
U 1 1 5FFF2594
P 2000 1200
F 0 "C?" H 1882 1246 50  0000 R CNN
F 1 "4.7uF 16V" H 1882 1155 50  0000 R CNN
F 2 "" H 2038 1050 50  0001 C CNN
F 3 "~" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFF6D3F
P 2700 1200
AR Path="/5FD99B6C/5FFF6D3F" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FFF6D3F" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FFF6D3F" Ref="C?"  Part="1" 
F 0 "C?" H 2815 1246 50  0000 L CNN
F 1 "X7R, 1uF 10%" H 2815 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2738 1050 50  0001 C CNN
F 3 "~" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60005570
P 1300 1200
AR Path="/5FD99B6C/60005570" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/60005570" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/60005570" Ref="C?"  Part="1" 
F 0 "C?" H 1415 1246 50  0000 L CNN
F 1 "X7R, 1uF 10%" H 1415 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1338 1050 50  0001 C CNN
F 3 "~" H 1300 1200 50  0001 C CNN
	1    1300 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 1350 2000 1350
Wire Wire Line
	2000 1350 2700 1350
Connection ~ 2000 1350
Wire Wire Line
	2700 1050 2000 1050
Wire Wire Line
	2000 1050 1300 1050
Connection ~ 2000 1050
$Comp
L power:GND #PWR?
U 1 1 6002F3CE
P 2000 1450
F 0 "#PWR?" H 2000 1200 50  0001 C CNN
F 1 "GND" H 2005 1277 50  0000 C CNN
F 2 "" H 2000 1450 50  0001 C CNN
F 3 "" H 2000 1450 50  0001 C CNN
	1    2000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2000 1450
$Comp
L power:+5V #PWR?
U 1 1 6004057F
P 2000 850
F 0 "#PWR?" H 2000 700 50  0001 C CNN
F 1 "+5V" H 2015 1023 50  0000 C CNN
F 2 "" H 2000 850 50  0001 C CNN
F 3 "" H 2000 850 50  0001 C CNN
	1    2000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 850  2000 1050
Wire Wire Line
	2500 2000 2600 2000
Wire Wire Line
	2600 2000 3450 2000
Wire Wire Line
	3450 2000 3450 1050
Wire Wire Line
	3450 1050 2700 1050
Connection ~ 2600 2000
Connection ~ 2700 1050
$EndSCHEMATC
