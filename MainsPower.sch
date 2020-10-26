EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L Device:Fuse F501
U 1 1 5F64EE3D
P 3750 1600
F 0 "F501" V 3553 1600 50  0000 C CNN
F 1 "100mA" V 3644 1600 50  0000 C CNN
F 2 "ReflowOven:FUSC6125X279N" V 3680 1600 50  0001 C CNN
F 3 "~" H 3750 1600 50  0001 C CNN
	1    3750 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1800 5900 1800
$Comp
L power:GND #PWR0505
U 1 1 5F651956
P 5900 2100
F 0 "#PWR0505" H 5900 1850 50  0001 C CNN
F 1 "GND" H 5905 1927 50  0000 C CNN
F 2 "" H 5900 2100 50  0001 C CNN
F 3 "" H 5900 2100 50  0001 C CNN
	1    5900 2100
	1    0    0    -1  
$EndComp
$Comp
L ReflowOven:RAC10-3.3SK_277 P501
U 1 1 5F6520B3
P 5050 1800
F 0 "P501" H 4600 2150 50  0000 C CNN
F 1 "RAC10-3.3SK_277" H 5200 2150 50  0000 C CNN
F 2 "ReflowOven:RAC10-3.3SK-277" H 5050 1900 50  0001 C CNN
F 3 "" H 5050 1900 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1800 5900 2100
Wire Wire Line
	6250 1600 5650 1600
$Comp
L Device:C_Small C513
U 1 1 5F653C7A
P 2000 6800
F 0 "C513" H 2092 6846 50  0000 L CNN
F 1 "1u" H 2092 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2000 6800 50  0001 C CNN
F 3 "~" H 2000 6800 50  0001 C CNN
	1    2000 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C514
U 1 1 5F65470B
P 2350 6800
F 0 "C514" H 2442 6846 50  0000 L CNN
F 1 "0.1u" H 2442 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2350 6800 50  0001 C CNN
F 3 "~" H 2350 6800 50  0001 C CNN
	1    2350 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C515
U 1 1 5F654A2C
P 2700 6800
F 0 "C515" H 2792 6846 50  0000 L CNN
F 1 "10u" H 2792 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2700 6800 50  0001 C CNN
F 3 "~" H 2700 6800 50  0001 C CNN
	1    2700 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6700 2000 6600
Wire Wire Line
	2000 6600 2350 6600
Wire Wire Line
	2700 6600 2700 6700
Wire Wire Line
	2350 6700 2350 6600
Connection ~ 2350 6600
Wire Wire Line
	2350 6600 2700 6600
$Comp
L power:+3V3 #PWR0522
U 1 1 5F6552EA
P 1000 6450
F 0 "#PWR0522" H 1000 6300 50  0001 C CNN
F 1 "+3V3" H 1015 6623 50  0000 C CNN
F 2 "" H 1000 6450 50  0001 C CNN
F 3 "" H 1000 6450 50  0001 C CNN
	1    1000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6900 2000 7050
Wire Wire Line
	2000 7050 2350 7050
Wire Wire Line
	2700 7050 2700 6900
Wire Wire Line
	2350 6900 2350 7050
Connection ~ 2350 7050
Wire Wire Line
	2350 7050 2700 7050
$Comp
L power:GND #PWR0523
U 1 1 5F656CFD
P 1000 7200
F 0 "#PWR0523" H 1000 6950 50  0001 C CNN
F 1 "GND" H 1005 7027 50  0000 C CNN
F 2 "" H 1000 7200 50  0001 C CNN
F 3 "" H 1000 7200 50  0001 C CNN
	1    1000 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C512
U 1 1 5F65AA22
P 1650 6800
F 0 "C512" H 1742 6846 50  0000 L CNN
F 1 "1u" H 1742 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1650 6800 50  0001 C CNN
F 3 "~" H 1650 6800 50  0001 C CNN
	1    1650 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C516
