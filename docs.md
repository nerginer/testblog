---
layout: page
title: Documentation
permalink: /docs/

---

### Overview 

This documentation is for the people who want to build their own resin based 3D Printer. I will try to tell you step by step instructions on building a whole control system. The mechanics of the printer is strait forward so the main information here will be related with the electronics and the software. 

I assume that One who decided to build his own 3D printer has enough knowlage about 3D printing. So keep in mind that this is a thecnical document.

The Heard of the control system is **Raspberry Pi 2 (Rpi)**. There are two arduino based electronics connected via USB with this Rpi. One of the arduino based board will be dealing with the LCD and the buttons. We will call it **Front Panel LCD Module**. The other one will be responsible with the motion related activities. It's name is **Motion Controller**.

For the DLP type 3D printers a DLP projector will project the 2D image files on the resin. Rpi HTMI port is used for the projector connection. UV led illuminated LCD monitors are popular nowadays to cure the resin. HDMI port of Rpi can also be used for these LCD monitors.

There are lots of software parts in this project. A python code will be running on the Rpi as a maestro. It will read the image files from USB flash disk and display them through HDMI. It will also send motion commands to the Motion Controller, listen for the buttons and display information to the Front Panel LCD.

This system is flexible enough to be used with every mechanical design. People can modify so little configuration on the software and can use this bundle for their own use. You may have your own design and mechanical motion requirements. All you will do is fine tune some G-Code blocks for needed motion cycles.

I will be more than happy to talk about your design and modification needs.

Enjoy 3D Printing!

### Getting Started

The important decision to be taken here is to build your own electronics or buy one from me. The electronic boards have microcontrollers which has embeded firmware. If you purchase those boards from me, you will receive those boards with related firmwares inside. You will also have the source code of those firmwares which are not open source.

People who are good at arduino programming may develop their own firmwares and can build their own electronics.

Please start with the main parts of the system. Below you will find short descriptions of the main building blocks of the controller system.

### Electronics

* Front Panel LCD Hardware

This board is an arduino compatible board which have LCD and buttons. It will comunicate with RPi via USB. It is a serial communication. The maestro python code running on RPi will display information with this board to the user of the machine something like **"Printing Layer 23 of 850"**  The board will also send button pressed events to RPi. 

* Motion Controller Hardware

The Motion controller is also an arduino board which handles the G-code commands coming through USB. GRBL g-code interpreter will do the Job. Homing and Moving the axis to the desired coordinate with desired velocity and acelaration is important. The industry standart g-code blocks will define the machine spesific motions. Here the user may need to tweek some code blocks for his spesific need of motion. 3D printers mostly the resin based ones repetes the motion for every layer and the image is projected on the resin surface to cure it. This cycle is mostly repated hundereds of time. It is not so hard to define this kind of motion. We will talk on this issue in the following sections. 

* Raspberry Pi 2

This little computer is the heard of the system. It will help us alot. You will not need a host pc during printing process. As you know it takes hours to print a 3d object. You may have more than one 3d printer working simultanously. It is great to use your 3d printer by itself. You will only plug your USB flash disk which contains the neccesary files. Thats it! printer will do its job for hours without need of a PC.

### Software

* Raspbery Pi Software

I prefer to develop main code in Python. Rpi and Python is a nice conbination on a Linux system. This pice of code will
  
  * Read image files and Cycle File from USB Flash Drive
  * Display images via HDMI
  * Send motion commands to Motion Controller
  * Comunicate with Front Panel LCD Board.
  
* Front Panel LCD Board Software

This Board has an embeded arduino code which listen for the buttons and display information to the Front Panel LCD.

* Motion Controller Software

This is [grbl](https://github.com/grbl/grbl) motion software which is written in highly optimized C utilizing every clever feature of the AVR-chips to achieve precise timing and asynchronous operation. It is able to maintain up to 30kHz of stable, jitter free control pulses. It is developed for CNC systems but it fits great for 3D printing motion issues.

### Machine init

After power on the RPi init with init.py inorder to check if the USB boards are connected. If it can not find the LCD Front Panel or Motion Controller System Halts. Please take a look at the below code to understand the init procedure.

```Python
import time
import logging
import serial
import serial.tools.list_ports

logging.basicConfig(filename="debug.log",level=logging.DEBUG)
logging.info("Starting SerialportList")
LCDPort=""
GrblPort=""

ports = list(serial.tools.list_ports.comports())
for p in ports:
        print p
        logging.info(p)
        if "Arduino" in p[1]:
                try:
                        ser = serial.Serial(p[0], 115200)
                        if not ser.isOpen():
                                ser.open()

                      
                        mychar = ser.readline()
                        time.sleep(0.5)
                        mychar = mychar+ser.readline()#get two line
                        
                        print mychar
                        
                        
                        if  (mychar.find("LCD")<>-1):
                                print "lcd bulundu"
                                LCDPort = p[0]
                                logging.debug("LCDPort: " + LCDPort)
                                
                        else:
                            if  (mychar.find("Grbl")<>-1):
                                print "Grbl bulundu"
                                GrblPort = p[0]
                                logging.debug("GrblPort: " + GrblPort)
                except:
                        print "Cannot open port: " + p[0]
                        logging.warning("Cannot open port: " + p[0])


print "LCDPort: " + LCDPort
print "GrblPort: " + GrblPort

```

### Usage

Before printing with your 3D printer you have to design your 3d file and save it in \*.STL file format. After that there are a few more steps that you have to do with host software in your PC. One of it is Suport planing and the other is Plating. Support structures enable the printing of models with steep overhangs and cantilevered sections. Most 3D printing software will automatically place support structures based on the parameters you set. But it is a good idea to also look for a function in the software that will allow you to manually add or remove support structures to the model, so even if the automatic calculation does not work great you can fix it. On the other hand Plating is putting your models correctly on the building plate. People prefer to print as much models as possible. So you need to optimize your plate before printing. Anyway at the end you will have your final STL file. The next thing is slice it to 2D image files. Do not wory about it there are software that can handle it eaily. The most important parameter here is the Layer Height. As I said before I am not going deep on the prameters. To print your 3d model with this controller package you need a zip file containing the 2D image files for every layer. One more file in the zip is the Cycle File. I will tell you more soon about this file. Save your zip file into a USN flash disk. Now you are ready to print with **Gnexlab Resin Printer Controller**.

Insert your USB Flash Disk into the RPi USB connection. Power up the system. Front Panel LCD module will let you to choose the file to print. Select the file and Start Printing...

### The Input Zip File

* image files
   resolution
* Cycle file







