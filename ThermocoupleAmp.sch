EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ReflowOven:MCP96RL01T U601
U 1 1 5F712CB5
P 5650 3250
F 0 "U601" H 5650 3815 50  0000 C CNN
F 1 "MCP96RL01T" H 5650 3724 50  0000 C CNN
F 2 "ReflowOven:QFN-20_EP_5x5_Pitch0.65mm" H 5600 3500 50  0001 C CNN
F 3 "" H 5600 3500 50  0001 C CNN
	1    5650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3250 4300 3250
Wire Wire Line
	5050 3350 4300 3350
Text HLabel 4300 3350 0    50   BiDi ~ 0
I2C_SCL
Text HLabel 4300 3250 0    50   BiDi ~ 0
I2C_SDA
Text Notes 5200 4400 0    50   ~ 0
I2C Address = 1100 000 = 0xC0
Wire Wire Line
	5050 3450 4900 3450
Wire Wire Line
	4900 3450 4900 3600
Wire Wire Line
	5050 4200 4900 4200
Connection ~ 4900 4200
Wire Wire Line
	4900 4200 4900 4300
Wire Wire Line
	4900 4100 5050 4100
Connection ~ 4900 4100
Wire Wire Line
	4900 4100 4900 4200
Wire Wire Line
	5050 4000 4900 4000
Connection ~ 4900 4000
Wire Wire Line
	4900 4000 4900 4100
Wire Wire Line
	4900 3900 5050 3900
Connection ~ 4900 3900
Wire Wire Line
	4900 3900 4900 4000
Wire Wire Line
	5050 3800 4900 3800
Connection ~ 4900 3800
Wire Wire Line
	4900 3800 4900 3900
Wire Wire Line
	4900 3700 5050 3700
Connection ~ 4900 3700
Wire Wire Line
	4900 3700 4900 3800
Wire Wire Line
	5050 3600 4900 3600
Connection ~ 4900 3600
Wire Wire Line
	4900 3600 4900 3700
Wire Wire Line
	5050 2950 4900 2950
Wire Wire Line
	4900 2950 4900 2800
$Comp
L power:+3.3VA #PWR0603
U 1 1 5F716651
P 4900 2800
F 0 "#PWR0603" H 4900 2650 50  0001 C CNN
F 1 "+3.3VA" H 4915 2973 50  0000 C CNN
F 2 "" H 4900 2800 50  0001 C CNN
F 3 "" H 4900 2800 50  0001 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0608
U 1 1 5F7169A0
P 4900 4300
F 0 "#PWR0608" H 4900 4050 50  0001 C CNN
F 1 "GNDA" H 4905 4127 50  0000 C CNN
F 2 "" H 4900 4300 50  0001 C CNN
F 3 "" H 4900 4300 50  0001 C CNN
	1    4900 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J601
U 1 1 5F71786F
P 7300 3950
F 0 "J601" H 7272 3832 50  0000 R CNN
F 1 "Thermocouple_Conn" H 7272 3923 50  0000 R CNN
F 2 "ReflowOven:PRT-13612" H 7300 3950 50  0001 C CNN
F 3 "~" H 7300 3950 50  0001 C CNN
	1    7300 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 3950 6250 3950
Wire Wire Line
	6250 4050 6800 4050
NoConn ~ 6250 3500
NoConn ~ 6250 3400
NoConn ~ 6250 3300
NoConn ~ 6250 3200
NoConn ~ 6250 3050
NoConn ~ 6250 2950
$Comp
L power:+3.3VA #PWR0606
U 1 1 5F71AC1D
P 6500 3200
F 0 "#PWR0606" H 6500 3050 50  0001 C CNN
F 1 "+3.3VA" H 6515 3373 50  0000 C CNN
F 2 "" H 6500 3200 50  0001 C CNN
F 3 "" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3200 6500 3250
$Comp
L Device:R_Small R601
U 1 1 5F71B54E
P 6500 3350
F 0 "R601" H 6559 3396 50  0000 L CNN
F 1 "1M" H 6559 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6500 3350 50  0001 C CNN
F 3 "~" H 6500 3350 50  0001 C CNN
	1    6500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4050 6800 4150
