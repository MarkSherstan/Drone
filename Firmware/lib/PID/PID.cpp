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
