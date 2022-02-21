// Include gaurd
#ifndef FLIGHTCONTROL_H
#define FLIGHTCONTROL_H

// Libraries
#include <arduino.h>

// Pinout analog
#define BATTERY_PIN A0
#define LIGHT_1     A1
#define LIGHT_2     A2
#define LIGHT_3     A3
#define LIGHT_4     A4

// Pinout digital
#define ESC_1 4
#define ESC_2 5
#define ESC_3 6
#define ESC_4 7
#define R_LED 11
#define G_LED 12
#define B_LED 13

// Battery params
#define BATTERY_MAX_CELL 4.2
#define BATTERY_NOM_CELL 3.7
#define BATTERY_CELLS    3
#define BATTERY_R1       3.24
#define BATTERY_R2       2.00

// Class
class FlightControl
{
    private:
        // Functions
        void flashLights();

        // Time Sync
        uint32_t lightTimer, loopTimer;
        uint32_t desiredLoopRateMicroSec;

    public:
        // Config
        FlightControl() = default;

        // Functions
        void startTimer(uint16_t loopRateHz=200);
        void checkBatteryLevels();
        void stabilizeLoopRate();
        void configDigitalPins();

        static void statusLight(char color);
};

#endif // FLIGHTCONTROL_H
