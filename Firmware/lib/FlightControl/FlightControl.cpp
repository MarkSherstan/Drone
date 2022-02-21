#include "FlightControl.h"

/// @brief Set digital pins
void FlightControl::configDigitalPins()
{
    // RGB LEDs
    pinMode(R_LED, OUTPUT);
    pinMode(G_LED, OUTPUT);
    pinMode(B_LED, OUTPUT);

    // Configure arm LEDs
    pinMode(LIGHT_1, OUTPUT);
    pinMode(LIGHT_2, OUTPUT);
    pinMode(LIGHT_3, OUTPUT);
    pinMode(LIGHT_4, OUTPUT);

    // Turn on arm LEDs
    digitalWrite(LIGHT_1, HIGH);
    digitalWrite(LIGHT_2, HIGH);
    digitalWrite(LIGHT_3, HIGH);
    digitalWrite(LIGHT_4, HIGH);
}

/// @brief Configure flight battery for voltage monitoring
/// @param numCells Number of battery cells (3s LiPo = 3)
/// @param nominalCellVoltage Nominal voltage per cell of battery (LiPo: 3.7 V/cell)
/// @param fullCellVoltage Full voltage per cell of battery (LiPo: 4.2 V/cell)
/// @param R1 Value of first resistor in voltage divider circuit use the same units as R2
/// @param R2 Value of second resistor in voltage divider circuit use the same units as R1
void FlightControl::configureBattery(float numCells, float nominalCellVoltage, float fullCellVoltage, float R1, float R2)
{
    battery.numCells = numCells;
    battery.nominalCellVoltage = nominalCellVoltage;
    battery.fullCellVoltage = fullCellVoltage;
    battery.R1 = R1;
    battery.R2 = R2;
}

/// @brief Sets the RGB light different colors to indicate the current status
/// @param color Color options: Red 'R', Green 'G', Blue 'B', Cyan 'C', Magenta 'M', Yellow 'Y', and White 'W'
void FlightControl::statusLight(char color)
{
    // Color based on state input
    switch (color)
    {
    case 'R':
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 0);
        break;
    case 'G':
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 0);
        break;
    case 'B':
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 1);
        break;
    case 'C':
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 1);
        break;
    case 'M':
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 1);
        break;
    case 'Y':
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 0);
        break;
    case 'W':
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 1);
        break;
    default:
        // Black (off)
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 0);
        break;
    }
}

/// @brief Read battery voltage and flash arm lights if voltage is getting low
void FlightControl::monitorBattery()
{
    // Read battery voltage after it is passed through voltage divider and op-amp
    uint16_t analogRaw = analogRead(BATTERY_PIN);
    float voltageRaw = analogRaw * (5.0 / 1023.0);
    float batteryVoltage = voltageRaw * (battery.R1 + battery.R2) / battery.R2;

    // Flash lights if battery is starting to get low
    if (batteryVoltage < (battery.nominalCellVoltage * battery.numCells))
    {
        flashLights();
    }
    else
    {
        digitalWrite(LIGHT_1, HIGH);
        digitalWrite(LIGHT_2, HIGH);
        digitalWrite(LIGHT_3, HIGH);
        digitalWrite(LIGHT_4, HIGH);
    }
}

/// @brief Flash lights to indicate a low battery at 1 second intervals
void FlightControl::flashLights()
{
    if ((millis() - lightTimer) > 1000)
    {
        digitalWrite(LIGHT_1, HIGH);
        digitalWrite(LIGHT_2, HIGH);
        digitalWrite(LIGHT_3, HIGH);
        digitalWrite(LIGHT_4, HIGH);
        lightTimer = millis();
    }
    else
    {
        digitalWrite(LIGHT_1, LOW);
        digitalWrite(LIGHT_2, LOW);
        digitalWrite(LIGHT_3, LOW);
        digitalWrite(LIGHT_4, LOW);
    }
}

/// @brief Initiate timers and desired loop rates
/// @param loopRateHz Desired loop rate in Hertz.
void FlightControl::startTimer(uint16_t loopRateHz)
{
    // Zero guard
    if (loopRateHz < 1)
    {
        loopRateHz = 1;
    }
    
    // Calculate desired loop rate in micro seconds
    desiredLoopRateMicroSec = (1.0 / (float)loopRateHz) * 1e6;

    // Start timers
    lightTimer = millis();
    loopTimer = micros();
}

/// @brief Add a delay so that there is a consistent loop rate
void FlightControl::stabilizeLoopRate()
{
    // Calculate required delay
    uint32_t timeToDelay = desiredLoopRateMicroSec - (micros() - loopTimer);

    // Execute the delay
    if (timeToDelay > 0)
    {
        delayMicroseconds(timeToDelay);
    }

    // Save previous time for next itteration
    loopTimer = micros();
}
