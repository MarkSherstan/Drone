#include <Arduino.h>
#include <Wire.h>
#include "FlightControl.h"
#include "IMU.h"
#include "PID.h"

// Set PID values
gains_t rollGains {.P=1.0, .I=2.0, .D=3.0};
gains_t pitchGains{.P=1.0, .I=2.0, .D=3.0};
gains_t yawGains  {.P=1.0, .I=2.0, .D=3.0};

// Set receiver calibration values
channel_t channelCal1{.low=1000, .high=2000, .center=1500, .reverse=0};
channel_t channelCal2{.low=1000, .high=2000, .center=1500, .reverse=0};
channel_t channelCal3{.low=1000, .high=2000, .center=1500, .reverse=0};
channel_t channelCal4{.low=1000, .high=2000, .center=1500, .reverse=0};
channel_t channelCal5{.low=1000, .high=2000, .center=1500, .reverse=0};

// Start general flight control functions and prep for IMU connection
FlightControl FC;
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);

// Configure and start the PID controller
PID rollPID(rollGains);
PID pitchPID(pitchGains);
PID yawPID(yawGains);

// Initialization
void setup() {
  // Start up I2C
  Wire.begin();

  // Connect to the IMU
  imu.connect();

  // Configure the digital pins
  FC.setUpDigitalPins();

  // Configure battery for voltage monitoring
  FC.configureBattery();

  // Save the radio calibration values
  FC.saveReceiverCalibration(channelCal1, channelCal2, channelCal3, channelCal4, channelCal5);

  // Calibrate the gyroscope
  FC.statusLight('B');
  imu.gyroCalibration();
  FC.statusLight('G');

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

  // Update the receiver inputs
  FC.receiver();

  // Run PID controller 
  rollPID.update(imu.attitude.roll);
  pitchPID.update(imu.attitude.pitch);
  yawPID.update(imu.attitude.yaw);

  // Check battery voltage
  FC.monitorBattery();

  // Stabilize the loop rate
  FC.stabilizeLoopRate();
}

// Interrupt service routine for RC channels 
ISR(PCINT0_vect){
  FC.receiverInterrupt();
}



// // Start general flight control function
// FlightControl FC;

// // Initialization
// void setup() {
//   // Start a serial port
//   Serial.begin(9600);

//   // Configure the digital pins
//   FC.setUpDigitalPins();

//   // Start timer
//   FC.startTimers();
// }

// // Main loop
// void loop() {
//   // Small Delay
//   delay(250);
  
//   // Print values
//   Serial.print("Roll:");
//   if(FC.rawRX.CH1 - 1480 < 0)Serial.print("<<<");
//   else if(FC.rawRX.CH1 - 1520 > 0)Serial.print(">>>");
//   else Serial.print("-+-");
//   Serial.print(FC.rawRX.CH1);
  
//   Serial.print("  Pitch:");
//   if(FC.rawRX.CH2 - 1480 < 0)Serial.print("^^^");
//   else if(FC.rawRX.CH2 - 1520 > 0)Serial.print("vvv");
//   else Serial.print("-+-");
//   Serial.print(FC.rawRX.CH2);
  
//   Serial.print("  Thrust:");
//   if(FC.rawRX.CH3 - 1480 < 0)Serial.print("vvv");
//   else if(FC.rawRX.CH3 - 1520 > 0)Serial.print("^^^");
//   else Serial.print("-+-");
//   Serial.print(FC.rawRX.CH3);
  
//   Serial.print("  Yaw:");
//   if(FC.rawRX.CH4 - 1480 < 0)Serial.print("<<<");
//   else if(FC.rawRX.CH4 - 1520 > 0)Serial.print(">>>");
//   else Serial.print("-+-");
//   Serial.print(FC.rawRX.CH4);

//   Serial.print("  Switch:");
//   if(FC.rawRX.CH5 - 1480 < 0)Serial.print("vvv");
//   else if(FC.rawRX.CH5 - 1520 > 0)Serial.print("^^^");
//   else Serial.print("-+-");
//   Serial.println(FC.rawRX.CH5);
// }

// // Interrupt service routine for RC channels 
// ISR(PCINT0_vect){
//   FC.receiverInterrupt();
// }