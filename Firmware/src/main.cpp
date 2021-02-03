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