Connection ~ 6800 4050
Wire Wire Line
	6800 4050 7100 4050
$Comp
L Device:R_Small R603
U 1 1 5F71BB42
P 6800 4250
F 0 "R603" H 6859 4296 50  0000 L CNN
F 1 "2M" H 6859 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 4250 50  0001 C CNN
F 3 "~" H 6800 4250 50  0001 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R602
U 1 1 5F71BF24
P 6800 3600
F 0 "R602" V 6604 3600 50  0000 C CNN
F 1 "2M" V 6695 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 3600 50  0001 C CNN
F 3 "~" H 6800 3600 50  0001 C CNN
	1    6800 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3450 6500 3600
Wire Wire Line
	6500 3600 6700 3600
$Comp
L power:GNDA #PWR0607
U 1 1 5F71CF5F
P 7000 3700
F 0 "#PWR0607" H 7000 3450 50  0001 C CNN
F 1 "GNDA" H 7005 3527 50  0000 C CNN
F 2 "" H 7000 3700 50  0001 C CNN
F 3 "" H 7000 3700 50  0001 C CNN
	1    7000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3600 7000 3600
Wire Wire Line
	7000 3600 7000 3700
Wire Wire Line
	6500 3600 6500 3700
Wire Wire Line
	6500 3700 6250 3700
Connection ~ 6500 3600
Wire Wire Line
	6800 4350 6800 4450
$Comp
L power:GNDA #PWR0609
U 1 1 5F720547
P 6800 4450
F 0 "#PWR0609" H 6800 4200 50  0001 C CNN
F 1 "GNDA" H 6805 4277 50  0000 C CNN
F 2 "" H 6800 4450 50  0001 C CNN
F 3 "" H 6800 4450 50  0001 C CNN
	1    6800 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C602
U 1 1 5F73439B
P 4300 2650
F 0 "C602" H 4392 2696 50  0000 L CNN
F 1 "0.1u" H 4392 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4300 2650 50  0001 C CNN
F 3 "~" H 4300 2650 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C601
U 1 1 5F7344CC
P 3950 2650
F 0 "C601" H 3859 2604 50  0000 R CNN
F 1 "10u" H 3859 2695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3950 2650 50  0001 C CNN
F 3 "~" H 3950 2650 50  0001 C CNN
	1    3950 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	4300 2550 4300 2450
Wire Wire Line
	3950 2450 3950 2550
Wire Wire Line
	3950 2750 3950 2850
$Comp
L power:+3.3VA #PWR0602
U 1 1 5F7356C0
P 4300 2450
F 0 "#PWR0602" H 4300 2300 50  0001 C CNN
F 1 "+3.3VA" H 4315 2623 50  0000 C CNN
F 2 "" H 4300 2450 50  0001 C CNN
F 3 "" H 4300 2450 50  0001 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0601
U 1 1 5F735ABE
P 3950 2450
F 0 "#PWR0601" H 3950 2300 50  0001 C CNN
F 1 "+3.3VA" H 3965 2623 50  0000 C CNN
F 2 "" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2850 4300 2750
$Comp
L power:GNDA #PWR0605
U 1 1 5F736899
P 4300 2850
F 0 "#PWR0605" H 4300 2600 50  0001 C CNN
F 1 "GNDA" H 4305 2677 50  0000 C CNN
F 2 "" H 4300 2850 50  0001 C CNN
F 3 "" H 4300 2850 50  0001 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0604
U 1 1 5F736AC2
P 3950 2850
F 0 "#PWR0604" H 3950 2600 50  0001 C CNN
F 1 "GNDA" H 3955 2677 50  0000 C CNN
F 2 "" H 3950 2850 50  0001 C CNN
F 3 "" H 3950 2850 50  0001 C CNN
	1    3950 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
