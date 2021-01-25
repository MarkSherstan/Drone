#include <Arduino.h>
#include <Wire.h>
#include "FlightControl.h"
#include "IMU.h"

// Connect to the IMU and configure the full scale range
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);
FlightControl FC;

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
