import serial
import time

from os import listdir
from os.path import isfile, join

#filepath
mypath = "/Users/gnexlab_imac/code/dlp_raspi/testblog/testblog/Rpi"

onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath,f))]
index = 0 #file array index

#filepath end

ser = serial.Serial("/dev/cu.usbmodem1441", 115200)
if not ser.isOpen():
        ser.open()

def lcdClear ():
        time.sleep(0.5)
        ser.write('c\n')
        time.sleep(0.5)

def lcdWriteFirstLine(str):
        time.sleep(0.5)
        ser.write('l '+str+'\n')
        time.sleep(0.5)

def lcdWriteSecondLine(str):
        time.sleep(0.5)
        ser.write('m '+str+'\n')
        time.sleep(0.5)



mychar = "6"
lastmychar = "6"

lcdClear ()
lcdWriteFirstLine('Select File:')
time.sleep(0.5)
lcdWriteSecondLine(onlyfiles[0])

while 1:
        mychar = ser.readline()
        if (mychar.strip() =="3"):
                if not (mychar==lastmychar):
                        if (index<len(onlyfiles)-1):
                                index=index+1
                                lcdWriteSecondLine(onlyfiles[index])
            
        if (mychar.strip() =="0"):
                if not (mychar==lastmychar):
                        if (index>0):
                                index=index-1
                                lcdWriteSecondLine(onlyfiles[index])
        if (mychar.strip() =="4"):
                break

        lastmychar = mychar
        

lcdWriteSecondLine("Selected: "+str(index+1))               



if ser.isOpen():
        ser.close()

