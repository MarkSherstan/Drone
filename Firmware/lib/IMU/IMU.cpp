#include "IMU.h"

/// @brief Set the IMU address and full scale ranges. 
/// @param addr Hex address based on AD0 pin - 0x68 low or 0x69 high.
/// @param aScale Set accelerometer full scale range: 0 for ±2g, 1 for ±4g, 2 for ±8g, and 3 for ±16g.
/// @param gScale Set gyroscope full scale range: 0 for ±250°/s, 1 for ±500°/s, 2 for ±1000°/s, and 3 for ±2000°/s.
IMU::IMU(uint8_t addr, uint8_t aScale, uint8_t gScale)
{
    _addr = addr;
    _aScale = aScale;
    _gScale = gScale;
}

/// @brief Check for connection, reset IMU, and set full range scale.
void IMU::begin()
{
    // Find who the IMU is
    Wire.beginTransmission(_addr);
    Wire.write(WHO_AM_I);
    Wire.endTransmission();
    Wire.requestFrom(_addr, 1);

    // Pass: LED cyan and configure the IMU | Fail: LED red
    if (Wire.read() == 0x98)
    {
        FlightControl::statusLight('C');
        write2bytes(PWR_MGMT_1, 0x00);
        setAccFullScaleRange(_aScale);
        setGyroFullScaleRange(_gScale);
    }
    else
    {
        FlightControl::statusLight('R');
    }
}

/// @brief Set the accelerometer full scale range.
/// @param aScale Set 0 for ±2g, 1 for ±4g, 2 for ±8g, and 3 for ±16g.
void IMU::setAccFullScaleRange(uint8_t aScale)
{
    switch (aScale)
    {
    case AFS_2G:
        aRes = 16384.0;
        write2bytes(ACCEL_CONFIG, 0x00);
        break;
    case AFS_4G:
        aRes = 8192.0;
        write2bytes(ACCEL_CONFIG, 0x08);
        break;
    case AFS_8G:
        aRes = 4096.0;
        write2bytes(ACCEL_CONFIG, 0x10);
        break;
    case AFS_16G:
        aRes = 2048.0;
        write2bytes(ACCEL_CONFIG, 0x18);
        break;
    default:
        FlightControl::statusLight('R');
        break;
    }
}

/// @brief Set the gyroscope full scale range.
/// @param gScale Set 0 for ±250°/s, 1 for ±500°/s, 2 for ±1000°/s, and 3 for ±2000°/s.
void IMU::setGyroFullScaleRange(uint8_t gScale)
{
    switch (gScale)
    {
    case GFS_250DPS:
        gRes = 131.0;
        write2bytes(GYRO_CONFIG, 0x00);
        break;
    case GFS_500DPS:
        gRes = 65.5;
        write2bytes(GYRO_CONFIG, 0x08);
        break;
    case GFS_1000DPS:
        gRes = 32.8;
        write2bytes(GYRO_CONFIG, 0x10);
        break;
    case GFS_2000DPS:
        gRes = 16.4;
        write2bytes(GYRO_CONFIG, 0x18);
        break;
    default:
        FlightControl::statusLight('R');
        break;
    }
}

/// @brief Read raw data from IMU
void IMU::readRawData()
{
    // Subroutine for reading the raw data
    Wire.beginTransmission(_addr);
    Wire.write(ACCEL_XOUT_H);
    Wire.endTransmission();
    Wire.requestFrom(_addr, 14);

    // Read raw data
    imuRaw.ax = Wire.read() << 8 | Wire.read();
    imuRaw.ay = Wire.read() << 8 | Wire.read();
    imuRaw.az = Wire.read() << 8 | Wire.read();

    temperature = Wire.read() << 8 | Wire.read();

    imuRaw.gx = Wire.read() << 8 | Wire.read();
    imuRaw.gy = Wire.read() << 8 | Wire.read();
    imuRaw.gz = Wire.read() << 8 | Wire.read();
}

/// @brief Find offsets for each axis of gyroscope.
/// @param numCalPoints Number of data points to average.
void IMU::gyroCalibration(uint16_t numCalPoints)
{
    // Save specified number of points
    for (uint16_t ii = 0; ii < numCalPoints; ii++)
    {
        readRawData();
        gyroCal.x += imuRaw.gx;
        gyroCal.y += imuRaw.gy;
        gyroCal.z += imuRaw.gz;
        delay(3);
    }

    // Average the saved data points to find the gyroscope offset
    gyroCal.x /= (float)numCalPoints;
    gyroCal.y /= (float)numCalPoints;
    gyroCal.z /= (float)numCalPoints;
}

/// @brief Calculate the real world sensor values
void IMU::readProcessedData()
{
    // Get raw values from the IMU
    readRawData();

    // Convert accelerometer values to g's
    imuProcessed.ax = imuRaw.ax / aRes;
    imuProcessed.ay = imuRaw.ay / aRes;
    imuProcessed.az = imuRaw.az / aRes;

    // Compensate for gyro offset
    imuProcessed.gx = imuRaw.gx - gyroCal.x;
    imuProcessed.gy = imuRaw.gy - gyroCal.y;
    imuProcessed.gz = imuRaw.gz - gyroCal.z;

    // Convert gyro values to deg/s
    imuProcessed.gx /= gRes;
    imuProcessed.gy /= gRes;
    imuProcessed.gz /= gRes;
}

/// @brief Calculate the attitude of the sensor in degrees using a complementary filter
/// @param tau Time constant relating to the weighting of gyroscope vs accelerometer.
void IMU::calcAttitude(float tau)
{
    // Find dt
    float dt = (micros() - timer) / 1e-6;
    timer = micros();

    // Read calibrated data
    readProcessedData();

    // Complementary filter
    float accelPitch = atan2(imuProcessed.ay, imuProcessed.az) * (180 / M_PI);
    float accelRoll = atan2(imuProcessed.ax, imuProcessed.az) * (180 / M_PI);

    attitude.roll = tau * (attitude.roll - imuProcessed.gy * dt) + (1 - tau) * accelRoll;
    attitude.pitch = tau * (attitude.pitch + imuProcessed.gx * dt) + (1 - tau) * accelPitch;
    attitude.yaw += imuProcessed.gz * dt;
}

/// @brief Write bytes to specific registers on the IMU.
/// @param byte0 The main register to be written.
/// @param byte1 The command to be written.
void IMU::write2bytes(uint8_t byte0, uint8_t byte1)
{
    Wire.beginTransmission(_addr);
    Wire.write(byte0);
    Wire.write(byte1);
    Wire.endTransmission();
}

/// @brief Starts a timer to be used for the complementary filter
void IMU::startTimer()
{
    timer = micros();
}
