#include "RX.h"

void RX::configureInterruptPins()
{
    // Receiver pin interupts
    PCICR |= (1 << PCIE0);
    PCMSK0 |= (1 << PCINT1);
    PCMSK0 |= (1 << PCINT2);
    PCMSK0 |= (1 << PCINT3);
    PCMSK0 |= (1 << PCINT4);
    PCMSK0 |= (1 << PCINT5);
}


void RX::startTimer()
{
    // Start a timer
    currentTime = micros();
}



/// @brief Used in interrupt service routine to read current receiver values sent by the transmitter
void RX::receiverInterrupt()
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
void RX::saveReceiverCalibration(channel_t channelCal1, channel_t channelCal2, channel_t channelCal3, channel_t channelCal4, channel_t channelCal5)
{
    _channelCal1 = channelCal1;
    _channelCal2 = channelCal2;
    _channelCal3 = channelCal3;
    _channelCal4 = channelCal4;
    _channelCal5 = channelCal5;
}

/// @brief Process the receiver value based on calibration
void RX::receiver()
{
    rx.CH1 = processReceiverInterrupt(rawRX.CH1, _channelCal1);
    rx.CH2 = processReceiverInterrupt(rawRX.CH2, _channelCal2);
    rx.CH3 = processReceiverInterrupt(rawRX.CH3, _channelCal3);
    rx.CH4 = processReceiverInterrupt(rawRX.CH4, _channelCal4);
    rx.CH5 = processReceiverInterrupt(rawRX.CH5, _channelCal5);
}

/// @brief Process the raw interupt receiver value to a properly scaled receiver value based on a prior calibration.
/// @param input Raw input value received by the interupt.
/// @param calibration RC calibration value structure.
/// @return Processed receiver value.
int RX::processReceiverInterrupt(int input, channel_t calibration)
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
