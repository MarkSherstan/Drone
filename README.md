# Drone
Mechanical, electrical, and software package for a custom quadcopter drone.

## Mechanical 
Designed using Fusion 360 and 3D printed on a Prusa MK3 printer. 

## Electrical
Custom PCBs designed in KiCad for the brain, power distribution, and signal indication. 
- Flight Controller
- Power Distribution Board 
- Lights 

## Software
C++ and custom libraries for controlling and stabilizing the UAV. Compiled with PlatformIO.

## Future Ideas
### Mechanical 
- Over actuated design

### Electrical
- Design custom ESCs
- 3.3 V flight controller (8 MHz suffcient?)
- Polyfuses on outputs
- PDB also ESC (active cooling?) - Have regulated outputs 
- PDB is part of frame (1 Oz copper)
- More powerful chip - RPi / STM32 / 2560 - Internet connection?

### Software 
- Test the crystal: How much time are we loosing? Try different caps.
