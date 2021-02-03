// Include gaurd
#ifndef PID_H
#define PID_H

// PID gains data structure
struct gains_t {
  float P, I, D;
};

// Controller values 
struct controlVals_t {
  float actual, desired, integral, prevError;
};

// Class
class PID{
private:
  // Variables
  gains_t _rollGains, _pitchGains, _yawGains;

  // Functions
  float control(controlVals_t controlValue, gains_t gains, float dt);

public:
  // Config
  PID(gains_t rollGains, gains_t pitchGains, gains_t yawGains);
  
  // Functions
  void startTimer();
  void update(controlVals_t rollControl, controlVals_t pitchControl, controlVals_t yawControl);

  // Variables
  long timer; 
};

#endif // PID_H
