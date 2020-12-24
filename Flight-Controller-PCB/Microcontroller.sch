EESchema Schematic File Version 4
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
	-1650 4450 -1900 4450
Wire Wire Line
	-1900 4550 -1650 4550
Wire Wire Line
	-1650 4650 -1900 4650
Wire Wire Line
	-1900 4750 -1650 4750
Wire Wire Line
	-1650 4850 -1900 4850
Wire Wire Line
	-1900 4950 -1650 4950
Text GLabel -1650 4950 2    50   Input ~ 0
D7
Text GLabel -1650 4850 2    50   Input ~ 0
D6
Text GLabel -1650 4750 2    50   Input ~ 0
D5
Text GLabel -1650 4650 2    50   Input ~ 0
D4
Text GLabel -1650 4550 2    50   Input ~ 0
D3
Text GLabel -1650 4450 2    50   Input ~ 0
D2
Text GLabel -700 4350 2    50   Input ~ 0
TX
Text GLabel -700 4250 2    50   Input ~ 0
RX
Wire Wire Line
	-650 6100 -650 5800
$Comp
L power:GND #PWR?
U 1 1 5FDD5866
P -650 6100
AR Path="/5FDD5866" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FDD5866" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H -650 5850 50  0001 C CNN
F 1 "GND" H -645 5927 50  0000 C CNN
F 2 "" H -650 6100 50  0001 C CNN
F 3 "" H -650 6100 50  0001 C CNN
	1    -650 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1650 3950 -1900 3950
Wire Wire Line
	-1900 3850 -1650 3850
Text GLabel -1650 3950 2    50   Input ~ 0
A5_SCL
Text GLabel -1650 3850 2    50   Input ~ 0
A4_SDA
Wire Wire Line
	-1650 3750 -1900 3750
Text GLabel -1650 3750 2    50   Input ~ 0
A3
Wire Wire Line
	-1650 3650 -1900 3650
Text GLabel -1650 3650 2    50   Input ~ 0
A2
Wire Wire Line
	-1650 3550 -1900 3550
Wire Wire Line
	-1650 3450 -1900 3450
Wire Wire Line
	-3100 2850 -3350 2850
Wire Wire Line
	-3350 2750 -3100 2750
Text GLabel -3350 2750 0    50   Input ~ 0
A6
Text GLabel -3350 2850 0    50   Input ~ 0
A7
Text GLabel -1650 3550 2    50   Input ~ 0
A1
Text GLabel -1650 3450 2    50   Input ~ 0
A0
$Comp
L Connector:USB_B_Micro J8
U 1 1 5FDD6952
P 2400 7200
F 0 "J8" H 2450 7650 50  0000 R CNN
F 1 "USB_B_Micro" H 2600 7550 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 2550 7150 50  0001 C CNN
F 3 "~" H 2550 7150 50  0001 C CNN
F 4 "Molex" H 2400 7200 50  0001 C CNN "Manufacturer"
F 5 "105017-0001" H 2400 7200 50  0001 C CNN "Manufacturer #"
F 6 "WM1399CT-ND" H 2400 7200 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/molex/1050170001/2350832" H 2400 7200 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    2400 7200
	-1   0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR048
U 1 1 5FDE042A
P 1600 6900
F 0 "#PWR048" H 1600 6750 50  0001 C CNN
F 1 "VBUS" H 1615 7073 50  0000 C CNN
F 2 "" H 1600 6900 50  0001 C CNN
F 3 "" H 1600 6900 50  0001 C CNN
	1    1600 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 5FDED7D4
P 1900 7000
F 0 "F1" H 2000 6950 50  0000 C CNN
F 1 "PTC 15V 500mA" H 2250 7050 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1950 6800 50  0001 L CNN
F 3 "~" H 1900 7000 50  0001 C CNN
F 4 "Eaton - Electronics Division" H 1900 7000 50  0001 C CNN "Manufacturer"
F 5 "PTS120615V050" H 1900 7000 50  0001 C CNN "Manufacturer #"
F 6 "283-3140-1-ND" H 1900 7000 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/eaton-electronics-division/PTS120615V050/2639137" H 1900 7000 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    1900 7000
	0    1    -1   0   
