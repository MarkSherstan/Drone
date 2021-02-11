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
IMU imu(AD0_LOW);

// Configure and start the PID controller
PID rollPID(rollGains);
PID pitchPID(pitchGains);
PID yawPID(yawGains);

// Initialization
void setup() {
  // Start up I2C
  Wire.begin();

  // Start the IMU
  imu.connect(AFS_4G, GFS_500DPS);

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
