#include <Arduino.h>
#include <Wire.h>
#include "FlightControl.h"
#include "IMU.h"

// Connect to the IMU and configure the full scale range
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);

void setup() {
  // Start up I2C
  Wire.begin();

  // Calibrate the IMU
  imu.gyroCalibration();

  // Start timer(s)
  imu.startTimer();
}

void loop() {
  // Calculate body frame attitude
  imu.calcAttitude();
}
