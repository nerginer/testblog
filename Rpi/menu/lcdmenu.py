
# credit goes to Alan Aufderheide
#
# This provides a menu driven application using the LCD Plates
# from Adafruit Electronics.

import commands
import os
from string import split
from time import sleep, strftime, localtime
from datetime import datetime, timedelta
from xml.dom.minidom import *
import serial
#from gnexlabLCD import gnexlabLCD

import time


# ----------------------------------------------------------------------
# Constants


# Port expander input pin definitions
SELECT                  = 4
RIGHT                   = 0
DOWN                    = 2
UP                      = 1
LEFT                    = 3


configfile = 'lcdmenu.xml'
# set DEBUG=1 for print debug statements
DEBUG = 1
DISPLAY_ROWS = 2
DISPLAY_COLS = 16

# set to 0 if you want the LCD to stay on, 1 to turn off and on auto
AUTO_OFF_LCD = 0


ser = serial.Serial("/dev/cu.usbmodem1431", 115200)
if not ser.isOpen():
    ser.open()

def clear():
    time.sleep(0.2)
    ser.write('c\n')
    time.sleep(0.2)


def home():
    time.sleep(0.2)
    ser.write('h\n')
    time.sleep(0.2)

def lcdWriteFirstLine(str):
    time.sleep(0.1)
    ser.write('l '+str+'\n')
    time.sleep(0.1)

def lcdWriteSecondLine(str):
    time.sleep(0.1)
    ser.write('m '+str+'\n')
    time.sleep(0.1)

def lcdMsg(str):
    time.sleep(0.2)
    ser.write('x '+str+'\n')
    time.sleep(0.2)


def message(text):
    """ Send string to LCD. Newline wraps to second line"""
   # lcdMsg(str(text))
   # print text
    lines = str(text).split('\n')    # Split at newline(s)
    lcdWriteFirstLine(lines[0])
    lcdWriteSecondLine(lines[1])


 #   def backlight(self, color):




    
#lcd = gnexlabLCD(ser)
# in case you add custom logic to lcd to check if it is connected (useful)
#if lcd.connected == 0:
#    quit()

#lcd.begin(DISPLAY_ROWS,DISPLAY_COLS)
#lcd.backlight(lcd.OFF)

# commands





    



    
    



class Widget:
    def __init__(self, myName, myFunction):
        self.text = myName
        self.function = myFunction
        
class Folder:
    def __init__(self, myName, myParent):
        self.text = myName
        self.items = []
        self.parent = myParent

def HandleSettings(node):
    global lcd
    if node.getAttribute('lcdColor').lower() == 'red': print "settings red"


def ProcessNode(currentNode, currentItem):
    children = currentNode.childNodes

    for child in children:
        if isinstance(child, xml.dom.minidom.Element):
            if child.tagName == 'settings':
                HandleSettings(child)
            elif child.tagName == 'folder':
                thisFolder = Folder(child.getAttribute('text'), currentItem)
                currentItem.items.append(thisFolder)
                ProcessNode(child, thisFolder)
            elif child.tagName == 'widget':
                thisWidget = Widget(child.getAttribute('text'), child.getAttribute('function'))
                currentItem.items.append(thisWidget)
            

