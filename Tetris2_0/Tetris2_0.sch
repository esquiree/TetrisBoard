EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Tetris2_0-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ATMEGA328P-PU ATMEGA328
U 1 1 5AD21522
P 4800 2850
F 0 "ATMEGA328" H 4050 4100 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 5200 1450 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket_LongPads" H 4800 2850 50  0001 C CIN
F 3 "" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5AD2155B
P 3650 4250
F 0 "#PWR01" H 3650 4000 50  0001 C CNN
F 1 "GND" H 3650 4100 50  0000 C CNN
F 2 "" H 3650 4250 50  0001 C CNN
F 3 "" H 3650 4250 50  0001 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5AD21577
P 3800 1750
F 0 "#PWR02" H 3800 1600 50  0001 C CNN
F 1 "VCC" H 3800 1900 50  0000 C CNN
F 2 "" H 3800 1750 50  0001 C CNN
F 3 "" H 3800 1750 50  0001 C CNN
	1    3800 1750
	1    0    0    -1  
$EndComp
$Comp
L SW_SPDT POWER1
U 1 1 5AD215FC
P 2850 1900
F 0 "POWER1" H 2850 2070 50  0000 C CNN
F 1 "SW_SPDT" H 2850 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2850 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
Text GLabel 1250 2300 0    60   Input ~ 0
power
$Comp
L CONN_01X02 5_IN1
U 1 1 5AD217CD
P 1600 2350
F 0 "5_IN1" H 1600 2500 50  0000 C CNN
F 1 "CONN_01X02" V 1700 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1600 2350 50  0001 C CNN
F 3 "" H 1600 2350 50  0001 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AD218C3
P 1250 2450
F 0 "#PWR03" H 1250 2200 50  0001 C CNN
F 1 "GND" H 1250 2300 50  0000 C CNN
F 2 "" H 1250 2450 50  0001 C CNN
F 3 "" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
$Comp
L Crystal 16MHz1
U 1 1 5AD21A79
P 6400 2350
F 0 "16MHz1" H 6400 2500 50  0000 C CNN
F 1 "Crystal" H 6400 2200 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD_HandSoldering" H 6400 2350 50  0001 C CNN
F 3 "" H 6400 2350 50  0001 C CNN
	1    6400 2350
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5AD21B9D
P 6750 2150
F 0 "C1" H 6775 2250 50  0000 L CNN
F 1 "C" H 6775 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6788 2000 50  0001 C CNN
F 3 "" H 6750 2150 50  0001 C CNN
	1    6750 2150
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5AD21C63
P 6750 2550
F 0 "C2" H 6775 2650 50  0000 L CNN
F 1 "C" H 6775 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6788 2400 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5AD21CAB
P 7200 2400
F 0 "#PWR04" H 7200 2150 50  0001 C CNN
F 1 "GND" H 7200 2250 50  0000 C CNN
F 2 "" H 7200 2400 50  0001 C CNN
F 3 "" H 7200 2400 50  0001 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS SEG1
U 1 1 5AD21FC8
P 1850 6000
F 0 "SEG1" H 1850 6550 50  0000 C CNN
F 1 "7SEGMENTS" H 1850 5550 50  0000 C CNN
F 2 "Displays_7-Segment:KCSC02-107" H 1850 6000 50  0001 C CNN
F 3 "" H 1850 6000 50  0001 C CNN
	1    1850 6000
	1    0    0    -1  
$EndComp
Text GLabel 1150 5600 0    60   Input ~ 0
PC0
Text GLabel 850  5700 0    60   Input ~ 0
PC1
Text GLabel 1150 5800 0    60   Input ~ 0
PC2
Text GLabel 850  5900 0    60   Input ~ 0
PC3
Text GLabel 1150 6000 0    60   Input ~ 0
PC4
Text GLabel 850  6100 0    60   Input ~ 0
PC5
Text GLabel 1150 6200 0    60   Input ~ 0
PD0
Text GLabel 2600 6250 2    60   Input ~ 0
PD1
$Comp
L Q_NPN_BCE Q1
U 1 1 5AD22A6E
P 2900 5800
F 0 "Q1" H 3100 5850 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3100 5750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3100 5900 50  0001 C CNN
F 3 "" H 2900 5800 50  0001 C CNN
	1    2900 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AD23476
