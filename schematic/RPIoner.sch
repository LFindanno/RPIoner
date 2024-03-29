EESchema Schematic File Version 2
LIBS:ds1307_pcf8583
LIBS:mosfet
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:RPIoner-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RPIoner"
Date "sab 29 nov 2014"
Rev ""
Comp "Luigi Findanno"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P IC1
U 1 1 5470FCBD
P 2900 4900
F 0 "IC1" H 2150 6150 40  0000 L BNN
F 1 "ATMEGA328-P" H 3300 3500 40  0000 L BNN
F 2 "DIL28" H 2900 4900 30  0000 C CIN
F 3 "" H 2900 4900 60  0000 C CNN
	1    2900 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X13 P2
U 1 1 54723857
P 7850 1850
F 0 "P2" H 7850 2550 50  0000 C CNN
F 1 "CONN_02X13" V 7850 1850 50  0000 C CNN
F 2 "" H 7850 700 60  0000 C CNN
F 3 "" H 7850 700 60  0000 C CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
$Comp
L DS1307 IC2
U 1 1 54729EAD
P 5000 1650
F 0 "IC2" H 4700 2100 50  0000 L BNN
F 1 "DS1307" H 4700 1150 50  0000 L BNN
F 2 "ds1307_pcf8583-DIL08" H 5000 1800 50  0001 C CNN
F 3 "" H 5000 1650 60  0000 C CNN
	1    5000 1650
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X2
U 1 1 54723DC8
P 4900 4500
F 0 "X2" H 4900 4650 60  0000 C CNN
F 1 "16MHz" H 4900 4350 60  0000 C CNN
F 2 "" H 4900 4500 60  0000 C CNN
F 3 "" H 4900 4500 60  0000 C CNN
	1    4900 4500
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 54723FF7
P 4550 4750
F 0 "C3" H 4550 4850 40  0000 L CNN
F 1 "22p 0603" H 4556 4665 40  0000 L CNN
F 2 "" H 4588 4600 30  0000 C CNN
F 3 "" H 4550 4750 60  0000 C CNN
	1    4550 4750
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 54724022
P 5250 4750
F 0 "C4" H 5250 4850 40  0000 L CNN
F 1 "22p 0603" H 5256 4665 40  0000 L CNN
F 2 "" H 5288 4600 30  0000 C CNN
F 3 "" H 5250 4750 60  0000 C CNN
	1    5250 4750
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 547240ED
P 8450 1300
F 0 "R5" V 8530 1300 40  0000 C CNN
F 1 "10K 0603" V 8457 1301 40  0000 C CNN
F 2 "" V 8380 1300 30  0000 C CNN
F 3 "" H 8450 1300 30  0000 C CNN
	1    8450 1300
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 54724162
P 9200 1300
F 0 "R8" V 9280 1300 40  0000 C CNN
F 1 "10K 0603" V 9207 1301 40  0000 C CNN
F 2 "" V 9130 1300 30  0000 C CNN
F 3 "" H 9200 1300 30  0000 C CNN
	1    9200 1300
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 547242D0
P 8850 1750
F 0 "R7" V 8930 1750 40  0000 C CNN
F 1 "10K 0603" V 8857 1751 40  0000 C CNN
F 2 "" V 8780 1750 30  0000 C CNN
F 3 "" H 8850 1750 30  0000 C CNN
	1    8850 1750
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 54724301
P 8450 2050
F 0 "R6" V 8530 2050 40  0000 C CNN
F 1 "20K 0603" V 8457 2051 40  0000 C CNN
F 2 "" V 8380 2050 30  0000 C CNN
F 3 "" H 8450 2050 30  0000 C CNN
	1    8450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1550 8650 1550
Connection ~ 8450 1550
Wire Wire Line
	9050 1550 9500 1550
Wire Wire Line
	8850 950  8850 1250
Wire Wire Line
	7450 950  8850 950 
Wire Wire Line
	8450 950  8450 1050
Wire Wire Line
	7600 1250 7450 1250
