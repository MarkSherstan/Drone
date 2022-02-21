// Include gaurd
#ifndef RX_H
#define RX_H

// Libraries
#include <arduino.h>

// Structs
struct ChannelCal
{
    uint16_t low, high, center, reverse;
};

struct receiver_t
{
    int CH1, CH2, CH3, CH4, CH5;
};

// Class
class Receiver
{
    private:
        // Functions
        int processReceiverInterrupt(int input, ChannelCal calibration);
        
        // Variables
        uint32_t currentTime, timer1, timer2, timer3, timer4, timer5;
        uint8_t lastChannel1, lastChannel2, lastChannel3, lastChannel4, lastChannel5;
        
        // Struct
        ChannelCal _ch1cal, _ch2cal, _ch3cal, _ch4cal, _ch5cal;

    public:
        // Config
        Receiver() = default;

        // Functions
        void saveReceiverCal(ChannelCal ch1cal, ChannelCal ch2cal, ChannelCal ch3cal, ChannelCal ch4cal, ChannelCal ch5cal);
        void receiverA();
        void receiverInterrupt();
        void configInterruptPins();

        // Structs
        receiver_t rx;
        receiver_t rawRX;
};

#endif // RX_H