P 3000 6100
F 0 "#PWR05" H 3000 5850 50  0001 C CNN
F 1 "GND" H 3000 5950 50  0000 C CNN
F 2 "" H 3000 6100 50  0001 C CNN
F 3 "" H 3000 6100 50  0001 C CNN
	1    3000 6100
	1    0    0    -1  
$EndComp
Text GLabel 2600 5800 0    60   Input ~ 0
PD2
$Comp
L 7SEGMENTS SEG3
U 1 1 5AD23790
P 1850 7150
F 0 "SEG3" H 1850 7700 50  0000 C CNN
F 1 "7SEGMENTS" H 1850 6700 50  0000 C CNN
F 2 "Displays_7-Segment:KCSC02-107" H 1850 7150 50  0001 C CNN
F 3 "" H 1850 7150 50  0001 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
Text GLabel 1150 6750 0    60   Input ~ 0
PC0
Text GLabel 850  6850 0    60   Input ~ 0
PC1
Text GLabel 1150 6950 0    60   Input ~ 0
PC2
Text GLabel 850  7050 0    60   Input ~ 0
PC3
Text GLabel 1150 7150 0    60   Input ~ 0
PC4
Text GLabel 850  7250 0    60   Input ~ 0
PC5
Text GLabel 1150 7350 0    60   Input ~ 0
PD0
Text GLabel 2600 7400 2    60   Input ~ 0
PD1
$Comp
L Q_NPN_BCE Q3
U 1 1 5AD237A6
P 2900 6950
F 0 "Q3" H 3100 7000 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3100 6900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3100 7050 50  0001 C CNN
F 3 "" H 2900 6950 50  0001 C CNN
	1    2900 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AD237B1
P 3000 7250
F 0 "#PWR06" H 3000 7000 50  0001 C CNN
F 1 "GND" H 3000 7100 50  0000 C CNN
F 2 "" H 3000 7250 50  0001 C CNN
F 3 "" H 3000 7250 50  0001 C CNN
	1    3000 7250
	1    0    0    -1  
$EndComp
Text GLabel 2600 6950 0    60   Input ~ 0
PD4
$Comp
L 7SEGMENTS SEG2
U 1 1 5AD2390C
P 4950 6000
F 0 "SEG2" H 4950 6550 50  0000 C CNN
F 1 "7SEGMENTS" H 4950 5550 50  0000 C CNN
F 2 "Displays_7-Segment:KCSC02-107" H 4950 6000 50  0001 C CNN
F 3 "" H 4950 6000 50  0001 C CNN
	1    4950 6000
	1    0    0    -1  
$EndComp
Text GLabel 4250 5600 0    60   Input ~ 0
PC0
Text GLabel 3950 5700 0    60   Input ~ 0
PC1
Text GLabel 4250 5800 0    60   Input ~ 0
PC2
Text GLabel 3950 5900 0    60   Input ~ 0
PC3
Text GLabel 4250 6000 0    60   Input ~ 0
PC4
Text GLabel 3950 6100 0    60   Input ~ 0
PC5
Text GLabel 4250 6200 0    60   Input ~ 0
PD0
Text GLabel 5700 6250 2    60   Input ~ 0
PD1
$Comp
L Q_NPN_BCE Q2
U 1 1 5AD23922
P 6000 5800
F 0 "Q2" H 6200 5850 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6200 5750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6200 5900 50  0001 C CNN
F 3 "" H 6000 5800 50  0001 C CNN
	1    6000 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5AD2392D
P 6100 6100
F 0 "#PWR07" H 6100 5850 50  0001 C CNN
F 1 "GND" H 6100 5950 50  0000 C CNN
F 2 "" H 6100 6100 50  0001 C CNN
F 3 "" H 6100 6100 50  0001 C CNN
	1    6100 6100
	1    0    0    -1  
$EndComp
Text GLabel 5700 5800 0    60   Input ~ 0
PD3
$Comp
L 7SEGMENTS SEG4
U 1 1 5AD23936
P 4950 7150
F 0 "SEG4" H 4950 7700 50  0000 C CNN
F 1 "7SEGMENTS" H 4950 6700 50  0000 C CNN
F 2 "Displays_7-Segment:KCSC02-107" H 4950 7150 50  0001 C CNN
F 3 "" H 4950 7150 50  0001 C CNN
	1    4950 7150
	1    0    0    -1  