Wire Wire Line
	7450 1250 7450 950 
Connection ~ 8450 950 
Text Label 9200 1050 0    60   ~ 0
+5V
$Comp
L STP65NF06 Q1
U 1 1 54724A31
P 8150 2850
F 0 "Q1" H 8160 3020 60  0000 R CNN
F 1 "STP65NF06" H 8800 2850 60  0000 R CNN
F 2 "" H 8150 2850 60  0000 C CNN
F 3 "" H 8150 2850 60  0000 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2650 8250 1450
Wire Wire Line
	8250 1450 8100 1450
$Comp
L R R2
U 1 1 54724C64
P 7600 2850
F 0 "R2" V 7680 2850 40  0000 C CNN
F 1 "68R 0603" V 7607 2851 40  0000 C CNN
F 2 "" V 7530 2850 30  0000 C CNN
F 3 "" H 7600 2850 30  0000 C CNN
	1    7600 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 54724CB3
P 8250 3150
F 0 "#PWR01" H 8250 3150 30  0001 C CNN
F 1 "GND" H 8250 3080 30  0001 C CNN
F 2 "" H 8250 3150 60  0000 C CNN
F 3 "" H 8250 3150 60  0000 C CNN
	1    8250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3050 8250 3150
Wire Wire Line
	7950 2850 7850 2850
$Comp
L GND #PWR02
U 1 1 54724D02
P 8450 2350
F 0 "#PWR02" H 8450 2350 30  0001 C CNN
F 1 "GND" H 8450 2280 30  0001 C CNN
F 2 "" H 8450 2350 60  0000 C CNN
F 3 "" H 8450 2350 60  0000 C CNN
	1    8450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2300 8450 2350
Connection ~ 9200 1550
Wire Wire Line
	9100 1750 9500 1750
Wire Wire Line
	8100 1650 8450 1650
Wire Wire Line
	8450 1650 8450 1800
Wire Wire Line
	8600 1750 8450 1750
Connection ~ 8450 1750
Text Label 9500 1550 0    60   ~ 0
ArRX
Text Label 9500 1750 0    60   ~ 0
ArTX
Wire Wire Line
	7600 1350 7400 1350
Wire Wire Line
	7400 1350 7400 1550
Wire Wire Line
	7400 1550 5500 1550
Wire Wire Line
	7600 1450 7150 1450
Wire Wire Line
	7150 1450 7150 1350
Wire Wire Line
	7150 1350 5500 1350
$Comp
L GND #PWR03
U 1 1 54724FD8
P 4450 2150
F 0 "#PWR03" H 4450 2150 30  0001 C CNN
F 1 "GND" H 4450 2080 30  0001 C CNN
F 2 "" H 4450 2150 60  0000 C CNN
F 3 "" H 4450 2150 60  0000 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1950 4450 1950
Wire Wire Line
	4450 1950 4450 2150
Wire Wire Line
	7350 2850 7150 2850
Text Label 7150 2850 2    60   ~ 0
RPI_ON/OFF
Wire Wire Line
	3900 4500 4600 4500
Wire Wire Line
	4550 4550 4550 4500
Connection ~ 4550 4500
Wire Wire Line
	5250 4250 5250 4550
Wire Wire Line
	5250 4500 5200 4500
Wire Wire Line
	3900 4400 4550 4400
Wire Wire Line
	4550 4400 4550 4250
Wire Wire Line
	4550 4250 5250 4250
Connection ~ 5250 4500
$Comp
L GND #PWR04
U 1 1 5472528E
P 5250 5000
F 0 "#PWR04" H 5250 5000 30  0001 C CNN
F 1 "GND" H 5250 4930 30  0001 C CNN
F 2 "" H 5250 5000 60  0000 C CNN
F 3 "" H 5250 5000 60  0000 C CNN
	1    5250 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 547252AF