U 1 1 5F65AFD2
P 3100 6800
F 0 "C516" H 3192 6846 50  0000 L CNN
F 1 "10u" H 3192 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3100 6800 50  0001 C CNN
F 3 "~" H 3100 6800 50  0001 C CNN
	1    3100 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C517
U 1 1 5F65B2C3
P 3450 6800
F 0 "C517" H 3542 6846 50  0000 L CNN
F 1 "100u" H 3542 6755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3450 6800 50  0001 C CNN
F 3 "~" H 3450 6800 50  0001 C CNN
	1    3450 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C518
U 1 1 5F65B63D
P 3800 6800
F 0 "C518" H 3892 6846 50  0000 L CNN
F 1 "100u" H 3892 6755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3800 6800 50  0001 C CNN
F 3 "~" H 3800 6800 50  0001 C CNN
	1    3800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6600 3100 6600
Wire Wire Line
	3100 6600 3100 6700
Connection ~ 2700 6600
Wire Wire Line
	3100 6600 3450 6600
Wire Wire Line
	3450 6600 3450 6700
Connection ~ 3100 6600
Wire Wire Line
	3450 6600 3800 6600
Wire Wire Line
	3800 6600 3800 6700
Connection ~ 3450 6600
Wire Wire Line
	3800 6900 3800 7050
Wire Wire Line
	3800 7050 3450 7050
Connection ~ 2700 7050
Wire Wire Line
	3100 6900 3100 7050
Connection ~ 3100 7050
Wire Wire Line
	3100 7050 2700 7050
Wire Wire Line
	3450 6900 3450 7050
Connection ~ 3450 7050
Wire Wire Line
	3450 7050 3100 7050
Wire Wire Line
	2000 6600 1650 6600
Wire Wire Line
	1650 6600 1650 6700
Connection ~ 2000 6600
Wire Wire Line
	1650 6900 1650 7050
Wire Wire Line
	1650 7050 2000 7050
Connection ~ 2000 7050
$Comp
L Device:C_Small C511
U 1 1 5F65F12B
P 1350 6800
F 0 "C511" H 1442 6846 50  0000 L CNN
F 1 "1u" H 1442 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1350 6800 50  0001 C CNN
F 3 "~" H 1350 6800 50  0001 C CNN
	1    1350 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6600 1350 6600
Wire Wire Line
	1350 6600 1350 6700
Connection ~ 1650 6600
Wire Wire Line
	1350 7050 1650 7050
Wire Wire Line
	1350 6900 1350 7050
Connection ~ 1650 7050
$Comp
L Device:C_Small C510
U 1 1 5F661B72
P 1000 6800
F 0 "C510" H 1092 6846 50  0000 L CNN
F 1 "10u" H 1092 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 6800 50  0001 C CNN
F 3 "~" H 1000 6800 50  0001 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6700 1000 6600
Wire Wire Line
	1000 6600 1350 6600
Connection ~ 1350 6600
Wire Wire Line
	1000 6900 1000 7050
Wire Wire Line
	1000 7050 1350 7050
Connection ~ 1350 7050
Wire Wire Line
	1000 7200 1000 7050
Connection ~ 1000 7050
Wire Wire Line
	1000 6450 1000 6600
Connection ~ 1000 6600
Wire Notes Line
	700  6200 4200 6200
Wire Notes Line
	4200 6200 4200 7500
Wire Notes Line
	4200 7500 700  7500
Wire Notes Line
	700  7500 700  6200
Text Notes 1300 6150 2    50   ~ 0
Bulk Decoupling
Wire Notes Line
	6300 950  6300 2650
Wire Notes Line
	3200 2650 3200 950 
Text Notes 3900 900  2    50   ~ 0
AC/DC Conversion
Wire Wire Line
	3250 1600 3600 1600
Wire Wire Line
	3250 2000 4450 2000
Text Label 3250 2000 0    50   ~ 0
VACN
Wire Wire Line
	3900 1600 4450 1600
Text Label 3250 1600 0    50   ~ 0
VACL
Wire Notes Line
	3200 2650 6300 2650
Wire Notes Line
	3200 950  6300 950 