$EndComp
Text GLabel 4250 6750 0    60   Input ~ 0
PC0
Text GLabel 3950 6850 0    60   Input ~ 0
PC1
Text GLabel 4250 6950 0    60   Input ~ 0
PC2
Text GLabel 3950 7050 0    60   Input ~ 0
PC3
Text GLabel 4250 7150 0    60   Input ~ 0
PC4
Text GLabel 3950 7250 0    60   Input ~ 0
PC5
Text GLabel 4250 7350 0    60   Input ~ 0
PD0
Text GLabel 5700 7400 2    60   Input ~ 0
PD1
$Comp
L Q_NPN_BCE Q4
U 1 1 5AD2394C
P 6000 6950
F 0 "Q4" H 6200 7000 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6200 6900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6200 7050 50  0001 C CNN
F 3 "" H 6000 6950 50  0001 C CNN
	1    6000 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AD23957
P 6100 7250
F 0 "#PWR08" H 6100 7000 50  0001 C CNN
F 1 "GND" H 6100 7100 50  0000 C CNN
F 2 "" H 6100 7250 50  0001 C CNN
F 3 "" H 6100 7250 50  0001 C CNN
	1    6100 7250
	1    0    0    -1  
$EndComp
Text GLabel 5700 6950 0    60   Input ~ 0
PD5
Text GLabel 6950 2700 2    60   Input ~ 0
PC0
Text GLabel 7200 2800 2    60   Input ~ 0
PC1
Text GLabel 6950 2900 2    60   Input ~ 0
PC2
Text GLabel 7200 3000 2    60   Input ~ 0
PC3
Text GLabel 6950 3100 2    60   Input ~ 0
PC4
Text GLabel 7200 3200 2    60   Input ~ 0
PC5
Text GLabel 6600 3350 2    60   Input ~ 0
PD0
Text GLabel 6900 3450 2    60   Input ~ 0
PD1
Text GLabel 6600 3550 2    60   Input ~ 0
PD2
Text GLabel 6900 3650 2    60   Input ~ 0
PD3
Text GLabel 6600 3750 2    60   Input ~ 0
PD4
Text GLabel 6900 3850 2    60   Input ~ 0
PD5
Text GLabel 6600 3950 2    60   Input ~ 0
PD6
Text GLabel 6900 4050 2    60   Input ~ 0
PD7
$Comp
L CONN_01X01 LED1
U 1 1 5AD255C2
P 1650 3150
F 0 "LED1" H 1650 3250 50  0000 C CNN
F 1 "CONN_01X01" V 1750 3150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1650 3150 50  0001 C CNN
F 3 "" H 1650 3150 50  0001 C CNN
	1    1650 3150
	1    0    0    -1  
$EndComp
Text GLabel 1250 3150 0    60   Input ~ 0
PD6
$Comp
L SW_Push SW1
U 1 1 5AD263BD
P 8700 1850
F 0 "SW1" H 8750 1950 50  0000 L CNN
F 1 "SW_Push" H 8700 1790 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8700 2050 50  0001 C CNN
F 3 "" H 8700 2050 50  0001 C CNN
	1    8700 1850
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5AD266EE
P 8700 2200
F 0 "SW2" H 8750 2300 50  0000 L CNN
F 1 "SW_Push" H 8700 2140 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8700 2400 50  0001 C CNN
F 3 "" H 8700 2400 50  0001 C CNN
	1    8700 2200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5AD26743
P 8700 2550
F 0 "SW3" H 8750 2650 50  0000 L CNN
F 1 "SW_Push" H 8700 2490 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8700 2750 50  0001 C CNN
F 3 "" H 8700 2750 50  0001 C CNN
	1    8700 2550
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW4
U 1 1 5AD268A1
P 8700 2900
F 0 "SW4" H 8750 3000 50  0000 L CNN
F 1 "SW_Push" H 8700 2840 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8700 3100 50  0001 C CNN
F 3 "" H 8700 3100 50  0001 C CNN
	1    8700 2900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW5
U 1 1 5AD26AD2
P 8700 3250
F 0 "SW5" H 8750 3350 50  0000 L CNN
F 1 "SW_Push" H 8700 3190 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8700 3450 50  0001 C CNN
F 3 "" H 8700 3450 50  0001 C CNN
	1    8700 3250
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW6
U 1 1 5AD26B26
P 8700 3600
F 0 "SW6" H 8750 3700 50  0000 L CNN
F 1 "SW_Push" H 8700 3540 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8700 3800 50  0001 C CNN
F 3 "" H 8700 3800 50  0001 C CNN
	1    8700 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AD26BDA
