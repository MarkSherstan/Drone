#include "FlightControl.h"
#include <arduino.h>

void FlightControl::setUpDigitalPins(){
    // RGB LEDs
    pinMode(R_LED, OUTPUT);
    pinMode(G_LED, OUTPUT);
    pinMode(B_LED, OUTPUT);

    // Arm LEDs
    pinMode(LIGHT_1, OUTPUT);
    pinMode(LIGHT_2, OUTPUT);
    pinMode(LIGHT_3, OUTPUT);
    pinMode(LIGHT_4, OUTPUT);
}

void FlightControl::statusLight(char input){
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

void FlightControl::monitorBattery(){
  // Monitor battery voltage
  int analogRaw = analogRead(BATTERY);
  float voltageRaw = analogRaw * (5.0 / 1023.0);
  float batteryVoltage = voltageRaw * (battery.R1 + battery.R2) / battery.R2;

  // Flash lights if battery is starting to get low
  if (batteryVoltage < (battery.nominalCellVoltage * battery.numCells)){ 
  }
}

/// @brief Configure flight battery for voltage monitoring
/// @param numCells Number of battery cells (3s LiPo = 3)
/// @param nominalCellVoltage Nominal voltage per cell of battery (LiPo: 3.7 V/cell)
/// @param fullCellVoltage Full voltage per cell of battery (LiPo: 4.2 V/cell)
/// @param R1 Value of first resistor in voltage divider circuit use the same units as R2
/// @param R2 Value of second resistor in voltage divider circuit use the same units as R1
/// @return None
void FlightControl::configureBattery(float numCells, float nominalCellVoltage, float fullCellVoltage, float R1, float R2){
  battery.numCells = numCells;
  battery.nominalCellVoltage = nominalCellVoltage;
  battery.fullCellVoltage = fullCellVoltage;
  battery.R1 = R1;
  battery.R2 = R2;
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
