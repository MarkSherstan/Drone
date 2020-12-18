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
Text Notes 8550 950  0    79   ~ 16
Power In
Text Notes 8300 1300 0    59   ~ 0
Reverse polarity and regulator 
Text Notes 9600 2300 0    50   ~ 0
PWM for RGB?
$Sheet
S 1000 900  1400 450 
U 5FD99B6C
F0 "IMU" 50
F1 "IMU.sch" 50
$EndSheet
$Sheet
S 1000 1750 1400 450 
U 5FDD4B9C
F0 "Microcontroller" 50
F1 "Microcontroller.sch" 50
$EndSheet
Text Notes 7850 3150 0    50   ~ 0
Double check interupt pins and ESC compatible 
Text Notes 7400 3950 0    50   ~ 0
Connection to PDB? Molex connectors?
Text Notes 8250 4850 0    50   ~ 0
Debug port? Extra spare PWM?\n
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60055D25
P 4650 3150
F 0 "J?" H 4568 2825 50  0000 C CNN
F 1 "ESC1" H 4568 2916 50  0000 C CNN
F 2 "" H 4650 3150 50  0001 C CNN
F 3 "~" H 4650 3150 50  0001 C CNN
	1    4650 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60056CDE
P 4650 3750
F 0 "J?" H 4568 3425 50  0000 C CNN
F 1 "ESC2" H 4568 3516 50  0000 C CNN
F 2 "" H 4650 3750 50  0001 C CNN
F 3 "~" H 4650 3750 50  0001 C CNN
	1    4650 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60056F29
P 4650 4350
F 0 "J?" H 4568 4025 50  0000 C CNN
F 1 "ESC3" H 4568 4116 50  0000 C CNN
F 2 "" H 4650 4350 50  0001 C CNN
F 3 "~" H 4650 4350 50  0001 C CNN
	1    4650 4350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 600574C6
P 4650 5000
F 0 "J?" H 4568 4675 50  0000 C CNN
F 1 "ESC4" H 4568 4766 50  0000 C CNN
F 2 "" H 4650 5000 50  0001 C CNN
F 3 "~" H 4650 5000 50  0001 C CNN
	1    4650 5000
	-1   0    0    1   
$EndComp
$EndSCHEMATC
