// Include guard
#ifndef IMU_H
#define IMU_H

// Libraries
#include "FlightControl.h"
#include <arduino.h>
#include <Wire.h>

// IMU configuration
#define AD0_LOW      0x68
#define AD0_HIGH     0x69
#define WHO_AM_I     0x75
#define GYRO_CONFIG  0x1B
#define ACCEL_CONFIG 0x1C
#define PWR_MGMT_1   0x6B

// Accelerometer, temperature, and gyroscope data out registries
#define ACCEL_XOUT_H 0x3B
#define ACCEL_XOUT_L 0x3C
#define ACCEL_YOUT_H 0x3D
#define ACCEL_YOUT_L 0x3E
#define ACCEL_ZOUT_H 0x3F
#define ACCEL_ZOUT_L 0x40

#define TEMP_OUT_H   0x41
#define TEMP_OUT_L   0x42

#define GYRO_XOUT_H  0x43
#define GYRO_XOUT_L  0x44
#define GYRO_YOUT_H  0x45
#define GYRO_YOUT_L  0x46
#define GYRO_ZOUT_H  0x47
#define GYRO_ZOUT_L  0x48

// Full scale ranges
#define AFS_2G  0
#define AFS_4G  1
#define AFS_8G  2
#define AFS_16G 3

#define GFS_250DPS  0
#define GFS_500DPS  1
#define GFS_1000DPS 2
#define GFS_2000DPS 3

// Structures
struct Sensor
{
    float ax, ay, az, gx, gy, gz;
};

struct GyroCal
{
    float x, y, z;
};

struct Attitude
{
    float r, p, y;
};

// Class
class IMU
{
    private:
        // Functions
        void write2bytes(uint8_t byte0, uint8_t byte1);
        void setGyroFullScaleRange(uint8_t gScale);
        void setAccFullScaleRange(uint8_t aScale);
        void readProcessedData();
        void readRawData();

        // Variables
        uint8_t _addr, _aScale, _gScale;
        float aRes, gRes;

    public:
        // Config
        IMU(uint8_t addr, uint8_t aScale, uint8_t gScale);

        // Functions
        void calibrateGyro(uint16_t numCalPoints = 2000);
        void calcAttitude(float tau = 0.98);
        void startTimer();
        void begin();

        // Structs
        Attitude attitude;
        GyroCal gyroCal;
        Sensor sensorRaw;
        Sensor sensorProcessed;

        // Variables
        int16_t temperature;
        uint32_t timer;
};

#endif // IMU_H
