#include <Arduino.h>
#include <Wire.h>
#include "FlightControl.h"
#include "IMU.h"
#include "PID.h"

// Set PID values
gains_t rollGains {.P=1.0, .I=2.0, .D=3.0};
gains_t pitchGains{.P=1.0, .I=2.0, .D=3.0};
gains_t yawGains  {.P=1.0, .I=2.0, .D=3.0};

// Configure and start the PID controller
PID rollPID(rollGains);
PID pitchPID(pitchGains);
PID yawPID(yawGains);

// Configure the IMU, and start general flight control functions
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);
FlightControl FC;

// Initialization
void setup() {
  // Start up I2C
  Wire.begin();

  // Configure the digital pins
  FC.setUpDigitalPins();

  // Configure battery for voltage monitoring
  FC.configureBattery();

  // Calibrate the gyroscope
  imu.gyroCalibration();

  // Reset the controller
  rollPID.reset();
  pitchPID.reset();
  yawPID.reset();

  // Start timer(s)
  imu.startTimer();
  FC.startTimers();
}

// Main loop
void loop() {
  // Calculate body frame attitude
  imu.calcAttitude();

  // Run PID controller 
  rollPID.update(imu.attitude.roll);
  pitchPID.update(imu.attitude.pitch);
  yawPID.update(imu.attitude.yaw);

  // Check battery voltage
  FC.monitorBattery();

  // Stabilize the loop rate
  FC.stabilizeLoopRate();
}




unsigned long timer1, timer2, timer3, timer4, timer5, currentTime;
byte lastChannel1, lastChannel2, lastChannel3, lastChannel4, lastChannel5;
int receiver[6];

// Interupt service routine for RC channels 
ISR(PCINT0_vect){
  // Get current time
  currentTime = micros();

  // Channel 1
  if(PINB & B00000001){
    if(lastChannel1 == 0){
      lastChannel1 = 1;
      timer1 = currentTime;
    }
  }
  else if(lastChannel1 == 1){
    lastChannel1 = 0;
    receiver[1] = currentTime - timer1;
  }
  
  // Channel 2
  if(PINB & B00000010){
    if(lastChannel2 == 0){
      lastChannel2 = 1;
      timer2 = currentTime;
    }
  }
  else if(lastChannel2 == 1){
    lastChannel2 = 0;
    receiver[2] = currentTime - timer2;
  }

  // Channel 3
  if(PINB & B00000100){
    if(lastChannel3 == 0){
      lastChannel3 = 1;
      timer3 = currentTime;
    }
  }
  else if(lastChannel3 == 1){
    lastChannel3 = 0;
    receiver[3] = currentTime - timer3;
  }

  // Channel 4
  if(PINB & B00001000){
    if(lastChannel4 == 0){
      lastChannel4 = 1;
      timer4 = currentTime;
    }
  }
  else if(lastChannel4 == 1){
    lastChannel4 = 0;
    receiver[4] = currentTime - timer4;
  }

  // Channel 5
  if(PINB & B00010000){
    if(lastChannel5 == 0){
      lastChannel5 = 1;
      timer5 = currentTime;
    }
  }
  else if(lastChannel5 == 1){
    lastChannel5 = 0;
    receiver[5] = currentTime - timer5;
  }
}
