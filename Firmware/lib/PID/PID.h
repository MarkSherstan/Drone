// Include guard
#ifndef PID_H
#define PID_H

// Libraries 
#include <arduino.h>

// Limits
#define MAX_ROLL_DEG   30
#define MIN_ROLL_DEG  -30
#define MAX_PITCH_DEG  30
#define MIN_PITCH_DEG -30
#define MAX_YAW_DEG    30
#define MIN_YAW_DEG   -30

// PID gains struct
struct Gains
{
    float P, I, D;
};

// Class
class PID
{
    private:
        // Variables
        Gains _gains;
        float integral, prevError;
        uint32_t timer;

    public:
        // Config
        PID(Gains gains);

        // Functions
        float update(float actual, float desired = 0);
        void reset();
};

#endif // PID_H
