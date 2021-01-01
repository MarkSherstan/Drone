# Flight Controller
# To Do
- Bright LEDs?
- IMU orientation? - Silkscreen
- Label everything
- Do 3.3 board with minimal stuff on it (MPU6050?)
- Double check varistor pads
- Order pre criped leads and connectors

# Additional BOM Items:
- MPU 6050 drop in -> Have some in stock....
- Mating housing for JST-GH connectors
- Order pre crimped leads (multicolor)
- Do I have extra BSS138?

# Future
## Mechanical 
- Over actuated design?

## Electrical 
- ATMEGA 2560
-  Add Polyfuses? 

## Software
- Test the crystal: How much time are we loosing? Try different caps.

# Other
## PDB board
- 2 Oz 
- Have proper mating connectors

## LED board!
- LED
- CAP
- RES

## ESCs
- Whats the plan?



## Calcs
CL= (CX1 * CX2)/(CX1 + CX2) + CSTRAY
CL = (CX * CX)/(CX + CX) + CSTRAY <= substitute CX for CX1 and CX2 since they equal each other
CL = (CX^2)/(2CX) + CSTRAY
CL = (CX/2) + CSTRAY
CL - CSTRAY = (CX/2)
2*(CL -CSTRAY) = CX

CX1 = CX2 = 2*(CL-CSTRAY)

CSTRAY approx 4pF

22/2 = 11 - 4 = 7 ish 



https://blog.adafruit.com/2012/01/24/choosing-the-right-crystal-and-caps-for-your-design/
C1, C2 = 2*CL – 2*Cstray

https://forum.digikey.com/t/crystal-oscillator-load-cap-selection/1915
C1, C2 = 2*(CL) - Cstray

load capacitance of crystal * 2 - stray cap pin and trace = cap size 
https://www.microchip.com/forums/m881105.aspx
https://www.sparkfun.com/products/94