P 9000 3700
F 0 "#PWR09" H 9000 3450 50  0001 C CNN
F 1 "GND" H 9000 3550 50  0000 C CNN
F 2 "" H 9000 3700 50  0001 C CNN
F 3 "" H 9000 3700 50  0001 C CNN
	1    9000 3700
	1    0    0    -1  
$EndComp
Text GLabel 6050 1500 2    60   Input ~ 0
PB0
Text GLabel 6050 1650 2    60   Input ~ 0
PB1
Text GLabel 6050 1800 2    60   Input ~ 0
PB2
Text GLabel 6450 2000 2    60   Input ~ 0
PB5
Text GLabel 6450 1850 2    60   Input ~ 0
PB4
Text GLabel 6450 1700 2    60   Input ~ 0
PB3
Text GLabel 8300 1850 0    60   Input ~ 0
PB0
Text GLabel 8300 2200 0    60   Input ~ 0
PB1
Text GLabel 8300 2550 0    60   Input ~ 0
PB2
Text GLabel 8300 2900 0    60   Input ~ 0
PB3
Text GLabel 8300 3250 0    60   Input ~ 0
PB4
Text GLabel 8300 3600 0    60   Input ~ 0
PB5
$Comp
L CONN_02X05 ICSP1
U 1 1 5AD299EF
P 8450 4750
F 0 "ICSP1" H 8450 5050 50  0000 C CNN
F 1 "CONN_02X05" H 8450 4450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 8450 3550 50  0001 C CNN
F 3 "" H 8450 3550 50  0001 C CNN
	1    8450 4750
	-1   0    0    -1  
$EndComp
Text GLabel 6950 3300 2    60   Input ~ 0
PC6
$Comp
L R R1
U 1 1 5AD2BC13
P 6100 2650
F 0 "R1" V 6180 2650 50  0000 C CNN
F 1 "R" V 6100 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 2650 50  0001 C CNN
F 3 "" H 6100 2650 50  0001 C CNN
	1    6100 2650
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AD2C4A5
P 6400 2750
F 0 "R2" V 6480 2750 50  0000 C CNN
F 1 "R" V 6400 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 2750 50  0001 C CNN
F 3 "" H 6400 2750 50  0001 C CNN
	1    6400 2750
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5AD2C527
P 6100 2850
F 0 "R3" V 6180 2850 50  0000 C CNN
F 1 "R" V 6100 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5AD2C5A3
P 6400 2950
F 0 "R4" V 6480 2950 50  0000 C CNN
F 1 "R" V 6400 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 2950 50  0001 C CNN
F 3 "" H 6400 2950 50  0001 C CNN
	1    6400 2950
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5AD2C641
P 6100 3050
F 0 "R5" V 6180 3050 50  0000 C CNN
F 1 "R" V 6100 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 3050 50  0001 C CNN
F 3 "" H 6100 3050 50  0001 C CNN
	1    6100 3050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AD2C6AC
P 6400 3150
F 0 "R6" V 6480 3150 50  0000 C CNN
F 1 "R" V 6400 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 3150 50  0001 C CNN
F 3 "" H 6400 3150 50  0001 C CNN
	1    6400 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1750 3900 1750
Wire Wire Line
	3900 4050 3650 4050
Wire Wire Line
	3650 3950 3650 4250
Wire Wire Line
	3900 3950 3650 3950
Connection ~ 3650 4050
Wire Wire Line
	3050 1800 3200 1800
Wire Wire Line
	3200 1800 3200 1900
Wire Wire Line
	3200 1900 3800 1900
Wire Wire Line
	3800 1900 3800 1750
Connection ~ 3800 1750
Wire Wire Line
	2650 1900 2500 1900
Wire Wire Line
	2500 1900 2500 1800
Wire Wire Line
	1400 2300 1250 2300
Wire Wire Line
	1400 2400 1250 2400
Wire Wire Line
	1250 2400 1250 2450
Wire Wire Line
	7050 2550 6900 2550
Wire Wire Line
	7050 2150 7050 2550
Wire Wire Line
	7050 2350 7200 2350
Wire Wire Line
	7200 2350 7200 2400