$EndComp
Wire Wire Line
	1600 6900 1600 7000
Wire Wire Line
	1600 7000 1800 7000
Wire Wire Line
	2000 7000 2100 7000
$Comp
L power:GND #PWR055
U 1 1 5FDF14CF
P 2400 7700
F 0 "#PWR055" H 2400 7450 50  0001 C CNN
F 1 "GND" H 2405 7527 50  0000 C CNN
F 2 "" H 2400 7700 50  0001 C CNN
F 3 "" H 2400 7700 50  0001 C CNN
	1    2400 7700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 7600 2400 7650
Wire Wire Line
	2500 7600 2500 7650
Wire Wire Line
	2500 7650 2400 7650
Connection ~ 2400 7650
Wire Wire Line
	2400 7650 2400 7700
Text GLabel -1650 4050 2    50   Input ~ 0
RESET
Wire Wire Line
	-1900 4050 -1650 4050
$Comp
L Device:C C?
U 1 1 5FF2F0D6
P 4650 2650
AR Path="/5FD99B6C/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF2F0D6" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF2F0D6" Ref="C12"  Part="1" 
F 0 "C12" H 4765 2696 50  0000 L CNN
F 1 "0.1uF 16V X7R 10%" H 4765 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4688 2500 50  0001 C CNN
F 3 "~" H 4650 2650 50  0001 C CNN
	1    4650 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 2500 4650 2200
$Comp
L power:GND #PWR?
U 1 1 5FF3E163
P 4650 2900
AR Path="/5FF3E163" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/5FF3E163" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 4650 2650 50  0001 C CNN
F 1 "GND" H 4655 2727 50  0000 C CNN
F 2 "" H 4650 2900 50  0001 C CNN
F 3 "" H 4650 2900 50  0001 C CNN
	1    4650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2900 4650 2800
Wire Wire Line
	-1650 3050 -1900 3050
Text GLabel -1650 3050 2    50   Input ~ 0
D13
Text GLabel -1650 2950 2    50   Input ~ 0
D12
Text GLabel -1650 2850 2    50   Input ~ 0
D11
Text GLabel -1650 2750 2    50   Input ~ 0
D10
Text GLabel -1650 2650 2    50   Input ~ 0
D9
Text GLabel -1650 2550 2    50   Input ~ 0
D8
Wire Wire Line
	-1900 2550 -1650 2550
Wire Wire Line
	-1650 2650 -1900 2650
Wire Wire Line
	-1900 2750 -1650 2750
Wire Wire Line
	-1650 2850 -1900 2850
Wire Wire Line
	-1900 2950 -1650 2950
$Comp
L Device:R R16
U 1 1 5FFC9EA0
P -1100 4250
F 0 "R16" V -1307 4250 50  0000 C CNN
F 1 "1 kohm 5%" V -1216 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -1170 4250 50  0001 C CNN
F 3 "~" H -1100 4250 50  0001 C CNN
	1    -1100 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 4250 -700 4250
$Comp
L Device:R R17
U 1 1 5FFCE977
P -1100 4350
F 0 "R17" V -893 4350 50  0000 C CNN
F 1 "1 kohm 5%" V -984 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -1170 4350 50  0001 C CNN
F 3 "~" H -1100 4350 50  0001 C CNN
	1    -1100 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 4350 -700 4350
