#include <Arduino.h>
#include "FlightControl.h"
#include "Receiver.h"
#include "IMU.h"
#include "PID.h"

// Set PID values
Gains rGains{.P = 1.0, .I = 2.0, .D = 3.0};
Gains pGains{.P = 1.0, .I = 2.0, .D = 3.0};
Gains yGains{.P = 1.0, .I = 2.0, .D = 3.0};

// Set receiver calibration values
ChannelCal ch1cal{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
ChannelCal ch2cal{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
ChannelCal ch3cal{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
ChannelCal ch4cal{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};
ChannelCal ch5cal{.low = 1000, .high = 2000, .center = 1500, .reverse = 0};

// IMU connection, general flight control, and receiver classes
IMU imu(AD0_LOW, AFS_4G, GFS_500DPS);
FlightControl FC;
Receiver RX;

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

    // Save receiver calibration
    RX.saveReceiverCal(ch1cal, ch2cal, ch3cal, ch4cal, ch5cal);

    // Calibrate the gyroscope
    imu.calibrateGyro();

    // Signal system is ready with green light
    FC.statusLight('G');

    // Reset the controllers
    rPID.reset();
    pPID.reset();
    yPID.reset();

    // Start timers
    imu.startTimer();
    FC.startTimer();
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
    FC.checkBatteryLevels();

    // Stabilize the loop rate
    FC.stabilizeLoopRate();
}

// Interrupt service routine for receiver
ISR(PCINT0_vect)
{
    RX.receiverInterrupt();
}