Wire Wire Line
	6900 2150 7050 2150
Connection ~ 7050 2350
Wire Wire Line
	6200 2150 6600 2150
Wire Wire Line
	6400 2150 6400 2200
Wire Wire Line
	6000 2550 6600 2550
Wire Wire Line
	6400 2550 6400 2500
Wire Wire Line
	5800 2450 6000 2450
Wire Wire Line
	6000 2450 6000 2550
Connection ~ 6400 2550
Wire Wire Line
	5800 2350 6200 2350
Wire Wire Line
	6200 2350 6200 2150
Connection ~ 6400 2150
Wire Wire Line
	1150 5600 1250 5600
Wire Wire Line
	1250 5700 850  5700
Wire Wire Line
	1250 5800 1150 5800
Wire Wire Line
	1250 5900 850  5900
Wire Wire Line
	1250 6000 1150 6000
Wire Wire Line
	1250 6100 850  6100
Wire Wire Line
	1150 6200 1250 6200
Wire Wire Line
	2600 6250 2450 6250
Wire Wire Line
	2700 5650 2450 5650
Wire Wire Line
	2700 5550 2700 5650
Wire Wire Line
	2700 5600 3000 5600
Wire Wire Line
	2450 5550 2700 5550
Connection ~ 2700 5600
Wire Wire Line
	3000 6100 3000 6000
Wire Wire Line
	2600 5800 2700 5800
Wire Wire Line
	1150 6750 1250 6750
Wire Wire Line
	1250 6850 850  6850
Wire Wire Line
	1250 6950 1150 6950
Wire Wire Line
	1250 7050 850  7050
Wire Wire Line
	1250 7150 1150 7150
Wire Wire Line
	1250 7250 850  7250
Wire Wire Line
	1150 7350 1250 7350
Wire Wire Line
	2600 7400 2450 7400
Wire Wire Line
	2700 6800 2450 6800
Wire Wire Line
	2700 6700 2700 6800
Wire Wire Line
	2700 6750 3000 6750
Wire Wire Line
	2450 6700 2700 6700
Connection ~ 2700 6750
Wire Wire Line
	3000 7250 3000 7150
Wire Wire Line
	2600 6950 2700 6950
Wire Wire Line
	4250 5600 4350 5600
Wire Wire Line
	4350 5700 3950 5700
Wire Wire Line
	4350 5800 4250 5800
Wire Wire Line
	4350 5900 3950 5900
Wire Wire Line
	4350 6000 4250 6000
Wire Wire Line
	4350 6100 3950 6100
Wire Wire Line
	4250 6200 4350 6200
Wire Wire Line
	5700 6250 5550 6250
Wire Wire Line
	5800 5650 5550 5650
Wire Wire Line
	5800 5550 5800 5650
Wire Wire Line
	5800 5600 6100 5600
Wire Wire Line
	5550 5550 5800 5550
Connection ~ 5800 5600
Wire Wire Line
	6100 6100 6100 6000
Wire Wire Line
	5700 5800 5800 5800
Wire Wire Line
	4250 6750 4350 6750
Wire Wire Line
	4350 6850 3950 6850
Wire Wire Line
	4350 6950 4250 6950
Wire Wire Line
	4350 7050 3950 7050
Wire Wire Line
	4350 7150 4250 7150
Wire Wire Line
	4350 7250 3950 7250
Wire Wire Line
	4250 7350 4350 7350
Wire Wire Line
	5700 7400 5550 7400
Wire Wire Line
	5800 6800 5550 6800
Wire Wire Line
	5800 6700 5800 6800
Wire Wire Line
	5800 6750 6100 6750
Wire Wire Line
	5550 6700 5800 6700
Connection ~ 5800 6750
Wire Wire Line
	6100 7250 6100 7150
Wire Wire Line
	5700 6950 5800 6950
Wire Wire Line
	6150 3350 6600 3350
Wire Wire Line
	6350 3450 6900 3450
Wire Wire Line
	6150 3550 6600 3550
Wire Wire Line
	6350 3650 6900 3650
Wire Wire Line
	6150 3750 6600 3750
Wire Wire Line
	6350 3850 6900 3850
Wire Wire Line
	5800 3950 6600 3950
Wire Wire Line
	5800 4050 6900 4050
Wire Wire Line
	1450 3150 1250 3150