$Comp
L Device:CP C9
U 1 1 5FFF2594
P -2900 1800
F 0 "C9" H -2782 1846 50  0000 L CNN
F 1 "4.7uF 10V 20%" H -2782 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H -2862 1650 50  0001 C CNN
F 3 "~" H -2900 1800 50  0001 C CNN
	1    -2900 1800
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFF6D3F
P -1950 1800
AR Path="/5FD99B6C/5FFF6D3F" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FFF6D3F" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FFF6D3F" Ref="C10"  Part="1" 
F 0 "C10" H -1835 1846 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H -1835 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H -1912 1650 50  0001 C CNN
F 3 "~" H -1950 1800 50  0001 C CNN
	1    -1950 1800
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60005570
P -3700 1800
AR Path="/5FD99B6C/60005570" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/60005570" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/60005570" Ref="C8"  Part="1" 
F 0 "C8" H -3585 1846 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H -3585 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H -3662 1650 50  0001 C CNN
F 3 "~" H -3700 1800 50  0001 C CNN
	1    -3700 1800
	-1   0    0    1   
$EndComp
Connection ~ -2900 1950
Connection ~ -2900 1650
$Comp
L power:GND #PWR039
U 1 1 6002F3CE
P -2900 2050
F 0 "#PWR039" H -2900 1800 50  0001 C CNN
F 1 "GND" H -2895 1877 50  0000 C CNN
F 2 "" H -2900 2050 50  0001 C CNN
F 3 "" H -2900 2050 50  0001 C CNN
	1    -2900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2900 1950 -2900 2050
$Comp
L power:+5V #PWR037
U 1 1 6004057F
P -2900 1450
F 0 "#PWR037" H -2900 1300 50  0001 C CNN
F 1 "+5V" H -2885 1623 50  0000 C CNN
F 2 "" H -2900 1450 50  0001 C CNN
F 3 "" H -2900 1450 50  0001 C CNN
	1    -2900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2900 1450 -2900 1650
Wire Wire Line
	-1800 2250 -1800 1650
Wire Wire Line
	-1800 1650 -1950 1650
Text Notes 5450 850  0    79   ~ 16
Microcontroller
Connection ~ -1950 1650
Wire Wire Line
	-2900 1650 -1950 1650
Wire Wire Line
	-3700 1650 -2900 1650
Wire Wire Line
	-3700 1950 -2900 1950
Wire Wire Line
	-2900 1950 -1950 1950
Wire Wire Line
	-1900 4250 -1250 4250
Wire Wire Line
	-1900 4350 -1250 4350
$Comp
L Device:CP C15
U 1 1 601633A8
P 14400 3150
F 0 "C15" V 14650 3200 50  0000 R CNN
F 1 "22uF 16V 20%" V 14550 3350 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 14438 3000 50  0001 C CNN
F 3 "~" H 14400 3150 50  0001 C CNN
	1    14400 3150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 601A358C
P 14400 3400
F 0 "#PWR051" H 14400 3150 50  0001 C CNN
F 1 "GND" H 14405 3227 50  0000 C CNN
F 2 "" H 14400 3400 50  0001 C CNN
F 3 "" H 14400 3400 50  0001 C CNN
	1    14400 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14400 3400 14400 3300
Wire Wire Line
	-4050 2550 -3100 2550
$Comp
L Device:Resonator Y2
U 1 1 60255C7D
P -800 3200
F 0 "Y2" V -754 3311 50  0000 L CNN
F 1 "16 MHz" V -845 3311 50  0000 L CNN
F 2 "Custom:Resonator" H -825 3200 50  0001 C CNN
F 3 "~" H -825 3200 50  0001 C CNN
F 4 "Murata Electronics" H -800 3200 50  0001 C CNN "Manufacturer"
F 5 "CSTNE16M0VH3L000R0" H -800 3200 50  0001 C CNN "Manufacturer #"
F 6 "490-17952-1-ND" H -800 3200 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/murata-electronics/CSTNE16M0VH3L000R0/8747733" H -800 3200 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    -800 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-1350 3150 -1350 3050
Wire Wire Line
	-1900 3150 -1350 3150
Wire Wire Line
	-1350 3350 -800 3350
Wire Wire Line
	-1350 3050 -800 3050
Wire Wire Line
	-1350 3350 -1350 3250
Wire Wire Line
	-1900 3250 -1350 3250