$Comp
L ReflowOven:MAX4684_5 U501
U 1 1 5F6C751D
P 2750 4500
F 0 "U501" H 2350 5300 50  0000 C CNN
F 1 "MAX4684_5" H 3000 5300 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2550 5050 50  0001 C CNN
F 3 "" H 2550 5050 50  0001 C CNN
	1    2750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4200 3500 4200
Wire Wire Line
	3500 4200 3500 3850
Wire Wire Line
	3500 3850 3950 3850
Wire Wire Line
	3950 3850 3950 4050
Wire Wire Line
	3950 5000 3500 5000
Wire Wire Line
	3500 5000 3500 4750
Wire Wire Line
	3500 4750 3300 4750
Wire Wire Line
	1950 5150 1950 5300
Wire Wire Line
	1950 5150 2200 5150
$Comp
L power:GND #PWR0518
U 1 1 5F6CEEB0
P 1950 5300
F 0 "#PWR0518" H 1950 5050 50  0001 C CNN
F 1 "GND" H 1955 5127 50  0000 C CNN
F 2 "" H 1950 5300 50  0001 C CNN
F 3 "" H 1950 5300 50  0001 C CNN
	1    1950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3850 2000 3850
Wire Wire Line
	2000 3850 2000 3750
$Comp
L power:+3V3 #PWR0515
U 1 1 5F6D2225
P 2000 3750
F 0 "#PWR0515" H 2000 3600 50  0001 C CNN
F 1 "+3V3" H 2015 3923 50  0000 C CNN
F 2 "" H 2000 3750 50  0001 C CNN
F 3 "" H 2000 3750 50  0001 C CNN
	1    2000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4850 3950 5000
$Comp
L ReflowOven:G5RLU1E K501
U 1 1 5F6D9F6F
P 4450 4500
F 0 "K501" H 3797 4596 50  0000 R CNN
F 1 "G5RLU1E" H 3797 4505 50  0000 R CNN
F 2 "ReflowOven:G5RLU-1-E DC3" H 3925 4350 50  0001 C CNN
F 3 "" H 3925 4350 50  0001 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
NoConn ~ 4750 4850
NoConn ~ 4950 4850
Wire Wire Line
	5200 4400 5300 4400
Wire Wire Line
	5300 4400 5300 4550
Wire Wire Line
	5300 4550 5200 4550
Text Label 6150 4550 2    50   ~ 0
VACL
Wire Wire Line
	4750 4050 4750 3900
Wire Wire Line
	4750 3900 4950 3900
Wire Wire Line
	4950 3900 4950 4050
Text Notes 8900 7500 2    50   ~ 0
Mains Power Conversion and Switching\n
Text Notes 8950 7650 2    50   ~ 0
September 18, 2020
$Comp
L Device:C_Small C507
U 1 1 5F6E53FD
P 1600 3500
F 0 "C507" H 1692 3546 50  0000 L CNN
F 1 "0.1u" H 1692 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1600 3500 50  0001 C CNN
F 3 "~" H 1600 3500 50  0001 C CNN
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C506
U 1 1 5F6E5579
P 1250 3500
F 0 "C506" H 1342 3546 50  0000 L CNN
F 1 "0.1u" H 1342 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1250 3500 50  0001 C CNN
F 3 "~" H 1250 3500 50  0001 C CNN
	1    1250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3600 1600 3700
$Comp
L power:GND #PWR0514
U 1 1 5F6E6FE7
P 1600 3700
F 0 "#PWR0514" H 1600 3450 50  0001 C CNN
F 1 "GND" H 1605 3527 50  0000 C CNN
F 2 "" H 1600 3700 50  0001 C CNN
F 3 "" H 1600 3700 50  0001 C CNN
	1    1600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0513
U 1 1 5F6E743A
P 1250 3700
F 0 "#PWR0513" H 1250 3450 50  0001 C CNN
F 1 "GND" H 1255 3527 50  0000 C CNN
F 2 "" H 1250 3700 50  0001 C CNN
F 3 "" H 1250 3700 50  0001 C CNN
	1    1250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3700 1250 3600
