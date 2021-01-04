EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Power Distribution Board"
Date "2021-01-03"
Rev "A"
Comp "Mark Sherstan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FF276FB
P 8000 1900
F 0 "J1" H 7918 1575 50  0000 C CNN
F 1 "Power In" H 7918 1666 50  0000 C CNN
F 2 "" H 8000 1900 50  0001 C CNN
F 3 "~" H 8000 1900 50  0001 C CNN
	1    8000 1900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5FF27D85
P 8000 3450
F 0 "J6" H 7918 2925 50  0000 C CNN
F 1 "Flight Controller" H 7918 3016 50  0000 C CNN
F 2 "Connector_JST:JST_GH_SM06B-GHS-TB_1x06-1MP_P1.25mm_Horizontal" H 8000 3450 50  0001 C CNN
F 3 "~" H 8000 3450 50  0001 C CNN
	1    8000 3450
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR011
U 1 1 5FF2918F
P 8500 3150
F 0 "#PWR011" H 8500 3000 50  0001 C CNN
F 1 "VDD" H 8517 3323 50  0000 C CNN
F 2 "" H 8500 3150 50  0001 C CNN
F 3 "" H 8500 3150 50  0001 C CNN
	1    8500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3350 8200 3250
Wire Wire Line
	8200 3250 8200 3150
Connection ~ 8200 3250
Wire Wire Line
	8200 3150 8500 3150
Connection ~ 8200 3150
Wire Wire Line
	8200 3450 8200 3550
Wire Wire Line
	8200 3550 8200 3650
Connection ~ 8200 3550
$Comp
L power:GND #PWR012
U 1 1 5FF29FEA
P 8500 3650
F 0 "#PWR012" H 8500 3400 50  0001 C CNN
F 1 "GND" H 8505 3477 50  0000 C CNN
F 2 "" H 8500 3650 50  0001 C CNN
F 3 "" H 8500 3650 50  0001 C CNN
	1    8500 3650
	1    0    0    -1  
$EndComp
Connection ~ 8200 3650
Wire Wire Line
	8200 3650 8500 3650
$Comp
L Mechanical:MountingHole H1
U 1 1 5FF2CFF8
P 7750 5250
F 0 "H1" H 7850 5296 50  0000 L CNN
F 1 "M2" H 7850 5205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 7750 5250 50  0001 C CNN
F 3 "~" H 7750 5250 50  0001 C CNN
	1    7750 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FF2E103
P 8200 5250
F 0 "H2" H 8300 5296 50  0000 L CNN
F 1 "M2" H 8300 5205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 8200 5250 50  0001 C CNN
F 3 "~" H 8200 5250 50  0001 C CNN
	1    8200 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FF2E54D
P 7750 5550
F 0 "H3" H 7850 5596 50  0000 L CNN
F 1 "M2" H 7850 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 7750 5550 50  0001 C CNN
F 3 "~" H 7750 5550 50  0001 C CNN
	1    7750 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FF2E7BB
P 8200 5550
F 0 "H4" H 8300 5596 50  0000 L CNN
F 1 "M2" H 8300 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 8200 5550 50  0001 C CNN
F 3 "~" H 8200 5550 50  0001 C CNN
	1    8200 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR01
U 1 1 5FF313BE
P 8500 1800
F 0 "#PWR01" H 8500 1650 50  0001 C CNN
F 1 "VDD" H 8517 1973 50  0000 C CNN
F 2 "" H 8500 1800 50  0001 C CNN
F 3 "" H 8500 1800 50  0001 C CNN
	1    8500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FF318E4
P 8500 1900
F 0 "#PWR02" H 8500 1650 50  0001 C CNN
F 1 "GND" H 8505 1727 50  0000 C CNN
F 2 "" H 8500 1900 50  0001 C CNN
F 3 "" H 8500 1900 50  0001 C CNN
	1    8500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1900 8500 1900
