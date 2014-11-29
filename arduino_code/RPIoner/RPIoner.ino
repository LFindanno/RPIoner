// Luigi Findanno
// 22/11/2014
//
// Raspberry PI power & status manager
//
// Description:
// It disconnects the power supply from Raspberry PI if:
//     - Raspberry PI is frozen
//     - Raspberry PI is shutting down (it waits 3 min. for the correct Raspberry PI shutting down procedure)
// After that it waits for 1 hour and turn on the Raspberry as well.
// This is an important things if Raspberry PI is used as Server h24 on. 
// Turning it off 1 hour every day can prevent damage to USB HD.
// Very important! Raspberry PI MUST provide periodically shutting down itself(e.g. configuring atd daemon)
// However if you don't want configure adt daemon it will ever reboot Raspberry PI after that is frozen :)
// 
// Dipendency:
// This device work ONLY if serial_pong.py run and start automatically on Raspberry PI


#define LedPCStatus 13
#define Mosfet 12
#define Button 11

boolean PCStatus = LOW;
int SleepTime = 3600; // seconds (default 1h)

void setup(){

  pinMode(LedPCStatus, OUTPUT);     
  pinMode(Mosfet, OUTPUT);
  pinMode(Button, INPUT);
  
  Serial.begin(19200);
  Serial.setTimeout(3000);

}

void loop(){

  // waiting for pressure on the start pushbutton
  for (;;){
    if (digitalRead(Button)==LOW){
      break;
    }
  } 
  
  // Turn on the power supply
  digitalWrite(Mosfet, HIGH); 
  
  // forever loop
  for(;;){
  
    // Send PING and wait for PONG
    Serial.write("PING"); 
    String StrRecv = Serial.readString();
  
    // the system is now active and reply correctly to PING request with PONG
    if (StrRecv=="PONG"){
      // the system was down but now is on once again
      if (PCStatus==LOW){
        PCStatus=HIGH;
        digitalWrite(LedPCStatus, HIGH);
      }    
  
    // the system is no more active, is booting, shutting down or is frozen.
    }else{
      // the system was on but now it not reply to PING anymore (shutting down or frozen)
      if (PCStatus==HIGH){
        PCStatus=LOW;
        digitalWrite(LedPCStatus, LOW);
        SleepRoutine();
      }
    
    }    

  }

}


void SleepRoutine(){
  // before turn off the power supply, wait 3 minutes 
  delay(180000); // 3 min to power off
  digitalWrite(Mosfet, LOW);
  // sleep until SleepTime seconds or pushbutton pressure
  for (int t=0; t<SleepTime; t++){
    delay(1000); // 1 second delay
    if (digitalRead(Button)==LOW){
      break;
    }
  }
  // turn on power supply 
  digitalWrite(Mosfet, HIGH);  
}
