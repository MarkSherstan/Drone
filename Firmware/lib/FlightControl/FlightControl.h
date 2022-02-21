// Include gaurd
#ifndef FLIGHTCONTROL_H
#define FLIGHTCONTROL_H

// Libraries
#include <arduino.h>

// Pinout
#define BATTERY A0

#define LIGHT_1 A1
#define LIGHT_2 A2
#define LIGHT_3 A3
#define LIGHT_4 A4

#define ESC_1 4
#define ESC_2 5
#define ESC_3 6
#define ESC_4 7

#define R_LED 11
#define G_LED 12
#define B_LED 13

// Battery monitoring structure
struct Battery
{
    float numCells, nominalCellVoltage, fullCellVoltage, R1, R2;
};

// Receiver calibration
struct channel_t
{
    int low, high, center, reverse;
};

// Receiver structure
struct receiver_t
{
    int CH1, CH2, CH3, CH4, CH5;
};

// Class
class FlightControl
{
    private:
        // Functions
        void flashLights();

        // Time Sync
        long lightTimer;
        long loopTimer;
        long desiredLoopRateMicroSec;
        long previousTime;

        // Receiver
        int processReceiverInterrupt(int input, channel_t calibration);
        unsigned long timer1, timer2, timer3, timer4, timer5, currentTime;
        char lastChannel1, lastChannel2, lastChannel3, lastChannel4, lastChannel5;
        channel_t _channelCal1, _channelCal2, _channelCal3, _channelCal4, _channelCal5;

        // Battery Monitoring
        Battery battery;

    public:
        FlightControl() = default;
        static void statusLight(char color);
        void setUpDigitalPins();
        void stabilizeLoopRate();
        void startTimers(int loopRateHz = 200);
        void monitorBattery();
        void configureBattery(float numCells = 3, float nominalCellVoltage = 3.7, float fullCellVoltage = 4.2, float R1 = 3.24, float R2 = 2.00);
        void receiverInterrupt();
        void receiver();
        void saveReceiverCalibration(channel_t channelCal1, channel_t channelCal2, channel_t channelCal3, channel_t channelCal4, channel_t channelCal5);

        // Receiver
        receiver_t RX;
        receiver_t rawRX;
};

#endif // FLIGHTCONTROL_H
