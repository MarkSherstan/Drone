// Include gaurd
#ifndef RX_H
#define RX_H

// Libraries
#include <arduino.h>

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
class RX
{
    private:
        // Functions
        int processReceiverInterrupt(int input, channel_t calibration);
        uint32_t currentTime, timer1, timer2, timer3, timer4, timer5;
        char lastChannel1, lastChannel2, lastChannel3, lastChannel4, lastChannel5;
        
        // Struct
        channel_t _channelCal1, _channelCal2, _channelCal3, _channelCal4, _channelCal5;

    public:
        // Config
        RX() = default;

        void saveReceiverCalibration(channel_t channelCal1, channel_t channelCal2, channel_t channelCal3, channel_t channelCal4, channel_t channelCal5);

        void receiver();
        void startTimer();
        void receiverInterrupt();
        void configInterruptPins();

        // Receiver
        receiver_t rx;
        receiver_t rawRX;
};

#endif // RX_H
