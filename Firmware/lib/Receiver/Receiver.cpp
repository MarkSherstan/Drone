#include "Receiver.h"

/// @brief Set digital pins
void Receiver::configInterruptPins()
{
    // Receiver pin interupts
    PCICR |= (1 << PCIE0);
    PCMSK0 |= (1 << PCINT1);
    PCMSK0 |= (1 << PCINT2);
    PCMSK0 |= (1 << PCINT3);
    PCMSK0 |= (1 << PCINT4);
    PCMSK0 |= (1 << PCINT5);
}

/// @brief Used in ISR to read current receiver values sent by the transmitter
void Receiver::receiverInterrupt()
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
        raw.CH1 = currentTime - timer1;
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
        raw.CH2 = currentTime - timer2;
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
        raw.CH3 = currentTime - timer3;
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
        raw.CH4 = currentTime - timer4;
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
        raw.CH5 = currentTime - timer5;
    }
}

/// @brief Save calibration values of the RC to ensure inputs are scaled correctly
/// @param ch1cal Low, high, center, and direction of RC channel 1 based off calibration
/// @param ch2cal Low, high, center, and direction of RC channel 2 based off calibration
/// @param ch3cal Low, high, center, and direction of RC channel 3 based off calibration
/// @param ch4cal Low, high, center, and direction of RC channel 4 based off calibration
/// @param ch5cal Low, high, center, and direction of RC channel 5 based off calibration
void Receiver::saveReceiverCal(ChannelCal ch1cal, ChannelCal ch2cal, ChannelCal ch3cal, ChannelCal ch4cal, ChannelCal ch5cal)
{
    _ch1cal = ch1cal;
    _ch2cal = ch2cal;
    _ch3cal = ch3cal;
    _ch4cal = ch4cal;
    _ch5cal = ch5cal;
}

/// @brief Process the receiver value based on calibration
void Receiver::update()
{
    sticks.CH1 = processRawStream(raw.CH1, _ch1cal);
    sticks.CH2 = processRawStream(raw.CH2, _ch2cal);
    sticks.CH3 = processRawStream(raw.CH3, _ch3cal);
    sticks.CH4 = processRawStream(raw.CH4, _ch4cal);
    sticks.CH5 = processRawStream(raw.CH5, _ch5cal);
}

/// @brief Process the raw interupt receiver value to a properly scaled receiver value based on a prior calibration
/// @param input Raw input value received by the interupt.
/// @param calibration RC calibration value structure.
/// @return Processed receiver value.
uint16_t Receiver::processRawStream(uint16_t input, ChannelCal calibration)
{
    // Input value is on the low side
    if (input < calibration.center)
    {
        if (input < calibration.low)
            input = calibration.low;

        int16_t diff = ((calibration.center - input) * 500) / (calibration.center - calibration.low);
        
        if (calibration.reverse)
            return 1500 + diff;
        else
            return 1500 - diff;
    }
    // Input value is on the high side
    else if (input > calibration.center)
    {
        if (input > calibration.high)
            input = calibration.high;
            
        int16_t diff = ((input - calibration.center) * 500) / (calibration.high - calibration.center);

        if (calibration.reverse)
            return 1500 - diff;
        else
            return 1500 + diff;
    }
    // Input value is dead center
    else 
    {
        return 1500;
    }
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
