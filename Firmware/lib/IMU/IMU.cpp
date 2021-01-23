#include "IMU.h"
#include <arduino.h>
#include <Wire.h>

/// @brief Set the IMU address and check for positive connection.
/// @param addr Hexadecimal address based on AD0 pin - 0x68 low or 0x69 high.
IMU::IMU(unsigned char addr) {
  _addr = addr;
}

/// @brief Set the accelerometer full scale range.
/// @param Ascale Set 0 for ±2g, 1 for ±4g, 2 for ±8g, and 3 for ±16g.
/// @return Sensitivity scale factor in LSB/g.
float IMU::getAres(int Ascale) {
  switch (Ascale){
    case AFS_2G:
      _aRes = 16384.0;
      write2bytes(ACCEL_CONFIG, 0x00);
      return _aRes;
    case AFS_4G:
      _aRes = 8192.0;
      write2bytes(ACCEL_CONFIG, 0x08);
      return _aRes;
    case AFS_8G:
      _aRes = 4096.0;
      write2bytes(ACCEL_CONFIG, 0x10);
      return _aRes;
    case AFS_16G:
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
  // Set the full scale range for the gyroscope
  switch (Gscale){
    case GFS_250DPS:
      _gRes = 131.0;
      write2bytes(GYRO_CONFIG, 0x00);
      return _gRes;
    case GFS_500DPS:
      _gRes = 65.5;
      write2bytes(GYRO_CONFIG, 0x08);
      return _gRes;
    case GFS_1000DPS:
      _gRes = 32.8;
      write2bytes(GYRO_CONFIG, 0x10);
      return _gRes;
    case GFS_2000DPS:
      _gRes = 16.4;
      write2bytes(GYRO_CONFIG, 0x18);
      return _gRes;
    default:
      return 0;
  }
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
