#include <Arduino.h>
#include "FlightControl.h"
#include "IMU.h"
#include "PID.h"
#include "RX.h"

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

// General flight control class and IMU connection
RX rx;
FlightControl FC;
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);

// Configure and start the PID controller
PID rPID(rGains);
PID pPID(pGains);
PID yPID(yGains);

// Initialization
void setup()
{
    // Start the IMU
    imu.begin();

    // Configure digital pins
    FC.configDigitalPins();
    RX.configInterruptPins();

    // Configure battery for voltage monitoring
    FC.configureBattery();

    // Save the radio calibration values
    // FC.saveReceiverCalibration(channelCal1, channelCal2, channelCal3, channelCal4, channelCal5);

    // Calibrate the gyroscope
    imu.calibrateGyro();

    // Reset the controllers
    rPID.reset();
    pPID.reset();
    yPID.reset();

    // Start timers
    imu.startTimer();
    FC.startTimer();

    // Signal system is ready with green light
    FC.statusLight('G');
}

// Main loop
void loop()
{
    // Calculate body frame attitude
    imu.calcAttitude();

    // Update the receiver inputs
    // FC.receiver();

    // Run PID controller
    rPID.update(imu.attitude.r);
    pPID.update(imu.attitude.p);
    yPID.update(imu.attitude.y);

    // Check battery voltage
    FC.monitorBattery();

    // Stabilize the loop rate
    FC.stabilizeLoopRate();
}

// // Interrupt service routine for RC channels
// ISR(PCINT0_vect)
// {
//     RX.receiverInterrupt();
// }