class Display:
    def __init__(self, folder):
        self.curFolder = folder
        self.curTopItem = 0
        self.curSelectedItem = 0
    def display(self):
        if self.curTopItem > len(self.curFolder.items) - DISPLAY_ROWS:
            self.curTopItem = len(self.curFolder.items) - DISPLAY_ROWS
        if self.curTopItem < 0:
            self.curTopItem = 0
        if DEBUG:
            print('------------------')
        str = ''
        for row in range(self.curTopItem, self.curTopItem+DISPLAY_ROWS):
            if row > self.curTopItem:
                str += '\n'
            if row < len(self.curFolder.items):
                if row == self.curSelectedItem:
                    cmd = '>'+self.curFolder.items[row].text
                    if len(cmd) < 16:
                        for row in range(len(cmd), 16):
                            cmd += ' '
                    if DEBUG:
                        print('|'+cmd+'|')
                    str += cmd
                else:
                    cmd = ' '+self.curFolder.items[row].text
                    if len(cmd) < 16:
                        for row in range(len(cmd), 16):
                            cmd += ' '
                    if DEBUG:
                        print('|'+cmd+'|')
                    str += cmd
        if DEBUG:
            print('------------------')
        home()
        message(str)

    def update(self, command):
        global currentLcd
        global lcdstart
       
        lcdstart = datetime.now()
        if DEBUG:
            print('do',command)
        if command == 'u':
            self.up()
        elif command == 'd':
            self.down()
        elif command == 'r':
            self.right()
        elif command == 'l':
            self.left()
        elif command == 's':
            self.select()
    def up(self):
        if self.curSelectedItem == 0:
            return
        elif self.curSelectedItem > self.curTopItem:
            self.curSelectedItem -= 1
        else:
            self.curTopItem -= 1
            self.curSelectedItem -= 1
    def down(self):
        if self.curSelectedItem+1 == len(self.curFolder.items):
            return
        elif self.curSelectedItem < self.curTopItem+DISPLAY_ROWS-1:
            self.curSelectedItem += 1
        else:
            self.curTopItem += 1
            self.curSelectedItem += 1
    def left(self):
        if isinstance(self.curFolder.parent, Folder):
            # find the current in the parent
            itemno = 0
            index = 0
            for item in self.curFolder.parent.items:
                if self.curFolder == item:
                    if DEBUG:
                        print('foundit')
                    index = itemno
                else:
                    itemno += 1
            if index < len(self.curFolder.parent.items):
                self.curFolder = self.curFolder.parent
                self.curTopItem = index
                self.curSelectedItem = index
            else:
                self.curFolder = self.curFolder.parent
                self.curTopItem = 0
                self.curSelectedItem = 0
    def right(self):
        if isinstance(self.curFolder.items[self.curSelectedItem], Folder):
            self.curFolder = self.curFolder.items[self.curSelectedItem]
            self.curTopItem = 0
            self.curSelectedItem = 0
        elif isinstance(self.curFolder.items[self.curSelectedItem], Widget):
            if DEBUG:
                print('eval', self.curFolder.items[self.curSelectedItem].function)
            eval(self.curFolder.items[self.curSelectedItem].function+'()')
        elif isinstance(self.curFolder.items[self.curSelectedItem], CommandToRun):
            self.curFolder.items[self.curSelectedItem].Run()

    def select(self):
        if DEBUG:
            print('check widget')
        if isinstance(self.curFolder.items[self.curSelectedItem], Widget):
            if DEBUG:
                print('eval', self.curFolder.items[self.curSelectedItem].function)
            eval(self.curFolder.items[self.curSelectedItem].function+'()')

# now start things up
uiItems = Folder('root','')

dom = parse(configfile) # parse an XML file by name

top = dom.documentElement


ProcessNode(top, uiItems)

display = Display(uiItems)
display.display()

if DEBUG:
    print('start while')

lcdstart = datetime.now()

mychar = "6"
lastmychar = "6"


while 1:
        mychar = ser.readline()

        if (mychar.strip() =="3"):
                if not (mychar==lastmychar):
                    display.update('l')
                    display.display()
                    sleep(0.1)
                        
            
        if (mychar.strip() =="0"):
                if not (mychar==lastmychar):
                    display.update('r')
                    display.display()
                    sleep(0.1)   


        if (mychar.strip() =="1"):
                if not (mychar==lastmychar):
                    display.update('u')
                    display.display()
                    sleep(0.1)
                        
            
        if (mychar.strip() =="2"):
                if not (mychar==lastmychar):
                    display.update('d')
                    display.display()
                    sleep(0.1) 
        
        if (mychar.strip() =="4"):
                if not (mychar==lastmychar):
                    display.update('s')
                    display.display()
                    sleep(0.1) 






        lastmychar = mychar



   

