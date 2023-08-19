## wlan-thermostat
Wireless Thermostats for elecrically triggerd heatings

This is the front panel of a wireless triggered heating which can be connected to a second board that contains the 
power supply and a relais capeable of switching the required electrical load. The front panel is designed to be
attached in a perpendicular way to the back part.

### Elements:

- An ESP8266-12F module containing the microcontroller, Flash
- A SHT40 temperature and humidity sensor
- A rotary encoder for input
- A SSD1306 OLED display for output
- Voltage regulator to regulate the 5V from the back board to 3v3 for the ESP8266 
- Programming logic and headers
- Headers to connect to the back board for power control and relay switching

## Used Parts:

## Revision History:

- **v1.0**: Initial version (Produced: 12.06.2023; First assembled: 29.06.2023)
- **v1.1**: Fixing after component testin (Produced: 15.07.2023; First assembled: 31.07.2023 / Frontend)
   1. Frontend:
     - Fixing of strapping pins of ESP-12F
     - Fixing of thermocoupling between ESP-12F and the temperature sensor
     - Introduction of UMH3N chip to replace two transistors + two resistors for the auto-reset circuit
     - Introduced resistor array to manage strapping pins
     - Switching of pins as follows:
         - Rotary Encoder Button now GPIO0 (doubling as a fallback mode for programming)
         - Relay pin: GPIO13

   2. Backend
     - Fixed orientation of Relay Footprint
     - Fixed size of footprint for optocoppler
     - Changed pinheaders for frontend connection from smd to throughole
     - Rearranged board placing to manage changed footprints
- **v1.2**: Alternate version without (exposed) ground panel at the back of the frontend thermo sensor
   