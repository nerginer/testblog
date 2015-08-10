---
layout: page
title: Documentation
permalink: /docs/

---

### Overview 

This documentation is for the people who want to build their own resin based 3D Printer. I will try to tell you step by step instructions on building a whole control system. The mechanics of the printer is strait forward so the main information here will be related with the electronics and the software. 

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

* Front Panel LCD

This board is an arduino compatible board which have LCD and buttons. It will comunicate with RPi via USB. It is a serial communication. The maestro python code running on RPi will display information with this board to the user of the machine something like **"Printing Layer 23 of 850"**  The board will also send button pressed events to RPi. 

* Motion Controller

The Motion controller is also an arduino board which handles the G-code commands coming through USB. GRBL g-code interpreter will do the Job. Homing and Moving the axis to the desired coordinate with desired velocity and acelaration is important. The industry standart g-code blocks will define the machine spesific motions. Here the user may need to tweek some code blocks for his spesific need of motion. 3D printers mostly the resin based ones repetes the motion for every layer and the image is projected on the resin surface to cure it. This cycle is mostly repated hundereds of time. It is not so hard to define this kind of motion. We will talk on this issue in the following sections. 

### Software

* Raspbery Pi