Wire Wire Line
	1600 3400 1600 3300
Wire Wire Line
	1250 3400 1250 3300
$Comp
L power:+3V3 #PWR0512
U 1 1 5F6EB717
P 1600 3300
F 0 "#PWR0512" H 1600 3150 50  0001 C CNN
F 1 "+3V3" H 1615 3473 50  0000 C CNN
F 2 "" H 1600 3300 50  0001 C CNN
F 3 "" H 1600 3300 50  0001 C CNN
	1    1600 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0511
U 1 1 5F6EBBB8
P 1250 3300
F 0 "#PWR0511" H 1250 3150 50  0001 C CNN
F 1 "+3V3" H 1265 3473 50  0000 C CNN
F 2 "" H 1250 3300 50  0001 C CNN
F 3 "" H 1250 3300 50  0001 C CNN
	1    1250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4200 2100 4200
Wire Wire Line
	2100 4200 2100 4050
Wire Wire Line
	2100 4050 2200 4050
Wire Wire Line
	2100 4050 1650 4050
Connection ~ 2100 4050
Wire Wire Line
	2200 4950 1950 4950
Wire Wire Line
	1950 4950 1950 5150
Connection ~ 1950 5150
Wire Wire Line
	2200 4550 2000 4550
Wire Wire Line
	2000 4550 2000 4800
Wire Wire Line
	2000 4800 2200 4800
Wire Wire Line
	2200 4400 1950 4400
Wire Wire Line
	1950 4400 1950 4950
Connection ~ 1950 4950
Wire Wire Line
	2000 4550 2000 3850
Connection ~ 2000 4550
Connection ~ 2000 3850
$Comp
L Device:R_Small R502
U 1 1 5F705D4A
P 1650 4300
F 0 "R502" H 1709 4346 50  0000 L CNN
F 1 "4.7k" H 1709 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1650 4300 50  0001 C CNN
F 3 "~" H 1650 4300 50  0001 C CNN
	1    1650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4400 1650 4500
$Comp
L power:GND #PWR0517
U 1 1 5F707EBB
P 1650 4500
F 0 "#PWR0517" H 1650 4250 50  0001 C CNN
F 1 "GND" H 1655 4327 50  0000 C CNN
F 2 "" H 1650 4500 50  0001 C CNN
F 3 "" H 1650 4500 50  0001 C CNN
	1    1650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4200 1650 4050
Connection ~ 1650 4050
Wire Wire Line
	1650 4050 1400 4050
Text Notes 1000 5750 0    50   ~ 0
Circuit such that when RELAY_SET is high, switch two is ground and switch one is high.\nIn all other cases (including power off), switch two is high, switch one is low, thereby forcing the coil into reset for safety. \n
Wire Notes Line
	6300 2850 700  2850
Wire Notes Line
	700  2850 700  5950
Wire Notes Line
	700  5950 6300 5950
Wire Notes Line
	6300 5950 6300 2850
Text Notes 1600 2800 2    50   ~ 0
Output Relay Switching
Connection ~ 4950 3900
Text Label 6150 3900 2    50   ~ 0
LN_OUT
NoConn ~ 5650 2000
$Comp
L Device:Fuse F502
U 1 1 5F75BE1A
P 5650 4550
F 0 "F502" V 5453 4550 50  0000 C CNN
F 1 "12A" V 5544 4550 50  0000 C CNN
F 2 "ReflowOven:FUSC6125X279N" V 5580 4550 50  0001 C CNN
F 3 "~" H 5650 4550 50  0001 C CNN
	1    5650 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 4550 5500 4550
Connection ~ 5300 4550
Wire Wire Line
	5800 4550 6150 4550
Wire Wire Line
	4950 3900 6150 3900