Wire Wire Line
	8500 1800 8200 1800
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FF351D4
P 4200 2450
F 0 "J3" H 4118 2125 50  0000 C CNN
F 1 "Corner 2" H 4118 2216 50  0000 C CNN
F 2 "Custom:Corner-Pad" H 4200 2450 50  0001 C CNN
F 3 "~" H 4200 2450 50  0001 C CNN
	1    4200 2450
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR04
U 1 1 5FF35C04
P 4550 2350
F 0 "#PWR04" H 4550 2200 50  0001 C CNN
F 1 "VDD" H 4567 2523 50  0000 C CNN
F 2 "" H 4550 2350 50  0001 C CNN
F 3 "" H 4550 2350 50  0001 C CNN
	1    4550 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FF3636C
P 4550 2450
F 0 "#PWR08" H 4550 2200 50  0001 C CNN
F 1 "GND" H 4555 2277 50  0000 C CNN
F 2 "" H 4550 2450 50  0001 C CNN
F 3 "" H 4550 2450 50  0001 C CNN
	1    4550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2350 4550 2350
Wire Wire Line
	4550 2450 4400 2450
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5FF3DF27
P 3300 2450
F 0 "J2" H 3218 2125 50  0000 C CNN
F 1 "Corner 1" H 3218 2216 50  0000 C CNN
F 2 "Custom:Corner-Pad" H 3300 2450 50  0001 C CNN
F 3 "~" H 3300 2450 50  0001 C CNN
	1    3300 2450
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR03
U 1 1 5FF3DF2D
P 3650 2350
F 0 "#PWR03" H 3650 2200 50  0001 C CNN
F 1 "VDD" H 3667 2523 50  0000 C CNN
F 2 "" H 3650 2350 50  0001 C CNN
F 3 "" H 3650 2350 50  0001 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FF3DF33
P 3650 2450
F 0 "#PWR07" H 3650 2200 50  0001 C CNN
F 1 "GND" H 3655 2277 50  0000 C CNN
F 2 "" H 3650 2450 50  0001 C CNN
F 3 "" H 3650 2450 50  0001 C CNN
	1    3650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2350 3650 2350
Wire Wire Line
	3650 2450 3500 2450
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FF400FC
P 5050 2450
F 0 "J4" H 4968 2125 50  0000 C CNN
F 1 "Corner 3" H 4968 2216 50  0000 C CNN
F 2 "Custom:Corner-Pad" H 5050 2450 50  0001 C CNN
F 3 "~" H 5050 2450 50  0001 C CNN
	1    5050 2450
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 5FF40102
P 5400 2350
F 0 "#PWR05" H 5400 2200 50  0001 C CNN
F 1 "VDD" H 5417 2523 50  0000 C CNN
F 2 "" H 5400 2350 50  0001 C CNN
F 3 "" H 5400 2350 50  0001 C CNN
	1    5400 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FF40108
P 5400 2450
F 0 "#PWR09" H 5400 2200 50  0001 C CNN
F 1 "GND" H 5405 2277 50  0000 C CNN
F 2 "" H 5400 2450 50  0001 C CNN
F 3 "" H 5400 2450 50  0001 C CNN
	1    5400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2350 5400 2350
Wire Wire Line
	5400 2450 5250 2450
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5FF415C6
P 5850 2450
F 0 "J5" H 5768 2125 50  0000 C CNN
F 1 "Corner 4" H 5768 2216 50  0000 C CNN
F 2 "Custom:Corner-Pad" H 5850 2450 50  0001 C CNN
F 3 "~" H 5850 2450 50  0001 C CNN
	1    5850 2450
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR06
U 1 1 5FF415CC
P 6200 2350
F 0 "#PWR06" H 6200 2200 50  0001 C CNN
F 1 "VDD" H 6217 2523 50  0000 C CNN
F 2 "" H 6200 2350 50  0001 C CNN
F 3 "" H 6200 2350 50  0001 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FF415D2
P 6200 2450
F 0 "#PWR010" H 6200 2200 50  0001 C CNN
F 1 "GND" H 6205 2277 50  0000 C CNN
F 2 "" H 6200 2450 50  0001 C CNN
F 3 "" H 6200 2450 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2350 6200 2350
Wire Wire Line
	6200 2450 6050 2450
Text Notes 5300 3950 0    50   ~ 0
Add vias through surface mount\nPower in \nRegulator with LED???
$EndSCHEMATC
