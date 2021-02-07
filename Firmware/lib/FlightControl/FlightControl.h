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

// Battery monitoring structure
struct batt_t {
  float numCells, nominalCellVoltage, fullCellVoltage, R1, R2;
};

// Radio structure

// Class
class FlightControl{
private:
  // Functions
  void flashLights();

  // Time Sync
  long lightTimer;
  long loopTimer;
  long desiredLoopRateMicroSec;
  long previousTime;

  // Battery Monitoring
  batt_t battery;

public:
  FlightControl() = default;
  static void statusLight(char color);
  void setUpDigitalPins();
  void stabilizeLoopRate();
  void startTimers(int loopRateHz=200);
  void monitorBattery();
  void configureBattery(float numCells=3, float nominalCellVoltage=3.7, float fullCellVoltage=4.2, float R1=3.24, float R2=2.00);

  void radio();
  unsigned long timer1, timer2, timer3, timer4, timer5, currentTime;
  char lastChannel1, lastChannel2, lastChannel3, lastChannel4, lastChannel5;
  int receiver[6];
};

#endif // FLIGHTCONTROL_H