Wire Wire Line
	9000 1850 9000 3700
Wire Wire Line
	9000 3600 8900 3600
Wire Wire Line
	8900 3250 9000 3250
Connection ~ 9000 3600
Wire Wire Line
	8900 2900 9000 2900
Connection ~ 9000 3250
Wire Wire Line
	8900 2550 9000 2550
Connection ~ 9000 2900
Wire Wire Line
	8900 2200 9000 2200
Connection ~ 9000 2550
Wire Wire Line
	8900 1850 9000 1850
Connection ~ 9000 2200
Wire Wire Line
	5800 1750 5850 1750
Wire Wire Line
	5850 1750 5850 1500
Wire Wire Line
	5850 1500 6050 1500
Wire Wire Line
	5800 1850 5900 1850
Wire Wire Line
	5900 1850 5900 1650
Wire Wire Line
	5900 1650 6050 1650
Wire Wire Line
	5800 1950 5950 1950
Wire Wire Line
	5950 1950 5950 1800
Wire Wire Line
	5950 1800 6050 1800
Wire Wire Line
	6450 2000 6400 2000
Wire Wire Line
	6400 2000 6400 2100
Wire Wire Line
	6400 2100 6150 2100
Wire Wire Line
	6150 2100 6150 2250
Wire Wire Line
	6150 2250 5800 2250
Wire Wire Line
	6450 1850 6400 1850
Wire Wire Line
	6400 1850 6400 1950
Wire Wire Line
	6400 1950 6350 1950
Wire Wire Line
	6350 1950 6350 2050
Wire Wire Line
	6350 2050 6100 2050
Wire Wire Line
	6100 2050 6100 2150
Wire Wire Line
	6100 2150 5800 2150
Wire Wire Line
	5800 2050 6000 2050
Wire Wire Line
	6000 2050 6000 2000
Wire Wire Line
	6000 2000 6300 2000
Wire Wire Line
	6300 2000 6300 1900
Wire Wire Line
	6300 1900 6350 1900
Wire Wire Line
	6350 1900 6350 1700
Wire Wire Line
	6350 1700 6450 1700
Wire Wire Line
	8300 3600 8500 3600
Wire Wire Line
	8300 3250 8500 3250
Wire Wire Line
	8300 2900 8500 2900
Wire Wire Line
	8300 2550 8500 2550
Wire Wire Line
	8300 2200 8500 2200
Wire Wire Line
	8300 1850 8500 1850
Wire Wire Line
	5800 3100 5850 3100
Wire Wire Line
	5850 3100 5850 3150
Wire Wire Line
	5850 3150 6250 3150
Wire Wire Line
	5800 3000 5850 3000
Wire Wire Line
	5850 3000 5850 3050
Wire Wire Line
	5850 3050 5950 3050
Wire Wire Line
	6250 2950 5900 2950
Wire Wire Line
	5900 2950 5900 2900
Wire Wire Line
	5900 2900 5800 2900
Wire Wire Line
	5800 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2850
Wire Wire Line
	5900 2850 5950 2850
Wire Wire Line
	6250 2750 5900 2750
Wire Wire Line
	5900 2750 5900 2700
Wire Wire Line
	5900 2700 5800 2700
Wire Wire Line
	5950 2650 5850 2650
Wire Wire Line
	5850 2650 5850 2600
Wire Wire Line
	5850 2600 5800 2600
Wire Wire Line
	6250 2650 6600 2650
Wire Wire Line
	6600 2650 6600 2700
Wire Wire Line
	6600 2700 6950 2700
Wire Wire Line
	7200 2800 6700 2800
Wire Wire Line
	6700 2800 6700 2750
Wire Wire Line
	6700 2750 6550 2750
Wire Wire Line
	6250 2850 6700 2850
Wire Wire Line
	6700 2850 6700 2900
Wire Wire Line
	6700 2900 6950 2900
Wire Wire Line
	6550 2950 6750 2950
Wire Wire Line
	6750 2950 6750 3000
Wire Wire Line
	6750 3000 7200 3000
Wire Wire Line
	6250 3050 6750 3050
Wire Wire Line
	6750 3050 6750 3100
Wire Wire Line
	6750 3100 6950 3100
Wire Wire Line
	6550 3150 6550 3200
Wire Wire Line
	6550 3200 7200 3200
