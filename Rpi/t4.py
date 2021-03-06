import time
import serial





import zipfile
import shutil
import os

import pygame
from pygame.locals import *


# init USB ports
import serialportlist2

serialportlist2.init()

print "LCDPort: " + serialportlist2.LCDPort
print "GrblPort: " + serialportlist2.GrblPort

serLCD = serial.Serial(serialportlist2.LCDPort, 115200)
if not serLCD.isOpen():
    serLCD.open()

def lcdClear():
        time.sleep(0.1)
        serLCD.write('c\n')
        time.sleep(0.1)

def lcdWriteFirstLine(str):
        time.sleep(0.1)
        serLCD.write('l '+str+'\n')
        time.sleep(0.1)

def lcdWriteSecondLine(str):
        time.sleep(0.1)
        serLCD.write('m '+str+'\n')
        time.sleep(0.1)


lcdWriteFirstLine("Printing...")


serMotion = serial.Serial(serialportlist2.GrblPort, 115200)
if not serMotion.isOpen():
    serMotion.open()

serMotion.write("\r\n\r\n")
time.sleep(2)   # Wait for grbl to initialize 
serMotion.flushInput()  # Flush startup text in serial input

# end init USB ports


# Call this function so the Pygame library can initialize itself
pygame.init()
# Create an 1024x768 sized screen
#screen = pygame.display.set_mode((1024, 768),FULLSCREEN) gercegi bu
screen = pygame.display.set_mode((1024, 768))
# Set positions of graphics
background_position = [0, 0]
#Siyah Blank Screen
myBlackScreen = pygame.Surface(screen.get_size())
myBlackScreen = myBlackScreen.convert()
myBlackScreen.fill((0,0,0))
#Mouse gozukmesin
pygame.mouse.set_visible(0)




myInputFile="geometricbracelet.slice.zip"
#myInputFile="marvin_hallow.slice.zip"

# sadece dosya adini aliyoruz
baseFileName = os.path.splitext(os.path.splitext(myInputFile)[0])[0]


#unzip input file
def myUnZip(path):
    
    #del tempdir if exists
    if os.path.exists("Temp/"):
        shutil.rmtree("Temp/")
    #end

    # open zip file

    with zipfile.ZipFile(myInputFile,"r") as z:
        z.extractall("Temp/")

    # end   


def main():
#    initSerial()


    myUnZip("Temp/")
    fp=open('Temp/'+baseFileName+'.gcode','r')
    lines=fp.readlines()
    for line in lines:
        if ';<Slice>' in line :
            processSliceParam(line.split(' ')[1])
        if ';<Delay>' in line :
            processDelay(line.split(' ')[1])
        if not';' in line :
            processGCode(line)
            
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit ()
    pygame.quit ()

# function gcode sender
def processGCode(line):
    if not line.isspace(): 
        print 'GCode: '+line
        serMotion.write(line+'\n')
        print 'Motion Controller: '+serMotion.readline()
        


# function to Delay
def processDelay(var):
    print 'Delaying for druation: '+var
    pygame.time.delay(int(var))

# function to processSliceParam
def processSliceParam(var):
    if 'Blank' in var :
        showBlank()
    if var.isdigit():
        showSlide(var)
        lcdWriteSecondLine("Layer:" + var)


        


def showSlide(var):
    print 'Showing slide number: '+'Temp/'+baseFileName+addzero(var)+'.png'
    # Load and set up graphics.
    background_image = pygame.image.load('Temp/'+baseFileName+addzero(var)+'.png').convert()
    screen.blit(background_image, background_position)
    pygame.display.flip()

def showBlank():
    print 'Showing Blank'
    screen.blit(myBlackScreen, background_position)
    pygame.display.flip()

def addzero(sayi):
    temp = ''
    sifir = 4-len(sayi)
    if sifir < 0:
        raise Exception ('cok buyuk dosya numarasi')
    if sifir == 0:
        return sayi
    if sifir > 0:
        while (sifir > 0):
            temp = temp+'0'
            sifir = sifir -1
        return temp+sayi    
        
 
   
    
if __name__ == "__main__":
    main()
