import time
import logging
import serial
import serial.tools.list_ports

LCDPort="Nuri"
GrblPort=""

def init():
    logging.basicConfig(filename="debug.log",level=logging.DEBUG)
    logging.info("Starting SerialportList")
    global LCDPort
    global GrblPort
    ports = list(serial.tools.list_ports.comports())
    for p in ports:
            print p 
            logging.info(p)
            if (p[2].find("SNR=7413633393235101F182")<>-1) or (p[2].find("SNR=9523834323435171E0A1")<>-1) :
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


    #print "LCDPort: " + LCDPort
    #print "GrblPort: " + GrblPort

 


        