$Comp
L power:GND #PWR041
U 1 1 60296342
P -450 3200
F 0 "#PWR041" H -450 2950 50  0001 C CNN
F 1 "GND" H -445 3027 50  0000 C CNN
F 2 "" H -450 3200 50  0001 C CNN
F 3 "" H -450 3200 50  0001 C CNN
	1    -450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-600 3200 -450 3200
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U3
U 1 1 5FE513CE
P 5950 3100
F 0 "U3" H 5950 1211 50  0000 C CNN
F 1 "ATmega32U4-AU" H 5950 1120 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5950 3100 50  0001 C CIN
F 3 "" H 5950 3100 50  0001 C CNN
F 4 "Microchip Technology" H 5950 3100 50  0001 C CNN "Manufacturer"
F 5 "ATMEGA32U4RC-AU" H 5950 3100 50  0001 C CNN "Manufacturer #"
F 6 "ATMEGA32U4RC-AU-ND" H 5950 3100 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/microchip-technology/ATMEGA32U4RC-AU/2507982" H 5950 3100 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    5950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2500 2250 -1800 2250
$Comp
L Device:R R19
U 1 1 5FE99F0B
P 1450 7200
F 0 "R19" V 1243 7200 50  0000 C CNN
F 1 "22 ohm 1%" V 1334 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1380 7200 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1450 7200
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5FEA626C
P 1450 7300
F 0 "R20" V 1243 7300 50  0000 C CNN
F 1 "22 ohm 1%" V 1334 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1380 7300 50  0001 C CNN
F 3 "~" H 1450 7300 50  0001 C CNN
	1    1450 7300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 7200 2100 7200
Wire Wire Line
	2100 7300 1600 7300
Text GLabel 5150 2600 0    50   Input ~ 0
D+
Text GLabel 5150 2700 0    50   Input ~ 0
D-
Wire Wire Line
	5150 2600 5350 2600
Wire Wire Line
	5350 2700 5150 2700
Text GLabel 1000 7200 0    50   Input ~ 0
D+
Text GLabel 1000 7300 0    50   Input ~ 0
D-
Wire Wire Line
	1300 7300 1000 7300
Wire Wire Line
	1300 7200 1000 7200
Text Notes 1450 6100 0    79   ~ 16
USB Interface
$Comp
L power:GND #PWR043
U 1 1 5FEDBEC4
P 5400 4900
F 0 "#PWR043" H 5400 4650 50  0001 C CNN
F 1 "GND" H 5405 4727 50  0000 C CNN
F 2 "" H 5400 4900 50  0001 C CNN
F 3 "" H 5400 4900 50  0001 C CNN
	1    5400 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5FEDF439
P 6500 4900
F 0 "#PWR044" H 6500 4650 50  0001 C CNN
F 1 "GND" H 6505 4727 50  0000 C CNN
F 2 "" H 6500 4900 50  0001 C CNN
F 3 "" H 6500 4900 50  0001 C CNN
	1    6500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4900 5850 4900
Wire Wire Line
	5950 4900 6500 4900
Wire Wire Line
	5350 2200 4650 2200
$Comp
L Device:C C?
U 1 1 5FF26C68
P 5050 3250
AR Path="/5FD99B6C/5FF26C68" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF26C68" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF26C68" Ref="C13"  Part="1" 
F 0 "C13" H 5165 3296 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 5165 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5088 3100 50  0001 C CNN
F 3 "~" H 5050 3250 50  0001 C CNN
	1    5050 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5FF26C6E
P 5050 3500
F 0 "#PWR042" H 5050 3250 50  0001 C CNN
F 1 "GND" H 5055 3327 50  0000 C CNN
F 2 "" H 5050 3500 50  0001 C CNN
F 3 "" H 5050 3500 50  0001 C CNN
	1    5050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3500 5050 3400
Wire Wire Line
	5350 2900 5050 2900
Wire Wire Line
	5050 2900 5050 3100