$Comp
L ReflowOven:IEC-NEMA-3PIN J502
U 1 1 5F769735
P 8000 3450
F 0 "J502" H 8528 3496 50  0000 L CNN
F 1 "IEC-NEMA-3PIN" H 8528 3405 50  0000 L CNN
F 2 "ReflowOven:3x1-0.24in-Spade-SMD" H 7900 3375 50  0001 C CNN
F 3 "" H 7900 3375 50  0001 C CNN
	1    8000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3300 7000 3300
Text Label 7000 3300 0    50   ~ 0
VACN
Wire Wire Line
	7800 3600 7000 3600
Wire Wire Line
	7800 3450 7550 3450
Wire Wire Line
	7550 3450 7550 3800
$Comp
L power:GNDPWR #PWR0516
U 1 1 5F7765D1
P 7550 3800
F 0 "#PWR0516" H 7550 3600 50  0001 C CNN
F 1 "GNDPWR" H 7554 3646 50  0000 C CNN
F 2 "" H 7550 3750 50  0001 C CNN
F 3 "" H 7550 3750 50  0001 C CNN
	1    7550 3800
	1    0    0    -1  
$EndComp
Text Label 7000 3600 0    50   ~ 0
LN_OUT
$Comp
L ReflowOven:IEC320-C14 J501
U 1 1 5F784C5C
P 1650 1700
F 0 "J501" H 1792 1285 50  0000 C CNN
F 1 "IEC320-C14" H 1792 1376 50  0000 C CNN
F 2 "ReflowOven:3x1-0.24in-Spade-SMD" H 1550 1625 50  0001 C CNN
F 3 "" H 1550 1625 50  0001 C CNN
	1    1650 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 1700 2050 1700
Wire Wire Line
	2050 1700 2050 2050
$Comp
L power:GNDPWR #PWR0504
U 1 1 5F787509
P 2050 2050
F 0 "#PWR0504" H 2050 1850 50  0001 C CNN
F 1 "GNDPWR" H 2054 1896 50  0000 C CNN
F 2 "" H 2050 2000 50  0001 C CNN
F 3 "" H 2050 2000 50  0001 C CNN
	1    2050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1850 2400 1850
Wire Wire Line
	1850 1550 2400 1550
Text Label 2400 1550 2    50   ~ 0
VACL
Text Label 2400 1850 2    50   ~ 0
VACN
Wire Notes Line
	3000 950  3000 2650
Wire Notes Line
	3000 2650 700  2650
Wire Notes Line
	700  2650 700  950 
Wire Notes Line
	700  950  3000 950 
Text Notes 700  900  0    50   ~ 0
Input Connector
Wire Notes Line
	6450 2850 9400 2850
Wire Notes Line
	9400 2850 9400 4400
Wire Notes Line
	9400 4400 6450 4400
Wire Notes Line
	6450 4400 6450 2850
Text Notes 6450 2800 0    50   ~ 0
Output Connector
Text HLabel 1400 4050 0    50   Input ~ 0
RELAY_SET
$Comp
L power:+3V3 #PWR0501
U 1 1 5F65735F
P 6650 1450
F 0 "#PWR0501" H 6650 1300 50  0001 C CNN
F 1 "+3V3" H 6665 1623 50  0000 C CNN
F 2 "" H 6650 1450 50  0001 C CNN
F 3 "" H 6650 1450 50  0001 C CNN
	1    6650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1450 6650 1600
Wire Wire Line
	6650 1600 7050 1600
$Comp
L Device:FerriteBead_Small FB501
U 1 1 5F65AB99
P 7550 1600
F 0 "FB501" V 7313 1600 50  0000 C CNN
F 1 "FerriteBead_Small" V 7404 1600 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 7480 1600 50  0001 C CNN
F 3 "~" H 7550 1600 50  0001 C CNN
	1    7550 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C501
U 1 1 5F65DDD9
P 6650 1800
F 0 "C501" H 6742 1846 50  0000 L CNN
F 1 "1n" H 6742 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6650 1800 50  0001 C CNN
F 3 "~" H 6650 1800 50  0001 C CNN
	1    6650 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C502