P 4550 5000
F 0 "#PWR05" H 4550 5000 30  0001 C CNN
F 1 "GND" H 4550 4930 30  0001 C CNN
F 2 "" H 4550 5000 60  0000 C CNN
F 3 "" H 4550 5000 60  0000 C CNN
	1    4550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4950 5250 5000
Wire Wire Line
	4550 4950 4550 5000
$Comp
L GND #PWR06
U 1 1 54725447
P 1850 6350
F 0 "#PWR06" H 1850 6350 30  0001 C CNN
F 1 "GND" H 1850 6280 30  0001 C CNN
F 2 "" H 1850 6350 60  0000 C CNN
F 3 "" H 1850 6350 60  0000 C CNN
	1    1850 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6000 1850 6000
Wire Wire Line
	1850 6000 1850 6350
Wire Wire Line
	2000 6100 1850 6100
Connection ~ 1850 6100
$Comp
L C C1
U 1 1 5472551A
P 1300 4000
F 0 "C1" H 1300 4100 40  0000 L CNN
F 1 "100n 0603" H 1306 3915 40  0000 L CNN
F 2 "" H 1338 3850 30  0000 C CNN
F 3 "" H 1300 4000 60  0000 C CNN
	1    1300 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 54725555
P 1300 4300
F 0 "#PWR07" H 1300 4300 30  0001 C CNN
F 1 "GND" H 1300 4230 30  0001 C CNN
F 2 "" H 1300 4300 60  0000 C CNN
F 3 "" H 1300 4300 60  0000 C CNN
	1    1300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3800 1300 3800
Wire Wire Line
	1300 4200 1300 4300
Wire Wire Line
	1300 3800 1300 3550
Text Label 1300 3550 0    60   ~ 0
+5V
Wire Wire Line
	3400 1350 4600 1350
Text Label 3400 1000 0    60   ~ 0
+5V
$Comp
L CRYSTAL X1
U 1 1 547257FF
P 4050 1550
F 0 "X1" H 4050 1700 60  0000 C CNN
F 1 "32,768KHz" H 4050 1400 60  0000 C CNN
F 2 "" H 4050 1550 60  0000 C CNN
F 3 "" H 4050 1550 60  0000 C CNN
	1    4050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1550 4350 1550
Wire Wire Line
	3750 1550 3750 1750
Wire Wire Line
	3750 1750 4600 1750
$Comp
L BATTERY BT1
U 1 1 54725A22
P 5800 2250
F 0 "BT1" H 5800 2450 50  0000 C CNN
F 1 "BAT. HOLDER" H 5800 2060 50  0000 C CNN
F 2 "" H 5800 2250 60  0000 C CNN
F 3 "" H 5800 2250 60  0000 C CNN
	1    5800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 1950 5800 1950
$Comp
L GND #PWR08
U 1 1 54725B85
P 5800 2650
F 0 "#PWR08" H 5800 2650 30  0001 C CNN
F 1 "GND" H 5800 2580 30  0001 C CNN
F 2 "" H 5800 2650 60  0000 C CNN
F 3 "" H 5800 2650 60  0000 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2550 5800 2650
$Comp
L R R1
U 1 1 54725CFA
P 7250 4550
F 0 "R1" V 7330 4550 40  0000 C CNN
F 1 "1K 0603" V 7257 4551 40  0000 C CNN
F 2 "" V 7180 4550 30  0000 C CNN
F 3 "" H 7250 4550 30  0000 C CNN
	1    7250 4550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54725D69
P 7800 4550
F 0 "R3" V 7880 4550 40  0000 C CNN
F 1 "1K 0603" V 7807 4551 40  0000 C CNN
F 2 "" V 7730 4550 30  0000 C CNN
F 3 "" H 7800 4550 30  0000 C CNN
	1    7800 4550
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 54725DA2
P 7250 5150
F 0 "D1" H 7250 5250 50  0000 C CNN
F 1 "RED LED 0603" H 7250 5050 50  0000 C CNN
F 2 "" H 7250 5150 60  0000 C CNN
F 3 "" H 7250 5150 60  0000 C CNN
	1    7250 5150
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 54725DD5
P 7800 5150
F 0 "D2" H 7800 5250 50  0000 C CNN
F 1 "GREEN LED 0603" H 7800 5050 50  0000 C CNN
F 2 "" H 7800 5150 60  0000 C CNN
F 3 "" H 7800 5150 60  0000 C CNN
	1    7800 5150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 54725EEB
