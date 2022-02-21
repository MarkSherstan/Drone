// Include gaurd
#ifndef RX_H
#define RX_H

// Libraries
#include <arduino.h>

// Structs
struct ChannelCal
{
    uint16_t low, high, center;
    bool reverse;
};

struct ReceiverStream
{
    uint16_t CH1, CH2, CH3, CH4, CH5;
};

// Class
class Receiver
{
    private:
        // Functions
        uint16_t processRawStream(uint16_t input, ChannelCal calibration);
        
        // Variables
        uint32_t currentTime, timer1, timer2, timer3, timer4, timer5;
        uint8_t lastChannel1, lastChannel2, lastChannel3, lastChannel4, lastChannel5;
        
        // Struct(s)
        ChannelCal _ch1cal, _ch2cal, _ch3cal, _ch4cal, _ch5cal;
        ReceiverStream raw;

    public:
        // Config
        Receiver() = default;

        // Functions
        void saveReceiverCal(ChannelCal ch1cal, ChannelCal ch2cal, ChannelCal ch3cal, ChannelCal ch4cal, ChannelCal ch5cal);
        void configInterruptPins();
        void receiverInterrupt();
        void update();

        // Struct(s)
        ReceiverStream sticks;
};

#endif // RX_H