$Comp
L Device:Crystal Y1
U 1 1 5FF2CD65
P 4300 1900
F 0 "Y1" V 4346 1769 50  0000 R CNN
F 1 "16MHz, CL 7pF" V 4255 1769 50  0000 R CNN
F 2 "Custom:Crystal" H 4300 1900 50  0001 C CNN
F 3 "~" H 4300 1900 50  0001 C CNN
F 4 "Abracon LLC" H 4300 1900 50  0001 C CNN "Manufacturer"
F 5 "ABM8W-16.0000MHZ-7-D1X-T3" H 4300 1900 50  0001 C CNN "Manufacturer #"
F 6 "535-14027-1-ND" H 4300 1900 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/abracon-llc/ABM8W-16-0000MHZ-7-D1X-T3/7172798" H 4300 1900 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    4300 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF2DBB2
P 4100 1700
AR Path="/5FD99B6C/5FF2DBB2" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF2DBB2" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF2DBB2" Ref="C7"  Part="1" 
F 0 "C7" V 4352 1700 50  0000 C CNN
F 1 "22pF 12V X7R 2%" V 4261 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4138 1550 50  0001 C CNN
F 3 "~" H 4100 1700 50  0001 C CNN
	1    4100 1700
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF34CD2
P 4100 2100
AR Path="/5FD99B6C/5FF34CD2" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FF34CD2" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FF34CD2" Ref="C11"  Part="1" 
F 0 "C11" V 3940 2100 50  0000 C CNN
F 1 "22pF 12V X7R 2%" V 3849 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4138 1950 50  0001 C CNN
F 3 "~" H 4100 2100 50  0001 C CNN
	1    4100 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 2050 4300 2100
Wire Wire Line
	4300 1700 4300 1750
Wire Wire Line
	5350 2100 5350 2000
Wire Wire Line
	5350 1700 5350 1800
Wire Wire Line
	3950 1700 3950 1900
$Comp
L power:GND #PWR038
U 1 1 5FF6A4F2
P 3800 1900
F 0 "#PWR038" H 3800 1650 50  0001 C CNN
F 1 "GND" H 3805 1727 50  0000 C CNN
F 2 "" H 3800 1900 50  0001 C CNN
F 3 "" H 3800 1900 50  0001 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
Connection ~ 3950 1900
Wire Wire Line
	3950 1900 3950 2100
Wire Wire Line
	4250 2100 4300 2100
Wire Wire Line
	4250 1700 4300 1700
Wire Wire Line
	3800 1900 3950 1900
Wire Wire Line
	4300 1700 5350 1700
Connection ~ 4300 1700
Wire Wire Line
	5350 2100 4300 2100
Connection ~ 4300 2100
Text Notes -3450 -50  0    50   ~ 0
https://blog.adafruit.com/2012/01/24/choosing-the-right-crystal-and-caps-for-your-design/\nC1, C2 = 2*CL – 2*Cstray\n\nhttps://forum.digikey.com/t/crystal-oscillator-load-cap-selection/1915\nC1, C2 = 2*(CL) - Cstray
Text Notes -3000 350  0    50   ~ 0
load capacitance of crystal * 2 - stray cap pin and trace = cap size \nhttps://www.microchip.com/forums/m881105.aspx\nhttps://www.sparkfun.com/products/94
Text Notes 600  1550 0    50   ~ 0
CL= (CX1 * CX2)/(CX1 + CX2) + CSTRAY\nCL = (CX * CX)/(CX + CX) + CSTRAY <= substitute CX for CX1 and CX2 since they equal each other\nCL = (CX^2)/(2CX) + CSTRAY\nCL = (CX/2) + CSTRAY\nCL - CSTRAY = (CX/2)\n2*(CL -CSTRAY) = CX\n\nCX1 = CX2 = 2*(CL-CSTRAY)\n\nCSTRAY approx 4pF\n\n22/2 = 11 - 4 = 7 ish 
$Comp
L power:VBUS #PWR?
U 1 1 5FFA533F
P 5200 2400
F 0 "#PWR?" H 5200 2250 50  0001 C CNN
F 1 "VBUS" H 5200 2550 50  0000 C CNN
F 2 "" H 5200 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2400 5200 2400
$Comp
L power:VBUS #PWR?
U 1 1 5FFB3AE6
P 3200 2350
F 0 "#PWR?" H 3200 2200 50  0001 C CNN
F 1 "VBUS" H 3200 2500 50  0000 C CNN
F 2 "" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0001 C CNN
	1    3200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFB7553
