#include "FlightControl.h"
#include <arduino.h>

/// @brief Set digital pins as outputs or interupts.
void FlightControl::setUpDigitalPins()
{
    // RGB LEDs
    pinMode(R_LED, OUTPUT);
    pinMode(G_LED, OUTPUT);
    pinMode(B_LED, OUTPUT);

    // Turn on LEDs located on the arms
    pinMode(LIGHT_1, OUTPUT);
    digitalWrite(LIGHT_1, HIGH);
    pinMode(LIGHT_2, OUTPUT);
    digitalWrite(LIGHT_2, HIGH);
    pinMode(LIGHT_3, OUTPUT);
    digitalWrite(LIGHT_3, HIGH);
    pinMode(LIGHT_4, OUTPUT);
    digitalWrite(LIGHT_4, HIGH);

    // Receiver pin interupts
    PCICR |= (1 << PCIE0);
    PCMSK0 |= (1 << PCINT1);
    PCMSK0 |= (1 << PCINT2);
    PCMSK0 |= (1 << PCINT3);
    PCMSK0 |= (1 << PCINT4);
    PCMSK0 |= (1 << PCINT5);

    // Set status LED to white to start
    statusLight('W');
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
    case 'r':
        // Red
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 0);
        break;

    case 'G':
    case 'g':
        // Green
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 0);
        break;

    case 'B':
    case 'b':
        // Blue
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 1);
        break;

    case 'C':
    case 'c':
        // Cyan
        digitalWrite(R_LED, 0);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 1);
        break;

    case 'M':
    case 'm':
        // Magenta
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 0);
        digitalWrite(B_LED, 1);
        break;

    case 'Y':
    case 'y':
        // Yellow
        digitalWrite(R_LED, 1);
        digitalWrite(G_LED, 1);
        digitalWrite(B_LED, 0);
        break;

    case 'W':
    case 'w':
        // White
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

/// @brief Read battery voltage and flash arm lights if voltage is getting low.
void FlightControl::monitorBattery()
{
    // Read battery voltage after it is passed through voltage divider and op-amp
    int analogRaw = analogRead(BATTERY);
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
    if ((micros() - lightTimer) > 1000)
    {
        digitalWrite(LIGHT_1, HIGH);
        digitalWrite(LIGHT_2, HIGH);
        digitalWrite(LIGHT_3, HIGH);
        digitalWrite(LIGHT_4, HIGH);
        lightTimer = micros();
    }
    else
    {
        digitalWrite(LIGHT_1, LOW);
        digitalWrite(LIGHT_2, LOW);
        digitalWrite(LIGHT_3, LOW);
        digitalWrite(LIGHT_4, LOW);
    }
}

/// @brief Initiate timers and desired loop rates.
/// @param loopRateHz Desired loop rate in Hertz.
void FlightControl::startTimers(int loopRateHz)
{
    lightTimer = micros();
    loopTimer = micros();
    currentTime = micros();
    desiredLoopRateMicroSec = (1.0 / (float)loopRateHz) * 1e6;
}

/// @brief Add a delay so that there is a consistent loop rate
void FlightControl::stabilizeLoopRate()
{
    // Calculate required delay
    long timeToDelay = desiredLoopRateMicroSec - (micros() - previousTime);

    // Execute the delay
    if (timeToDelay > 0)
    {
        delayMicroseconds(timeToDelay);
    }

    // Save previous time
    previousTime = micros();
}