P 7250 5550
F 0 "#PWR09" H 7250 5550 30  0001 C CNN
F 1 "GND" H 7250 5480 30  0001 C CNN
F 2 "" H 7250 5550 60  0000 C CNN
F 3 "" H 7250 5550 60  0000 C CNN
	1    7250 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 54725EFF
P 7800 5550
F 0 "#PWR010" H 7800 5550 30  0001 C CNN
F 1 "GND" H 7800 5480 30  0001 C CNN
F 2 "" H 7800 5550 60  0000 C CNN
F 3 "" H 7800 5550 60  0000 C CNN
	1    7800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5350 7800 5550
Wire Wire Line
	7250 5350 7250 5550
Wire Wire Line
	7800 4800 7800 4950
Wire Wire Line
	7250 4800 7250 4950
Wire Wire Line
	7250 4300 7250 4150
Wire Wire Line
	7800 4300 7800 4150
Text Label 7250 4150 0    60   ~ 0
+5V
Text Label 7800 4150 0    60   ~ 0
RPI_STATUS
$Comp
L R R4
U 1 1 54726206
P 8350 4550
F 0 "R4" V 8430 4550 40  0000 C CNN
F 1 "10K 0603" V 8357 4551 40  0000 C CNN
F 2 "" V 8280 4550 30  0000 C CNN
F 3 "" H 8350 4550 30  0000 C CNN
	1    8350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4300 8350 4150
$Comp
L GND #PWR011
U 1 1 547262CA
P 8350 5550
F 0 "#PWR011" H 8350 5550 30  0001 C CNN
F 1 "GND" H 8350 5480 30  0001 C CNN
F 2 "" H 8350 5550 60  0000 C CNN
F 3 "" H 8350 5550 60  0000 C CNN
	1    8350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4800 8350 4900
Wire Wire Line
	8350 4850 8700 4850
Text Label 8700 4850 0    60   ~ 0
ON_CMD
Text Label 8350 4150 0    60   ~ 0
+5V
$Comp
L R R9
U 1 1 5472661F
P 9200 4550
F 0 "R9" V 9280 4550 40  0000 C CNN
F 1 "10K 0603" V 9207 4551 40  0000 C CNN
F 2 "" V 9130 4550 30  0000 C CNN
F 3 "" H 9200 4550 30  0000 C CNN
	1    9200 4550
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5472665E
P 9200 5150
F 0 "C5" H 9200 5250 40  0000 L CNN
F 1 "100nF 0603" V 9100 4950 40  0000 L CNN
F 2 "" H 9238 5000 30  0000 C CNN
F 3 "" H 9200 5150 60  0000 C CNN
	1    9200 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 54726697
P 9200 5550
F 0 "#PWR012" H 9200 5550 30  0001 C CNN
F 1 "GND" H 9200 5480 30  0001 C CNN
F 2 "" H 9200 5550 60  0000 C CNN
F 3 "" H 9200 5550 60  0000 C CNN
	1    9200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4800 9200 4950
Wire Wire Line
	9200 5350 9200 5550
Wire Wire Line
	9200 4300 9200 4150
Text Label 9200 4150 0    60   ~ 0
+5V
Wire Wire Line
	9200 4850 9550 4850
Connection ~ 9200 4850
$Comp
L SW_PUSH SW1
U 1 1 5472629F
P 8350 5200
F 0 "SW1" H 8500 5310 50  0000 C CNN
F 1 "SW_ON" H 8350 5120 50  0000 C CNN
F 2 "" H 8350 5200 60  0000 C CNN
F 3 "" H 8350 5200 60  0000 C CNN
	1    8350 5200
	0    1    1    0   