P 3200 2600
AR Path="/5FD99B6C/5FFB7553" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/5FFB7553" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/5FFB7553" Ref="C?"  Part="1" 
F 0 "C?" H 3315 2646 50  0000 L CNN
F 1 "1uF 16V X7R 10%" H 3315 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3238 2450 50  0001 C CNN
F 3 "~" H 3200 2600 50  0001 C CNN
	1    3200 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFBAC38
P 3200 2850
F 0 "#PWR?" H 3200 2600 50  0001 C CNN
F 1 "GND" H 3205 2677 50  0000 C CNN
F 2 "" H 3200 2850 50  0001 C CNN
F 3 "" H 3200 2850 50  0001 C CNN
	1    3200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2350 3200 2450
Wire Wire Line
	3200 2750 3200 2850
$Comp
L power:VDD #PWR?
U 1 1 5FFDA43D
P 11900 4300
F 0 "#PWR?" H 11900 4150 50  0001 C CNN
F 1 "VDD" H 11917 4473 50  0000 C CNN
F 2 "" H 11900 4300 50  0001 C CNN
F 3 "" H 11900 4300 50  0001 C CNN
	1    11900 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FFDE0B5
P 12350 4550
F 0 "#PWR?" H 12350 4400 50  0001 C CNN
F 1 "+5V" H 12365 4723 50  0000 C CNN
F 2 "" H 12350 4550 50  0001 C CNN
F 3 "" H 12350 4550 50  0001 C CNN
	1    12350 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 5FFDEDD1
P 11400 4550
F 0 "#PWR?" H 11400 4400 50  0001 C CNN
F 1 "VBUS" H 11400 4700 50  0000 C CNN
F 2 "" H 11400 4550 50  0001 C CNN
F 3 "" H 11400 4550 50  0001 C CNN
	1    11400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 4750 11400 4750
Wire Wire Line
	12100 4750 12350 4750
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 5FFCF230
P 11900 4650
F 0 "Q?" V 12151 4650 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 12242 4650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12100 4750 50  0001 C CNN
F 3 "~" H 11900 4650 50  0001 C CNN
F 4 "Nexperia USA Inc." H 11900 4650 50  0001 C CNN "Manufacturer"
F 5 "PMV48XP,215" H 11900 4650 50  0001 C CNN "Manufacturer #"
F 6 "1727-5907-1-ND" H 11900 4650 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/nexperia-usa-inc/PMV48XP215/2744664" H 11900 4650 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    11900 4650
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6003CCAB
P 11400 3150
AR Path="/5FD99B6C/6003CCAB" Ref="R?"  Part="1" 
AR Path="/5FD9E07D/6003CCAB" Ref="R?"  Part="1" 
F 0 "R?" V 11607 3150 50  0000 C CNN
F 1 "10 kohm 5%" V 11516 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 11330 3150 50  0001 C CNN
F 3 "~" H 11400 3150 50  0001 C CNN
	1    11400 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60044CFE
P 11400 3400
F 0 "#PWR?" H 11400 3150 50  0001 C CNN
F 1 "GND" H 11405 3227 50  0000 C CNN
F 2 "" H 11400 3400 50  0001 C CNN
F 3 "" H 11400 3400 50  0001 C CNN
	1    11400 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11400 3400 11400 3300
Wire Wire Line
	11400 2700 11400 2850
Wire Wire Line
	11900 2850 11400 2850
