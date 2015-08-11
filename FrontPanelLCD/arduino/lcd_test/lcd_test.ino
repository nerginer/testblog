#include <LiquidCrystal.h>

LiquidCrystal lcd(8, 9, 4, 5, 6, 7);           // select the pins used on the LCD panel

// define some values used by the panel and buttons
int lcd_key     = 0;
int adc_key_in  = 0;

int buttonState = 0;
int lastButtonState = 0;
char str[20];

#define btnRIGHT  0
#define btnUP     1
#define btnDOWN   2
#define btnLEFT   3
#define btnSELECT 4
#define btnNONE   5

int read_LCD_buttons(){               // read the buttons
    
    adc_key_in = analogRead(0);       // read the value from the sensor 

    // my buttons when read are centered at these valies: 0, 144, 329, 504, 741
    // we add approx 50 to those values and check to see if we are close
    // We make this the 1st option for speed reasons since it will be the most likely result

    if (adc_key_in > 1000) return btnNONE; 
/*
    // For V1.1 us this threshold
    if (adc_key_in < 50)   return btnRIGHT;  
    if (adc_key_in < 250)  return btnUP; 
    if (adc_key_in < 450)  return btnDOWN; 
    if (adc_key_in < 650)  return btnLEFT; 
    if (adc_key_in < 850)  return btnSELECT;  
*/
   // For V1.0 comment the other threshold and use the one below:
  
     if (adc_key_in < 50)   return btnRIGHT;  
     if (adc_key_in < 195)  return btnUP; 
     if (adc_key_in < 380)  return btnDOWN; 
     if (adc_key_in < 555)  return btnLEFT; 
     if (adc_key_in < 790)  return btnSELECT;   
   

    return btnNONE;                // when all others fail, return this.
}

void setup(){
   lcd.begin(16, 2);               // start the library
   lcd.setCursor(0,0);             // set the LCD cursor   position 
   lcd.print("initializing...");  // print a simple message on the LCD
   lcd.setCursor(0,1);             // set the LCD cursor   position 
   lcd.print("Waiting for Host");  // print a simple message on the LCD
   
   Serial.begin(115200);
   Serial.println("LCD");
}
 
void loop(){
   delay(50);
   lcd_key =   read_LCD_buttons();
   buttonState = lcd_key;
   
   if (buttonState != lastButtonState)
 //   if (lcd_key !=btnNONE) 
     Serial.println(lcd_key);   // read the buttons
    
   lastButtonState = buttonState;

}


void serialEvent() {
//haberlesme protokolu
// C  1  lcd.setCursor(0,1);
//L nuri   lcd.print("Nuri");

  char cInChar;


  if(Serial.available()) {
    // get the new byte:
    cInChar = (char)Serial.read(); 
    switch (cInChar)  {
      
      case 'c':
      case 'C':
       lcd.clear();
      
      break;
      
      case 's':     // Request Acknowledgement
      case 'S':
    
    
       SerialReadNext();
       
 //     second = SerialReadNext()toInt();
      lcd.setCursor(0,atoi(str));
      break;     

      case 'l':     // 
      case 'L':
      SerialReadNext();
      lcd.setCursor(0,0);
      lcd.print("                ");
      lcd.setCursor(0,0);
      lcd.print(String(str));
      break;
      
      case 'm':     // 
      case 'M':
      SerialReadNext();
      lcd.setCursor(0,1);
      lcd.print("                ");
      lcd.setCursor(0,1);
      lcd.print(String(str));
      break;
      
 

    }//switch
  }//Serial available
}//serialEvent


///////////////////////////////////////////////////////
//
// pull and return an string serial stream
//
void SerialReadNext() {
  // The string we read from Serial will be stored here:

  str[0] = '\0';
  int i=-1;
  while(true) {
    // See if we have serial data available:
    if (Serial.available() > 0) {
      // Yes, we have!
      // Store it at next position in string:
      str[i] = Serial.read();
      
      // If it is newline or we find a variable separator, then terminate the string
      // and leave the otherwise infinite loop:
      if (str[i] == '\n' || str[i] == '\0' || i==31) {
        str[i] = '\0';
        break;
      }
      // Ok, we were not at the end of the string, go on with next:
      else
        i++;
    }
  }
  // Convert the string to int and return:
//  return (str);
} 

void informId (){
// it informs that this module is front panel LCD



}