$EndComp
Connection ~ 8350 4850
Wire Wire Line
	8350 5500 8350 5550
Text Label 9550 4850 0    60   ~ 0
RESET
Text Label 3900 5500 0    60   ~ 0
ArTX
Text Label 3900 5400 0    60   ~ 0
ArRX
Text Label 3900 5600 0    60   ~ 0
RPI_STATUS
Text Label 3900 5700 0    60   ~ 0
RPI_ON/OFF
Text Label 3900 5250 0    60   ~ 0
RESET
Wire Wire Line
	3400 1000 3400 1450
$Comp
L C C2
U 1 1 54727534
P 3400 1650
F 0 "C2" H 3400 1750 40  0000 L CNN
F 1 "100n 0603" H 3406 1565 40  0000 L CNN
F 2 "" H 3438 1500 30  0000 C CNN
F 3 "" H 3400 1650 60  0000 C CNN
	1    3400 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 54727565
P 3400 1950
F 0 "#PWR013" H 3400 1950 30  0001 C CNN
F 1 "GND" H 3400 1880 30  0001 C CNN
F 2 "" H 3400 1950 60  0000 C CNN
F 3 "" H 3400 1950 60  0000 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
Connection ~ 3400 1350
Wire Wire Line
	3400 1850 3400 1950
$Comp
L BBS138 Q2
U 1 1 547277BE
P 8850 1450
F 0 "Q2" H 8860 1620 60  0000 R CNN
F 1 "2N7002" H 8860 1300 60  0000 R CNN
F 2 "" H 8850 1450 60  0000 C CNN
F 3 "" H 8850 1450 60  0000 C CNN
	1    8850 1450
	0    1    1    0   
$EndComp
$Comp
L USB-MICRO-B CON1
U 1 1 54727927
P 2050 1700
F 0 "CON1" H 1750 2050 50  0000 C CNN
F 1 "USB-MICRO-B" H 1900 1350 50  0000 C CNN
F 2 "" H 2050 1600 50  0000 C CNN
F 3 "" H 2050 1600 50  0000 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 54727A2C
P 1250 2150
F 0 "#PWR014" H 1250 2150 30  0001 C CNN
F 1 "GND" H 1250 2080 30  0001 C CNN
F 2 "" H 1250 2150 60  0000 C CNN
F 3 "" H 1250 2150 60  0000 C CNN
	1    1250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1500 1250 1500
Wire Wire Line
	1250 1500 1250 1050
Wire Wire Line
	1550 1900 1250 1900
Wire Wire Line
	1250 1900 1250 2150
Text Label 1250 1050 0    60   ~ 0
+5V
$Comp
L SW_PUSH SW2
U 1 1 54775847
P 9450 5200
F 0 "SW2" H 9600 5310 50  0000 C CNN
F 1 "SW_RESET" H 9450 5120 50  0000 C CNN
F 2 "" H 9450 5200 60  0000 C CNN
F 3 "" H 9450 5200 60  0000 C CNN
	1    9450 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4900 9450 4850
Connection ~ 9450 4850
Wire Wire Line
	9450 5500 9200 5500
Connection ~ 9200 5500
$Comp
L POT RV1
U 1 1 54776636
P 10150 4750
F 0 "RV1" H 10150 4650 50  0000 C CNN
F 1 "10K" H 10150 4750 50  0000 C CNN
F 2 "" H 10150 4750 60  0000 C CNN
F 3 "" H 10150 4750 60  0000 C CNN
	1    10150 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 4500 10150 4150
Wire Wire Line
	10150 5000 10150 5550
$Comp
L GND #PWR015
U 1 1 54776826
P 10150 5550
F 0 "#PWR015" H 10150 5550 30  0001 C CNN
F 1 "GND" H 10150 5480 30  0001 C CNN
F 2 "" H 10150 5550 60  0000 C CNN
F 3 "" H 10150 5550 60  0000 C CNN
	1    10150 5550
	1    0    0    -1  
