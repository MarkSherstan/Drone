#include <Arduino.h>
#include <Wire.h>
#include "FlightControl.h"
#include "IMU.h"
#include "PID.h"

// Set PID values
Gains rGains{.P = 1.0, .I = 2.0, .D = 3.0};
Gains pGains{.P = 1.0, .I = 2.0, .D = 3.0};
Gains yGains{.P = 1.0, .I = 2.0, .D = 3.0};

// Set receiver calibration values
channel_t channelCal1{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
channel_t channelCal2{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
channel_t channelCal3{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
channel_t channelCal4{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
channel_t channelCal5{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};

// Start general flight control functions and prep for IMU connection
FlightControl FC;
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);

// Configure and start the PID controller
PID rPID(rGains);
PID pPID(pGains);
PID yPID(yGains);

// Initialization
void setup()
{
    // Start up I2C
    Wire.begin();

    // Connect to the IMU
    imu.begin();

    // Configure the digital pins
    FC.setUpDigitalPins();

    // Configure battery for voltage monitoring
    FC.configureBattery();

    // Save the radio calibration values
    FC.saveReceiverCalibration(channelCal1, channelCal2, channelCal3, channelCal4, channelCal5);

    // Calibrate the gyroscope
    FC.statusLight('B');
    imu.calibrateGyro();
    FC.statusLight('G');

    // Reset the controller
    rPID.reset();
    pPID.reset();
    yPID.reset();

    // Start timer(s)
    imu.startTimer();
    FC.startTimers();
}

// Main loop
void loop()
{
    // Calculate body frame attitude
    imu.calcAttitude();

    // Update the receiver inputs
    FC.receiver();

    // Run PID controller
    rPID.update(imu.attitude.r);
    pPID.update(imu.attitude.p);
    yPID.update(imu.attitude.y);

    // Check battery voltage
    FC.monitorBattery();

    // Stabilize the loop rate
    FC.stabilizeLoopRate();
}

// Interrupt service routine for RC channels
ISR(PCINT0_vect)
{
    FC.receiverInterrupt();
}
