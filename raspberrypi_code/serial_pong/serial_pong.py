#!/usr/bin/python
# -*- coding: utf-8 -*-
#
#  serial_pong.py
#  
#  Serial port PONG service.
#  Warning: raw code!
#  Description: 
#  if I'm running, I reply PONG to the PING sent by Arduino's 
#  serial port. In this way I say if the system is on or not.
#
#  Copyright (C) 2014 Luigi Findanno
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USAcd
#  
#  

import os, serial, argparse
from serial.tools import list_ports


# program start
def main():
	
	parser = argparse.ArgumentParser()
	parser.add_argument('-p', action='store', default="/dev/ttyS0", dest='port', help='sets serial port')
	parser.add_argument('-l', action='store_true', default=False, dest='portlist', help='lists available serial ports')
	results = parser.parse_args()
	
	if results.portlist == True:
		print "List of available serial ports on the system:\n"
		for p in serial_ports():
			print '   ', p
		print
	else:
		
		# opening serial port
		ser = serial.Serial()
		ser.port=results.port
		ser.baudrate=19200
		print ser		

		try:
			ser.open()
			ser.isOpen()
			#print "ok opening port", results.port
		except serial.SerialException:
			print "Error: can not open the selected serial port ", results.port, "."
			return 
		
		# forever loop
		try:
			while True:
				data = ""
				while ser.inWaiting() > 0:
					data = ser.read(4)
					print data
					if len(data)>=4:
						if data=="PING": 
							#print "- PING - received"
							ser.write("PONG")
							#print "sending - PONG -"
						data=""
				
		except serial.SerialException:
			print "Error: comunication erron on ", results.port, "."
			return 
		
	return 0

# Serial ports list generator
def serial_ports():
	if os.name == 'nt':
		# windows
		for i in range(256):
			try:
				s = serial.Serial(i)
				s.close()
				yield 'COM' + str(i + 1)
			except serial.SerialException:
				pass
	else:
		# unix
		for port in list_ports.comports():
			yield port[0]


if __name__ == '__main__':
	main()

