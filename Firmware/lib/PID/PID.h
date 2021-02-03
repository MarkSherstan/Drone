// Include gaurd
#ifndef PID_H
#define PID_H

// Limits of the system 
#define MAX_ROLL_DEG    30
#define MIN_ROLL_DEG   -30

#define MAX_PITCH_DEG   30
#define MIN_PITCH_DEG  -30

#define MAX_YAW_DEG     30
#define MIN_YAW_DEG    -30

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
  void reset();
};

#endif // PID_H