U 1 1 5F65E56B
P 7050 1800
F 0 "C502" H 7142 1846 50  0000 L CNN
F 1 "1u" H 7142 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 1800 50  0001 C CNN
F 3 "~" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C503
U 1 1 5F65F19E
P 8000 1800
F 0 "C503" H 8092 1846 50  0000 L CNN
F 1 "22u" H 8092 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C504
U 1 1 5F65F52A
P 8400 1800
F 0 "C504" H 8492 1846 50  0000 L CNN
F 1 "10n" H 8492 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8400 1800 50  0001 C CNN
F 3 "~" H 8400 1800 50  0001 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C505
U 1 1 5F65F862
P 8800 1800
F 0 "C505" H 8892 1846 50  0000 L CNN
F 1 "0.1u" H 8892 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8800 1800 50  0001 C CNN
F 3 "~" H 8800 1800 50  0001 C CNN
	1    8800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1600 8000 1600
Wire Wire Line
	8800 1900 8800 2050
Wire Wire Line
	8800 2050 8400 2050
Wire Wire Line
	8000 2050 8000 1900
Wire Wire Line
	8400 1900 8400 2050
Connection ~ 8400 2050
Wire Wire Line
	8400 2050 8000 2050
Wire Wire Line
	8000 1700 8000 1600
Connection ~ 8000 1600
Wire Wire Line
	8000 1600 8400 1600
Wire Wire Line
	8400 1700 8400 1600
Connection ~ 8400 1600
Wire Wire Line
	8400 1600 8800 1600
Wire Wire Line
	8800 1700 8800 1600
Connection ~ 8800 1600
Wire Wire Line
	8800 1600 9200 1600
$Comp
L power:GNDA #PWR0508
U 1 1 5F6718EF
P 8400 2200
F 0 "#PWR0508" H 8400 1950 50  0001 C CNN
F 1 "GNDA" H 8405 2027 50  0000 C CNN
F 2 "" H 8400 2200 50  0001 C CNN
F 3 "" H 8400 2200 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2200 8400 2050
Wire Wire Line
	7050 1900 7050 2050
Wire Wire Line
	7050 2050 6850 2050
Wire Wire Line
	6650 2050 6650 1900
Wire Wire Line
	6650 1700 6650 1600
Connection ~ 6650 1600
Wire Wire Line
	7050 1700 7050 1600
Connection ~ 7050 1600
Wire Wire Line
	7050 1600 7450 1600
Wire Wire Line
	6850 2050 6850 2200
Connection ~ 6850 2050
Wire Wire Line
	6850 2050 6650 2050
$Comp
L power:GND #PWR0507
U 1 1 5F6826D3
P 6850 2200
F 0 "#PWR0507" H 6850 1950 50  0001 C CNN
F 1 "GND" H 6855 2027 50  0000 C CNN
F 2 "" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1600 9200 1450
$Comp
L power:+3.3VA #PWR0502
U 1 1 5F68D67C
P 9200 1450
F 0 "#PWR0502" H 9200 1300 50  0001 C CNN
F 1 "+3.3VA" H 9215 1623 50  0000 C CNN
F 2 "" H 9200 1450 50  0001 C CNN
F 3 "" H 9200 1450 50  0001 C CNN
	1    9200 1450
	1    0    0    -1  
$EndComp
Wire Notes Line
	6450 950  6450 2650
Wire Notes Line
	6450 2650 9400 2650
Wire Notes Line
	9400 2650 9400 950 
Wire Notes Line
	9400 950  6450 950 
Text Notes 6450 900  0    50   ~ 0
Analog Supply Filtering
$Comp
L power:GND #PWR0509
U 1 1 5F697A08
P 7200 2350
F 0 "#PWR0509" H 7200 2100 50  0001 C CNN
F 1 "GND" H 7205 2177 50  0000 C CNN
F 2 "" H 7200 2350 50  0001 C CNN
F 3 "" H 7200 2350 50  0001 C CNN
	1    7200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0510
