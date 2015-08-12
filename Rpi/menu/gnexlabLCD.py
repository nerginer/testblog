#!/usr/bin/python

# Python library for gnexlabLCD 



from time import sleep
import serial


class gnexlabLCD():

    # ----------------------------------------------------------------------
    # Constants


    # Port expander input pin definitions
    SELECT                  = 0
    RIGHT                   = 1
    DOWN                    = 2
    UP                      = 3
    LEFT                    = 4


    # ----------------------------------------------------------------------
    # Constructor

    def __init__():
        print "LCD constructor"
        ser = serial.Serial("Com8", 115200)
        if not ser.isOpen():
            ser.open()

    def begin(self, cols, lines):
        self.currline = 0
        self.numlines = lines
        self.numcols = cols
        self.clear()


    def clear(ser):
        time.sleep(0.5)
        ser.write('c\n')
        time.sleep(0.5)


    def home(ser):
        time.sleep(0.5)
        ser.write('h\n')
        time.sleep(0.5)

    def lcdWriteFirstLine(ser, str):
        time.sleep(0.5)
        ser.write('l '+str+'\n')
        time.sleep(0.5)

    def lcdWriteSecondLine(ser, str):
        time.sleep(0.5)
        ser.write('m '+str+'\n')
        time.sleep(0.5)


    def message(ser, text):
        """ Send string to LCD. Newline wraps to second line"""
        lines = str(text).split('\n')    # Split at newline(s)
        lcdWriteFirstLine(ser, lines[0])
        lcdWriteSecondLine(ser, lines[1])


 #   def backlight(self, color):
 

    # Read state of single button
    def buttonPressed(ser, b):
        mychar = ser.readline()
        if (mychar.strip() == b):
                if not (mychar==lastmychar):
                    return true
        lastmychar = mychar
        return false



