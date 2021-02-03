#include "PID.h"
#include <arduino.h>

/// @brief Initialize the PID gains
/// @param rollGains PID gains for roll axis. 
/// @param pitchGains PID gains for pitch axis. 
/// @param yawGains PID gains for yaw axis. 
PID::PID(gains_t rollGains, gains_t pitchGains, gains_t yawGains) {
  _rollGains = rollGains;
  _pitchGains = pitchGains;
  _yawGains = yawGains;
}

/// @brief Starts a timer to be used for the PID controller
void PID::startTimer() {
  timer = micros();
}

/// @brief 
void PID::update(controlVals_t rollControl, controlVals_t pitchControl, controlVals_t yawControl) {
  // Calculate dt
  float dt = 1;

  // Run control
  float roll = control(rollControl, _rollGains, dt);
  float pitch = control(pitchControl, _pitchGains, dt);
  float yaw = control(yawControl, _yawGains, dt);
}

/// @brief PID controller 
/// @param controlValue Control values (actual, desired, integral, and previous error)
/// @param gains PID gain coeffcients 
/// @param dt Time delta from the last calculation 
float PID::control(controlVals_t controlValue, gains_t gains, float dt) {
  // PID
  float error = controlValue.desired - controlValue.actual;
  float I = controlValue.integral + error*dt;
  float D = (error - controlValue.prevError) / dt;

  // Save values for next time
  controlValue.prevError = error;
  controlValue.integral = I;

  // Return value 
  return (gains.P * error) + (gains.I * I) + (gains.D * D);
}
