# ReflowOven
A reflow oven controller designed in KiCAD, by Jaden Bottemiller

This project is designed to use an STM32 ARM Cortex-M4 microcontroller. 

All onboard devices interface to the microcontroller using I2C (with the exception of the SD Card Slot, which uses SPI). Also has a CAN interface, USB 2.0, and SWD. Features four seven segment displays, three buttons, and a rotary encoder with a custom logic circuit that interfaces with an I2C binary up/down counter to increment, decrement, and maintain accuracy of the relative position of the encoder.

Here is a rendering of the board with all of the parts modelled.
Some models from online resources or default in KiCAD, but many were made by me in Solidworks.

![Image of Board](https://raw.githubusercontent.com/Baldstrom/ReflowOven/main/Pics/board_render.png)

The user interface portion of the board is able to be cut off so that it can be placed anywhere in a mechanical chassis for ease of construction.

Here is the board as seen by default in the KiCAD PCBnew Software.

![Image of PCBnew Render](https://raw.githubusercontent.com/Baldstrom/ReflowOven/main/Pics/Board.png)

A PDF of the Schematic Sheets can be found [here](https://github.com/Baldstrom/ReflowOven/blob/main/PDFs/ReflowOven.pdf).