U 1 1 5F697FC9
P 8100 2350
F 0 "#PWR0510" H 8100 2100 50  0001 C CNN
F 1 "GNDA" H 8105 2177 50  0000 C CNN
F 2 "" H 8100 2350 50  0001 C CNN
F 3 "" H 8100 2350 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2350 7200 2250
Wire Wire Line
	7200 2250 8100 2250
Wire Wire Line
	8100 2250 8100 2350
Text Notes 7150 2250 0    50   ~ 0
Single Ground Plane Bridge
$Comp
L Analog_ADC:INA226 U502
U 1 1 5F658AD1
P 8250 5600
F 0 "U502" H 8000 6050 50  0000 C CNN
F 1 "INA226" H 8450 6050 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9050 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina226.pdf" H 8600 5500 50  0001 C CNN
	1    8250 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C508
U 1 1 5F65DD47
P 6750 5750
F 0 "C508" H 6842 5796 50  0000 L CNN
F 1 "0.1u" H 6842 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6750 5750 50  0001 C CNN
F 3 "~" H 6750 5750 50  0001 C CNN
	1    6750 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 5100 8250 4900
Wire Wire Line
	8250 4900 7700 4900
Wire Wire Line
	7700 4900 7700 5300
Wire Wire Line
	7700 5300 7850 5300
Connection ~ 7700 4900
$Comp
L Device:R_Small R503
U 1 1 5F672E54
P 7350 5550
F 0 "R503" H 7409 5596 50  0000 L CNN
F 1 "5" H 7409 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 5550 50  0001 C CNN
F 3 "~" H 7350 5550 50  0001 C CNN
	1    7350 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R505
U 1 1 5F6737CD
P 7350 5950
F 0 "R505" H 7409 5996 50  0000 L CNN
F 1 "5" H 7409 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 5950 50  0001 C CNN
F 3 "~" H 7350 5950 50  0001 C CNN
	1    7350 5950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C509
U 1 1 5F67B609
P 7600 5750
F 0 "C509" H 7692 5796 50  0000 L CNN
F 1 "0.1u" H 7692 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7600 5750 50  0001 C CNN
F 3 "~" H 7600 5750 50  0001 C CNN
	1    7600 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 5550 7600 5550
Wire Wire Line
	7600 5950 7450 5950
Wire Wire Line
	7600 5550 7600 5650
Wire Wire Line
	7600 5850 7600 5950
Wire Wire Line
	7600 5550 7750 5550
Wire Wire Line
	7750 5550 7750 5700
Wire Wire Line
	7750 5700 7850 5700
Connection ~ 7600 5550
Wire Wire Line
	7850 5800 7750 5800
Wire Wire Line
	7750 5800 7750 5950
Wire Wire Line
	7750 5950 7600 5950
Connection ~ 7600 5950
$Comp
L Device:R_Small R504
U 1 1 5F69C01E
P 7100 5750
F 0 "R504" H 7159 5796 50  0000 L CNN
F 1 "3m" H 7159 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7100 5750 50  0001 C CNN
F 3 "~" H 7100 5750 50  0001 C CNN
	1    7100 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 5650 7100 5550
Wire Wire Line
	7100 5550 7250 5550
Wire Wire Line
	7250 5950 7100 5950
Wire Wire Line
	7100 5950 7100 5850
Wire Wire Line
	7100 5550 7100 5300
Connection ~ 7100 5550
Wire Wire Line
	7100 5950 7100 6050
Connection ~ 7100 5950
Text Label 6250 1600 2    50   ~ 0
3V3_REG_OUT
Text Label 7100 4700 0    50   ~ 0
3V3_REG_OUT
Wire Wire Line
	7700 4700 7700 4900
Wire Wire Line
	7100 4700 7700 4700
Wire Wire Line
	6750 5850 6750 6050
$Comp
L power:GND #PWR0519
U 1 1 5F6D3541
P 6750 6050
F 0 "#PWR0519" H 6750 5800 50  0001 C CNN
F 1 "GND" H 6755 5877 50  0000 C CNN
F 2 "" H 6750 6050 50  0001 C CNN
F 3 "" H 6750 6050 50  0001 C CNN
	1    6750 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5650 6750 5300
