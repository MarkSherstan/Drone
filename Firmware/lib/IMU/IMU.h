// Include gaurd
#ifndef IMU_H
#define IMU_H

// IMU configuration and check registries
#define AD0_LOW         0x68
#define AD0_HIGH        0x69
#define WHO_AM_I        0x75
#define GYRO_CONFIG     0x1B
#define ACCEL_CONFIG    0x1C
#define PWR_MGMT_1      0x6B

// Accelerometer, temperature, and gyroscope data out registries
#define ACCEL_XOUT_H    0x3B
#define ACCEL_XOUT_L    0x3C
#define ACCEL_YOUT_H    0x3D
#define ACCEL_YOUT_L    0x3E
#define ACCEL_ZOUT_H    0x3F
#define ACCEL_ZOUT_L    0x40

#define TEMP_OUT_H      0x41
#define TEMP_OUT_L      0x42

#define GYRO_XOUT_H     0x43
#define GYRO_XOUT_L     0x44
#define GYRO_YOUT_H     0x45
#define GYRO_YOUT_L     0x46
#define GYRO_ZOUT_H     0x47
#define GYRO_ZOUT_L     0x48

// Full scale range
#define AFS_2G  0
#define AFS_4G  1
#define AFS_8G  2
#define AFS_16G 3

#define GFS_250DPS  0
#define GFS_500DPS  1
#define GFS_1000DPS 2
#define GFS_2000DPS 3

// IMU data structure
struct imu_t {
  float ax, ay, az, gx, gy, gz;
};

// Gyro calibration structure
struct gyro_cal_t {
  float x, y, z;
};

// Attitude structure
struct attitude_t {
  float roll, pitch, yaw;
};

// Class
class IMU{
private:
  // Functions
  void write2bytes(unsigned char byte0, unsigned char byte1);

  // Variables
  unsigned char _addr;

public:
  // Configure
  IMU(unsigned char addr);

  // Functions
  float getAres(int Ascale);
  float getGres(int Gscale);
  void gyroCalibration(int numCalPoints);
  void readProcessedData();
  void readRawData();
  void calculateAttitude(float dt, float tau=0.98);

  // Variables
  float _aRes, _gRes;
  float temperature; 
  gyro_cal_t gyro_cal;
  imu_t imu_raw;
  imu_t imu_cal;
  attitude_t attitude;
};

#endif // IMU_H