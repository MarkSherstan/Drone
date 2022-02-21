#include "PID.h"

/// @brief Initialize the PID gains and start a timer
/// @param gains PID gains for control
PID::PID(Gains gains)
{
    _gains = gains;
    timer = micros();
}

/// @brief PID controller
/// @param actual Actual value
/// @param desired Desired value
float PID::update(float actual, float desired)
{
    // Calculate dt
    float dt = (micros() - timer) / 1e-6;
    timer = micros();

    // PID
    float error = desired - actual;
    float I = integral + error * dt;
    float D = (error - prevError) / dt;

    // Save values for next time
    prevError = error;
    integral = I;

    // Return value
    return (_gains.P * error) + (_gains.I * I) + (_gains.D * D);
}

/// @brief Reset the controller to prevent integral wind up and timing errors
void PID::reset()
{
    integral = 0;
    timer = micros();
}
