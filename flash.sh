#!/bin/sh
avrdude -p atmega32u4 -c avr109 -U flash:w:atreus-qwerty-mine.hex -P /dev/cu.usbmodem213201