Connection ~ 11400 2850
Wire Wire Line
	11400 2850 11400 3000
$Comp
L power:VDD #PWR?
U 1 1 6005531F
P 11400 2700
F 0 "#PWR?" H 11400 2550 50  0001 C CNN
F 1 "VDD" H 11417 2873 50  0000 C CNN
F 2 "" H 11400 2700 50  0001 C CNN
F 3 "" H 11400 2700 50  0001 C CNN
	1    11400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6005A8CB
P 12100 3400
F 0 "#PWR?" H 12100 3250 50  0001 C CNN
F 1 "+5V" H 12115 3573 50  0000 C CNN
F 2 "" H 12100 3400 50  0001 C CNN
F 3 "" H 12100 3400 50  0001 C CNN
	1    12100 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 6002B1FB
P 12100 2950
F 0 "Q?" V 12351 2950 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 12442 2950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12300 3050 50  0001 C CNN
F 3 "~" H 12100 2950 50  0001 C CNN
F 4 "Nexperia USA Inc." H 12100 2950 50  0001 C CNN "Manufacturer"
F 5 "PMV48XP,215" H 12100 2950 50  0001 C CNN "Manufacturer #"
F 6 "1727-5907-1-ND" H 12100 2950 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/nexperia-usa-inc/PMV48XP215/2744664" H 12100 2950 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    12100 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12100 3150 12100 3400
$Comp
L Regulator_Linear:NCP1117-5.0_SOT223 U?
U 1 1 6006D076
P 13600 2850
F 0 "U?" H 13600 3092 50  0000 C CNN
F 1 "NCP1117-5.0" H 13600 3001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 13600 3050 50  0001 C CNN
F 3 "" H 13700 2600 50  0001 C CNN
	1    13600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 2850 12300 2850
$Comp
L Device:C C?
U 1 1 6008B98A
P 12800 3150
AR Path="/5FD99B6C/6008B98A" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6008B98A" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6008B98A" Ref="C?"  Part="1" 
F 0 "C?" V 13050 3200 50  0000 R CNN
F 1 "0.1uF 20V X7R 10%" V 12950 3400 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 12838 3000 50  0001 C CNN
F 3 "~" H 12800 3150 50  0001 C CNN
	1    12800 3150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6008B991
P 12800 3400
AR Path="/6008B991" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/6008B991" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12800 3150 50  0001 C CNN
F 1 "GND" H 12805 3227 50  0000 C CNN
F 2 "" H 12800 3400 50  0001 C CNN
F 3 "" H 12800 3400 50  0001 C CNN
	1    12800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 3400 12800 3300
Wire Wire Line
	12800 3000 12800 2850
Wire Wire Line
	13300 2850 12800 2850
Connection ~ 12800 2850
$Comp
L power:GND #PWR?
U 1 1 600BC7D4
P 13600 3400
AR Path="/600BC7D4" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/600BC7D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13600 3150 50  0001 C CNN
F 1 "GND" H 13605 3227 50  0000 C CNN
F 2 "" H 13600 3400 50  0001 C CNN
F 3 "" H 13600 3400 50  0001 C CNN
	1    13600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 3150 13600 3400
$Comp
L Device:C C?
U 1 1 600D6400
P 14900 3150
AR Path="/5FD99B6C/600D6400" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/600D6400" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/600D6400" Ref="C?"  Part="1" 
F 0 "C?" V 15150 3200 50  0000 R CNN
F 1 "0.1uF 20V X7R 10%" V 15050 3400 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 14938 3000 50  0001 C CNN
F 3 "~" H 14900 3150 50  0001 C CNN
	1    14900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600D6406
P 14900 3400
AR Path="/600D6406" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/600D6406" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14900 3150 50  0001 C CNN
F 1 "GND" H 14905 3227 50  0000 C CNN
F 2 "" H 14900 3400 50  0001 C CNN
F 3 "" H 14900 3400 50  0001 C CNN
	1    14900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 3400 14900 3300
