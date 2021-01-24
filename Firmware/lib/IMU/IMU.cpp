#include "IMU.h"
#include <arduino.h>
#include <Wire.h>
#include "FlightControl.h"

/// @brief Set the IMU address and check for positive connection.
/// @param addr Hexadecimal address based on AD0 pin - 0x68 low or 0x69 high.
IMU::IMU(unsigned char addr) {
  // Set address
  _addr = addr;

  // Find who the IMU is
  Wire.beginTransmission(_addr);
  Wire.write(WHO_AM_I);
  Wire.endTransmission();
  Wire.requestFrom(_addr, 1);

  // Either show green and reset the IMU or show red
  if (Wire.read() == 0x98){
    write2bytes(PWR_MGMT_1, 0x00);
    FC.statusLight('G');
  } else {
    FC.statusLight('R');
  }
}

/// @brief Set the accelerometer full scale range.
/// @param Ascale Set 0 for ±2g, 1 for ±4g, 2 for ±8g, and 3 for ±16g.
/// @return Sensitivity scale factor in LSB/g.
float IMU::getAres(int Ascale) {
  switch (Ascale){
    case AFS_2G:
      // 2g
      _aRes = 16384.0;
      write2bytes(ACCEL_CONFIG, 0x00);
      return _aRes;
    case AFS_4G:
      // 4g
      _aRes = 8192.0;
      write2bytes(ACCEL_CONFIG, 0x08);
      return _aRes;
    case AFS_8G:
      // 8g
      _aRes = 4096.0;
      write2bytes(ACCEL_CONFIG, 0x10);
      return _aRes;
    case AFS_16G:
      // 16g
      _aRes = 2048.0;
      write2bytes(ACCEL_CONFIG, 0x18);
      return _aRes;
    default:
      return 0;
  }
}

/// @brief Set the gyroscope full scale range.
/// @param Gscale Set 0 for ±250°/s, 1 for ±500°/s, 2 for ±1000°/s, and 3 for ±2000°/s.
/// @return Sensitivity scale factor in LSB/(°/s).
float IMU::getGres(int Gscale) {
  switch (Gscale){
    case GFS_250DPS:
      // 250 deg/s
      _gRes = 131.0;
      write2bytes(GYRO_CONFIG, 0x00);
      return _gRes;
    case GFS_500DPS:
      // 500 deg/s
      _gRes = 65.5;
      write2bytes(GYRO_CONFIG, 0x08);
      return _gRes;
    case GFS_1000DPS:
      // 1000 deg/s
      _gRes = 32.8;
      write2bytes(GYRO_CONFIG, 0x10);
      return _gRes;
    case GFS_2000DPS:
      // 2000 deg/s
      _gRes = 16.4;
      write2bytes(GYRO_CONFIG, 0x18);
      return _gRes;
    default:
      return 0;
  }
}

/// @brief Read raw data from IMU and bit shift
void IMU::readRawData() {
  // Subroutine for reading the raw data
  Wire.beginTransmission(_addr);
  Wire.write(ACCEL_XOUT_H);
  Wire.endTransmission();
  Wire.requestFrom(_addr, 14);

  // Read raw data
  imu_raw.ax = Wire.read() << 8 | Wire.read();
  imu_raw.ay = Wire.read() << 8 | Wire.read();
  imu_raw.az = Wire.read() << 8 | Wire.read();

  temperature = Wire.read() <<8 | Wire.read();

  imu_raw.gx = Wire.read()<<8 | Wire.read();
  imu_raw.gy = Wire.read()<<8 | Wire.read();
  imu_raw.gz = Wire.read()<<8 | Wire.read();
}

/// @brief Find offsets for each axis of gyroscope.
/// @param numCalPoints Number of data points to average.
void IMU::gyroCalibration(int numCalPoints) {
  // Save specified number of data values
  for (int ii = 0; ii < numCalPoints; ii++){
    readRawData();
    gyro_cal.x += imu_raw.gx;
    gyro_cal.y += imu_raw.gy;
    gyro_cal.z += imu_raw.gz;
  }

  // Average the saved data points  
  gyro_cal.x /= (float)numCalPoints;
  gyro_cal.y /= (float)numCalPoints;
  gyro_cal.z /= (float)numCalPoints;
}

/// @brief Calculate the real world sensor values
void IMU::readProcessedData() {
  // Get the raw values from the IMU
  readRawData();

  // Convert accelerometer values from raw data to g
  imu_cal.ax = imu_raw.ax / _aRes;
  imu_cal.ay = imu_raw.ay / _aRes;
  imu_cal.az = imu_raw.az / _aRes;

  // Remove gyro offset
  imu_cal.gx = imu_raw.gx - gyro_cal.x;
  imu_cal.gy = imu_raw.gy - gyro_cal.y;
  imu_cal.gz = imu_raw.gz - gyro_cal.z;

  // Convert gyro values to deg/s
  imu_cal.gx /= _gRes;
  imu_cal.gy /= _gRes;
  imu_cal.gz /= _gRes;
}

/// @brief Write bytes to specific registers on the IMU. 
/// @param byte0 The main register to be written.
/// @param byte1 The command to be written. 
void IMU::write2bytes(unsigned char byte0, unsigned char byte1) {
  Wire.beginTransmission(_addr);
  Wire.write(byte0);
  Wire.write(byte1);
  Wire.endTransmission();
}
