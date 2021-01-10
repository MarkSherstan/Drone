// Include gaurd
#ifndef FLIGHTCONTROL_H
#define FLIGHTCONTROL_H

// Pinout
#define BATTERY   A0

#define LIGHT_1   A1
#define LIGHT_2   A2
#define LIGHT_3   A3
#define LIGHT_4   A4

#define ESC_1     4
#define ESC_2     5
#define ESC_3     6
#define ESC_4     7

#define R_LED     11
#define G_LED     12
#define B_LED     13

#define AUX_A     A5
#define AUX_D     10

// Class
class FlightControl{
private:
  // Time Sync
  long _loopTimeMicroSec;
  unsigned long currentTime;
  long timeToDelay;
  unsigned long _trackedTime;

public:
  // Constructor
  FlightControl() = default;

  // Functions
  void setUpDigitalPins();
  void status(char input);
  void startTimeSync(long loopTimeMicroSec);
  void timeSync();
};

#endif // FLIGHTCONTROL_H
