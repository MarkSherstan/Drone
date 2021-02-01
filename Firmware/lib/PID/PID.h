// Include gaurd
#ifndef PID_H
#define PID_H

// PID gains data structure
struct gains_t {
  float P, I, D;
};

// Class
class PID{
private:
  // Variables
  gains_t _rollGains, _pitchGains, _yawGains;

public:
  // Config
  PID(gains_t rollGains, gains_t pitchGains, gains_t yawGains);
  
  // Functions
  void startTimer();

  // Variables
  long timer; 
};

#endif // PID_H