$Comp
L R R7
U 1 1 5AD2E94C
P 6000 3350
F 0 "R7" V 6080 3350 50  0000 C CNN
F 1 "R" V 6000 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5930 3350 50  0001 C CNN
F 3 "" H 6000 3350 50  0001 C CNN
	1    6000 3350
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5AD2EA6C
P 6200 3450
F 0 "R8" V 6280 3450 50  0000 C CNN
F 1 "R" V 6200 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 3450 50  0001 C CNN
F 3 "" H 6200 3450 50  0001 C CNN
	1    6200 3450
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5AD2EADC
P 6000 3550
F 0 "R9" V 6080 3550 50  0000 C CNN
F 1 "R" V 6000 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5930 3550 50  0001 C CNN
F 3 "" H 6000 3550 50  0001 C CNN
	1    6000 3550
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5AD2EB70
P 6200 3650
F 0 "R10" V 6280 3650 50  0000 C CNN
F 1 "R" V 6200 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 3650 50  0001 C CNN
F 3 "" H 6200 3650 50  0001 C CNN
	1    6200 3650
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5AD2EC10
P 6000 3750
F 0 "R11" V 6080 3750 50  0000 C CNN
F 1 "R" V 6000 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5930 3750 50  0001 C CNN
F 3 "" H 6000 3750 50  0001 C CNN
	1    6000 3750
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5AD2EC8F
P 6200 3850
F 0 "R12" V 6280 3850 50  0000 C CNN
F 1 "R" V 6200 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 3850 50  0001 C CNN
F 3 "" H 6200 3850 50  0001 C CNN
	1    6200 3850
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5AD2F030
P 8550 4150
F 0 "R13" V 8630 4150 50  0000 C CNN
F 1 "R" V 8550 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8480 4150 50  0001 C CNN
F 3 "" H 8550 4150 50  0001 C CNN
	1    8550 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3300 6850 3300
Wire Wire Line
	6850 3300 6850 3250
Wire Wire Line
	6850 3250 5850 3250
Wire Wire Line
	5850 3250 5850 3200
Wire Wire Line
	5850 3200 5800 3200
Wire Wire Line
	5800 3350 5850 3350
Wire Wire Line
	5850 3550 5800 3550
Wire Wire Line
	6050 3450 5800 3450
Wire Wire Line
	6050 3650 5800 3650
Wire Wire Line
	5850 3750 5800 3750
Wire Wire Line
	6050 3850 5800 3850
Text GLabel 8850 4150 2    60   Input ~ 0
power
Text GLabel 8250 4150 0    60   Input ~ 0
PC6
Wire Wire Line
	8250 4150 8400 4150
Wire Wire Line
	8700 4150 8850 4150
Text GLabel 7600 4500 0    60   Input ~ 0
power
Wire Wire Line
	8050 4550 8200 4550
Wire Wire Line
	8050 4550 8050 4500
Wire Wire Line
	8050 4500 7600 4500
$Comp
L GND #PWR010
U 1 1 5AD31DE9
P 7900 5000
F 0 "#PWR010" H 7900 4750 50  0001 C CNN
F 1 "GND" H 7900 4850 50  0000 C CNN
F 2 "" H 7900 5000 50  0001 C CNN
F 3 "" H 7900 5000 50  0001 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5000 7900 4950
Wire Wire Line
	8200 4950 7900 4950
Wire Wire Line
	8200 4650 8200 4950
Connection ~ 8200 4850
Connection ~ 8200 4750
Text GLabel 8850 4450 2    60   Input ~ 0
PB3
Text GLabel 8850 4650 2    60   Input ~ 0
PC6
Text GLabel 8850 4800 2    60   Input ~ 0
PB5
Text GLabel 8850 4950 2    60   Input ~ 0
PB4
Wire Wire Line
	8700 4950 8850 4950
Wire Wire Line
	8700 4850 8800 4850
Wire Wire Line
	8800 4850 8800 4800
Wire Wire Line
	8800 4800 8850 4800
Wire Wire Line
	8700 4750 8750 4750
Wire Wire Line
	8750 4750 8750 4650
Wire Wire Line
	8750 4650 8850 4650
Wire Wire Line
	8700 4550 8800 4550
Wire Wire Line
	8800 4550 8800 4450
Wire Wire Line
	8800 4450 8850 4450
Text GLabel 2500 1800 0    60   Input ~ 0
power
$EndSCHEMATC
