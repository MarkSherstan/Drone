#include <Arduino.h>
#include <Wire.h>
#include "FlightControl.h"
#include "IMU.h"
#include "PID.h"

// Set PID values
gains_t rollGains {.P=1.0, .I=2.0, .D=3.0};
gains_t pitchGains{.P=1.0, .I=2.0, .D=3.0};
gains_t yawGains  {.P=1.0, .I=2.0, .D=3.0};

// Connect to the IMU and configure the full scale range
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);
FlightControl FC;
PID pid(rollGains, pitchGains, yawGains);

void setup() {
  // Start up I2C
  Wire.begin();

  // Configure the digital pins
  FC.setUpDigitalPins();

  // Configure battery for voltage monitoring
  FC.configureBattery();

  // Calibrate the gyroscope
  imu.gyroCalibration();

  // Start timer(s)
  imu.startTimer();
  FC.startTimers();
}

void loop() {
  // Calculate body frame attitude
  imu.calcAttitude();

  // Check battery voltage
  FC.monitorBattery();

  // Stabilize the loop rate
  FC.stabilizeLoopRate();
}