/// @brief Used in interrupt service routine to read current receiver values sent by the transmitter
void FlightControl::receiverInterrupt()
{
    // Get current time
    currentTime = micros();

    // Channel 1
    if (PINB & B00000001)
    {
        if (lastChannel1 == 0)
        {
            lastChannel1 = 1;
            timer1 = currentTime;
        }
    }
    else if (lastChannel1 == 1)
    {
        lastChannel1 = 0;
        rawRX.CH1 = currentTime - timer1;
    }

    // Channel 2
    if (PINB & B00000010)
    {
        if (lastChannel2 == 0)
        {
            lastChannel2 = 1;
            timer2 = currentTime;
        }
    }
    else if (lastChannel2 == 1)
    {
        lastChannel2 = 0;
        rawRX.CH2 = currentTime - timer2;
    }

    // Channel 3
    if (PINB & B00000100)
    {
        if (lastChannel3 == 0)
        {
            lastChannel3 = 1;
            timer3 = currentTime;
        }
    }
    else if (lastChannel3 == 1)
    {
        lastChannel3 = 0;
        rawRX.CH3 = currentTime - timer3;
    }

    // Channel 4
    if (PINB & B00001000)
    {
        if (lastChannel4 == 0)
        {
            lastChannel4 = 1;
            timer4 = currentTime;
        }
    }
    else if (lastChannel4 == 1)
    {
        lastChannel4 = 0;
        rawRX.CH4 = currentTime - timer4;
    }

    // Channel 5
    if (PINB & B00010000)
    {
        if (lastChannel5 == 0)
        {
            lastChannel5 = 1;
            timer5 = currentTime;
        }
    }
    else if (lastChannel5 == 1)
    {
        lastChannel5 = 0;
        rawRX.CH5 = currentTime - timer5;
    }
}

/// @brief Save calibration values of the RC receiver to ensure inputs are scaled correctly.
/// @param channelCal1 Low, high, center, and direction of RC channel 1 based off calibration
/// @param channelCal2 Low, high, center, and direction of RC channel 2 based off calibration
/// @param channelCal3 Low, high, center, and direction of RC channel 3 based off calibration
/// @param channelCal4 Low, high, center, and direction of RC channel 4 based off calibration
/// @param channelCal5 Low, high, center, and direction of RC channel 5 based off calibration
void FlightControl::saveReceiverCalibration(channel_t channelCal1, channel_t channelCal2, channel_t channelCal3, channel_t channelCal4, channel_t channelCal5)
{
    _channelCal1 = channelCal1;
    _channelCal2 = channelCal2;
    _channelCal3 = channelCal3;
    _channelCal4 = channelCal4;
    _channelCal5 = channelCal5;
}

/// @brief Process the receiver value based on calibration
void FlightControl::receiver()
{
    RX.CH1 = processReceiverInterrupt(rawRX.CH1, _channelCal1);
    RX.CH2 = processReceiverInterrupt(rawRX.CH2, _channelCal2);
    RX.CH3 = processReceiverInterrupt(rawRX.CH3, _channelCal3);
    RX.CH4 = processReceiverInterrupt(rawRX.CH4, _channelCal4);
    RX.CH5 = processReceiverInterrupt(rawRX.CH5, _channelCal5);
}

/// @brief Process the raw interupt receiver value to a properly scaled receiver value based on a prior calibration.
/// @param input Raw input value received by the interupt.
/// @param calibration RC calibration value structure.
/// @return Processed receiver value.
int FlightControl::processReceiverInterrupt(int input, channel_t calibration)
{
    // Input value is on the low side
    if (input < calibration.center)
    {
        if (input < calibration.low)
            input = calibration.low;
        int diff = ((long)(calibration.center - input) * (long)500) / (calibration.center - calibration.low);
        if (calibration.reverse == 1)
            return 1500 + diff;
        else
            return 1500 - diff;
    }
    // Input value is on the high side
    else if (input > calibration.center)
    {
        if (input > calibration.high)
            input = calibration.high;
        int diff = ((long)(input - calibration.center) * (long)500) / (calibration.high - calibration.center);
        if (calibration.reverse == 1)
            return 1500 - diff;
        else
            return 1500 + diff;
    }
    // Input value is dead center
    else
        return 1500;
}

/// @brief Arm the drone if throttle is low and switch is toggled
// void FlightControl::checkArmState(){
//   while(true){
//     receiver();
//     stabilizeLoopRate();
//     if ((RX.CH3 < 1100) && (RX.CH5 > 1600)){
//       break;
//     }
//   }
// }
