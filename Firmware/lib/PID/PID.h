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
  gains_t _gains;
  float integral, prevError;
  long timer; 

public:
  // Config
  PID(gains_t gains);
  
  // Functions
  float update(float actual, float desired=0);
};

#endif // PID_H