Wire Wire Line
	6750 5300 7100 5300
Connection ~ 7100 5300
Wire Wire Line
	7100 5300 7700 5300
Connection ~ 7700 5300
$Comp
L power:+3V3 #PWR0520
U 1 1 5F6E40D9
P 7100 6050
F 0 "#PWR0520" H 7100 5900 50  0001 C CNN
F 1 "+3V3" H 7115 6223 50  0000 C CNN
F 2 "" H 7100 6050 50  0001 C CNN
F 3 "" H 7100 6050 50  0001 C CNN
	1    7100 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0521
U 1 1 5F6E53F7
P 8250 6200
F 0 "#PWR0521" H 8250 5950 50  0001 C CNN
F 1 "GND" H 8255 6027 50  0000 C CNN
F 2 "" H 8250 6200 50  0001 C CNN
F 3 "" H 8250 6200 50  0001 C CNN
	1    8250 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 6200 8250 6100
Wire Notes Line
	9650 4600 9650 6450
Wire Notes Line
	6450 6450 6450 4600
Text Notes 6450 4550 0    50   ~ 0
Current Sense 3V3
Wire Wire Line
	8650 5400 8800 5400
Wire Wire Line
	8800 5400 8800 5300
Wire Wire Line
	8800 4900 8250 4900
Connection ~ 8250 4900
Wire Wire Line
	8650 5300 8800 5300
Connection ~ 8800 5300
Wire Wire Line
	8800 5300 8800 4900
Text Notes 7850 4850 0    50   ~ 0
I2C Address = 0b1000101 = 0x89
Wire Wire Line
	8650 5600 9000 5600
Wire Wire Line
	8650 5700 9000 5700
Wire Wire Line
	8650 5900 9000 5900
Text HLabel 9000 5600 2    50   BiDi ~ 0
I2C_SDA
Text HLabel 9000 5700 2    50   BiDi ~ 0
I2C_SCL
Text HLabel 9000 5900 2    50   Output ~ 0
CURRENT_ALRT
Wire Notes Line
	6450 6450 9650 6450
Wire Notes Line
	6450 4600 9650 4600
$Comp
L power:+3V3 #PWR0503
U 1 1 5F685D62
P 9750 1450
F 0 "#PWR0503" H 9750 1300 50  0001 C CNN
F 1 "+3V3" H 9765 1623 50  0000 C CNN
F 2 "" H 9750 1450 50  0001 C CNN
F 3 "" H 9750 1450 50  0001 C CNN
	1    9750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D501
U 1 1 5F68672E
P 9750 1900
F 0 "D501" V 9789 1782 50  0000 R CNN
F 1 "LED" V 9698 1782 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9750 1900 50  0001 C CNN
F 3 "~" H 9750 1900 50  0001 C CNN
	1    9750 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0506
U 1 1 5F686DA9
P 9750 2150
F 0 "#PWR0506" H 9750 1900 50  0001 C CNN
F 1 "GND" H 9755 1977 50  0000 C CNN
F 2 "" H 9750 2150 50  0001 C CNN
F 3 "" H 9750 2150 50  0001 C CNN
	1    9750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2150 9750 2050
Text Notes 9850 2150 0    50   ~ 0
GRN LED
$Comp
L Device:R_Small R501
U 1 1 5F68D65A
P 9750 1600
F 0 "R501" H 9809 1646 50  0000 L CNN
F 1 "470" H 9809 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9750 1600 50  0001 C CNN
F 3 "~" H 9750 1600 50  0001 C CNN
	1    9750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1500 9750 1450
Wire Wire Line
	9750 1700 9750 1750
Wire Notes Line
	9500 950  9500 2650
Wire Notes Line
	9500 2650 10250 2650
Wire Notes Line
	10250 2650 10250 950 
Wire Notes Line
	10250 950  9500 950 
Text Notes 9500 900  0    50   ~ 0
Power Status
$EndSCHEMATC