Wire Wire Line
	14900 3000 14900 2850
Wire Wire Line
	14400 2850 13900 2850
Wire Wire Line
	14900 2850 14400 2850
Connection ~ 14400 2850
Wire Wire Line
	15400 2850 14900 2850
$Comp
L power:+5V #PWR?
U 1 1 6010BB7C
P 15400 2700
F 0 "#PWR?" H 15400 2550 50  0001 C CNN
F 1 "+5V" H 15415 2873 50  0000 C CNN
F 2 "" H 15400 2700 50  0001 C CNN
F 3 "" H 15400 2700 50  0001 C CNN
	1    15400 2700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2985-3.3 U?
U 1 1 601153C4
P 13600 4550
F 0 "U?" H 13600 4892 50  0000 C CNN
F 1 "LP2985-3.3" H 13600 4801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 13600 4875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 13600 4550 50  0001 C CNN
	1    13600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	15400 2700 15400 2850
$Comp
L power:+5V #PWR?
U 1 1 6012E39B
P 12800 4300
F 0 "#PWR?" H 12800 4150 50  0001 C CNN
F 1 "+5V" H 12815 4473 50  0000 C CNN
F 2 "" H 12800 4300 50  0001 C CNN
F 3 "" H 12800 4300 50  0001 C CNN
	1    12800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 4300 12800 4450
Wire Wire Line
	13200 4450 12800 4450
Wire Wire Line
	13200 4550 13200 4450
Connection ~ 13200 4450
Wire Wire Line
	14400 2850 14400 3000
$Comp
L power:GND #PWR?
U 1 1 6015F192
P 13600 5000
AR Path="/6015F192" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/6015F192" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13600 4750 50  0001 C CNN
F 1 "GND" H 13605 4827 50  0000 C CNN
F 2 "" H 13600 5000 50  0001 C CNN
F 3 "" H 13600 5000 50  0001 C CNN
	1    13600 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6016A3D7
P 14400 4750
AR Path="/5FD99B6C/6016A3D7" Ref="C?"  Part="1" 
AR Path="/5FD9E07D/6016A3D7" Ref="C?"  Part="1" 
AR Path="/5FDD4B9C/6016A3D7" Ref="C?"  Part="1" 
F 0 "C?" H 14515 4796 50  0000 L CNN
F 1 "1uF 12V X7R 10%" H 14515 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 14438 4600 50  0001 C CNN
F 3 "~" H 14400 4750 50  0001 C CNN
	1    14400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6016A3DD
P 14400 5000
AR Path="/6016A3DD" Ref="#PWR?"  Part="1" 
AR Path="/5FDD4B9C/6016A3DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14400 4750 50  0001 C CNN
F 1 "GND" H 14405 4827 50  0000 C CNN
F 2 "" H 14400 5000 50  0001 C CNN
F 3 "" H 14400 5000 50  0001 C CNN
	1    14400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 5000 14400 4900
Wire Wire Line
	14400 4600 14400 4450
Wire Wire Line
	13600 4850 13600 5000
Wire Wire Line
	14900 4300 14900 4450
$Comp
L power:+3.3V #PWR?
U 1 1 6019794E
P 14900 4300
F 0 "#PWR?" H 14900 4150 50  0001 C CNN
F 1 "+3.3V" H 14915 4473 50  0000 C CNN
F 2 "" H 14900 4300 50  0001 C CNN
F 3 "" H 14900 4300 50  0001 C CNN
	1    14900 4300
	1    0    0    -1  
$EndComp
Connection ~ 14400 4450
Wire Wire Line
	14400 4450 14000 4450
Wire Wire Line
	14400 4450 14900 4450
Wire Wire Line
	12350 4550 12350 4750
Wire Wire Line
	11900 4450 11900 4300
Wire Wire Line
	11400 4750 11400 4550
Text Notes 12500 2250 0    79   ~ 16
Power Management and Selection
$EndSCHEMATC
