#include "FlightControl.h"
#include <arduino.h>

void FlightControl::setUpDigitalPins(){
    // LEDs
    pinMode(R_LED, OUTPUT);
    pinMode(G_LED, OUTPUT);
    pinMode(B_LED, OUTPUT);
}

void FlightControl::status(char input){
    // Color based on state input
    switch (input){
      case 'R':
      case 'r':
        // Red
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 0);
        break;

      case 'G':
      case 'g':
        // Gren
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 0);
        break;

      case 'B':
      case 'b':
        // Blue
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 1);
        break;

      case 'C':
      case 'c':
        // Cyan
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 1);
        break;

      case 'M':
      case 'm':
        // Magenta
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 1);
        break;

      case 'Y':
      case 'y':
        // Yellow
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 0);
        break;

      case 'W':
      case 'w':
        // White
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 1);
        break;

      default:
        // Black (off)
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 0);
        break;
    }
}

void FlightControl::startTimeSync(long loopTimeMicroSec){
   // Save sampling rate and start timer
   _loopTimeMicroSec = loopTimeMicroSec;
}

void FlightControl::timeSync(){
   // Calculate required delay
   currentTime = micros();
   timeToDelay = _loopTimeMicroSec - (currentTime - _trackedTime);

   // Execute the delay
   if (timeToDelay > 5000){
     delay(timeToDelay / 1000);
     delayMicroseconds(timeToDelay % 1000);
   } else if (timeToDelay > 0){
     delayMicroseconds(timeToDelay);
   } else {}

   // Update the tracked time
   _trackedTime = currentTime + timeToDelay;
}
