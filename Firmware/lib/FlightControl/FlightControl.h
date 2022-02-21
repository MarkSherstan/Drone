// Include gaurd
#ifndef FLIGHTCONTROL_H
#define FLIGHTCONTROL_H

// Libraries
#include <arduino.h>

// Pinout
#define BATTERY_PIN A0

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

// Class
class FlightControl
{
    private:
        // Functions
        void flashLights();

        // Time Sync
        uint32_t lightTimer, loopTimer;
        uint32_t desiredLoopRateMicroSec;

        // Battery Monitoring
        Battery battery;

    public:
        // Config
        FlightControl() = default;

        // Functions
        void configureBattery(float numCells=3, float nominalCellVoltage=3.7, float fullCellVoltage=4.2, float R1=3.24, float R2=2.00);
        void startTimer(uint16_t loopRateHz=200);
        void stabilizeLoopRate();
        void configDigitalPins();
        void monitorBattery();

        static void statusLight(char color);
};

#endif // FLIGHTCONTROL_H
