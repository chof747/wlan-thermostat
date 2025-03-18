## Situation:

I am currently designing a wifi enabled thermostat for an electric heating which consists of

1. a shelly 1 plus to switch the mains of the heating and to provide as a power supply for the controller (I am mitigating the GND connected to mains with a fully enclosed cover)
2. a self designed board featuring an **ESP12-F** module as MCU, a Rotary Encoder and an OLED for controlling and an **SHT40-AD1B-R2** temperature and humidity sensor for sensing the temp in the room

Both modules are going to be installed in the wall and are in a 3d printed enclosure consiting of a wall plate, holding the shelly and the PCB a cover closing all up and a skirt around the cover that contains the sensor, which sits on a small arm protruding from the PCB.

## Issue:

The SHT40 in the enclosure (with or without the skirt attached) is not measuring the temperature correctly but seems to be mainly driven by the temperature of the PCB material, the enclosure or the copper of the traces.

I have already taken some measurest to fix this problem, but they are not working 100%:

- The sensor sits on a side arm, which puts it outside of the core of the enclosure
- I have removed the ground plane in the vicinity of the arm to avoid heat conduction via this

But still it is picking up enough heat (I guess from the ESP) to distort the results in a way that I cannot compensate it.

Does anyone have any ideas how I can fix this? 

Attached are a few pictures, two from the 3D model of the PCB with the OLED attached, one from the PCB layout and a picture of the PCB in the enclosure. I would really appriciate any help or suggestions.

Thanks
Christian