$EndComp
Text Label 10150 4150 0    60   ~ 0
+5V
Wire Wire Line
	10300 4750 10550 4750
Text Label 10550 4750 0    60   ~ 0
OFF_TIME
Text Label 3900 4650 0    60   ~ 0
OFF_TIME
Text Label 3900 5800 0    60   ~ 0
ON_CMD
Text Label 7450 950  0    60   ~ 0
+3,3V_RPI
Wire Wire Line
	8100 1250 8250 1250
Text Label 8250 750  0    60   ~ 0
+5V
Text Label 8250 2550 1    60   ~ 0
GND_RPI
Wire Wire Line
	8250 1250 8250 750 
Text Notes 9750 1650 0    60   ~ 0
to arduino serial port
Text Notes 6150 2350 0    60   ~ 0
CR2025 or \nCR2032 3V \nbattery
Text Notes 1650 1050 0    60   ~ 0
Main power supply connector
Text Notes 4600 1050 0    60   ~ 0
I2C real time clock
Text Notes 7500 750  0    60   ~ 0
GPIO Raspberry\nconnector
Wire Wire Line
	2000 4400 1750 4400
Wire Wire Line
	1750 4400 1750 3800
Connection ~ 1750 3800
Wire Wire Line
	2000 4100 1750 4100
Connection ~ 1750 4100
$Comp
L CONN_01X16 P1
U 1 1 5477F80E
P 6700 4950
F 0 "P1" H 6700 5800 50  0000 C CNN
F 1 "HACK_CONN_01X16" V 6800 4950 50  0000 C CNN
F 2 "" H 6700 4950 60  0000 C CNN
F 3 "" H 6700 4950 60  0000 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4200 6300 4200
Wire Wire Line
	6300 4200 6300 4000
Text Label 6300 4000 0    60   ~ 0
+5V
$Comp
L GND #PWR016
U 1 1 547800AA
P 6300 5900
F 0 "#PWR016" H 6300 5900 30  0001 C CNN
F 1 "GND" H 6300 5830 30  0001 C CNN
F 2 "" H 6300 5900 60  0000 C CNN
F 3 "" H 6300 5900 60  0000 C CNN
	1    6300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5700 6300 5700
Wire Wire Line
	6300 5700 6300 5900
Text Label 3900 4750 0    60   ~ 0
A1
Text Label 3900 4850 0    60   ~ 0
A2
Text Label 3900 4950 0    60   ~ 0
A3
Text Label 3900 5050 0    60   ~ 0
A4
Text Label 3900 5150 0    60   ~ 0
A5
Text Label 6500 5600 2    60   ~ 0
A5
Text Label 6500 5500 2    60   ~ 0
A4
Text Label 6500 5400 2    60   ~ 0
A3
Text Label 6500 5300 2    60   ~ 0
A2
Text Label 6500 5200 2    60   ~ 0
A1
Text Label 3900 5900 0    60   ~ 0
5
Text Label 3900 6000 0    60   ~ 0
6
Text Label 3900 6100 0    60   ~ 0
7
Text Label 3900 3800 0    60   ~ 0
8
Text Label 3900 3900 0    60   ~ 0
9
Text Label 3900 4000 0    60   ~ 0
10
Text Label 3900 4100 0    60   ~ 0
11
Text Label 3900 4200 0    60   ~ 0
12
Text Label 3900 4300 0    60   ~ 0
13
Text Label 6500 4300 2    60   ~ 0
5
Text Label 6500 4400 2    60   ~ 0
6
Text Label 6500 4500 2    60   ~ 0
7
Text Label 6500 4600 2    60   ~ 0
8
Text Label 6500 4700 2    60   ~ 0
9
Text Label 6500 4800 2    60   ~ 0
10
Text Label 6500 4900 2    60   ~ 0
11
Text Label 6500 5000 2    60   ~ 0
12
Text Label 6500 5100 2    60   ~ 0
13
$EndSCHEMATC
