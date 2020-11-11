#pragma once

#include "stm32f3xx_hal.h"

#define PCF8551_SW_RST_REG      0x00
#define PCF8551_DEVICE_CTL_REG  0x01
#define PCF8551_DISPLAY_CTL_1   0x02
#define PCF8551_DISPLAY_CTL_2   0x03

#define PCF8551_COM0_SEG0       0x04
#define PCF8551_COM0_SEG1       0x05
#define PCF8551_COM0_SEG2       0x06
#define PCF8551_COM0_SEG3       0x07
#define PCF8551_COM0_DOTS       0x08

#define PCF8551_COM1_SEG0       0x09
#define PCF8551_COM1_SEG1       0x0A
#define PCF8551_COM1_SEG2       0x0B
#define PCF8551_COM1_SEG3       0x0C
#define PCF8551_COM1_DOTS       0x0D

#define PCF8551_COM2_SEG0       0x0E
#define PCF8551_COM2_SEG1       0x0F
#define PCF8551_COM2_SEG2       0x10
#define PCF8551_COM2_SEG3       0x11
#define PCF8551_COM2_DOTS       0x12

#define PCF8551_COM3_SEG0       0x13
#define PCF8551_COM3_SEG1       0x14
#define PCF8551_COM3_SEG2       0x15
#define PCF8551_COM3_SEG3       0x16
#define PCF8551_COM3_DOTS       0x17

#define PCF8551_SUCCESS         0x00
#define PCF8551_FAILURE         0x01

#define PCF8551_READY_TRIALS    100
#define PCF8551_Timeout         1000

typedef enum _PCF8551_COM_PORT {
    COM0,
    COM1,
    COM2,
    COM3
} PCF8551_COM_PORT;

typedef enum _PCF8551_SEG {
    SEG0,
    SEG1,
    SEG2,
    SEG3,
    DOTS
} PCF8551_SEG;

typedef enum _PCF8551_FRAME_FREQ {
    Hz32,
    Hz64,
    Hz96,
    Hz128   
} PCF8551_FRAME_FREQ;

typedef enum _PCF8551_MUX_DRV_MODE {
    COM03,
    COM02,
    COM01,
    COM0_ONLY   
} PCF8551_MUX_DRV_MODE;

typedef enum _PCF8551_BLINK_CTL {
    OFF,
    Hz0_5,
    Hz1,
    Hz2
} PCF8551_BLINK_CTL;

typedef struct _PCF8551_Config {
    uint8_t DEV_ADDR;
    PCF8551_FRAME_FREQ FRAME_FREQ;
    uint8_t INT_OSC_ENABLED;
    uint8_t CLOCK_OUT_ENABLED;
    PCF8551_MUX_DRV_MODE DRIVE_MODE;
    uint8_t BOOST;
    uint8_t BIAS_MODE;
    uint8_t DISPLAY_ENABLE;
    PCF8551_BLINK_CTL BLINK;
    uint8_t INVERSION_MODE;
} PCF8551_Config;

uint8_t Init_PCF8551(PCF8551_Config *configuration, SMBUS_HandleTypeDef *I2C);
uint8_t WriteSegment_PCF8551(PCF8551_COM_PORT port, PCF8551_SEG segment, uint8_t value, SMBUS_HandleTypeDef *I2C);
uint8_t WritePort_PCF8551(PCF8551_COM_PORT port, uint32_t value, SMBUS_HandleTypeDef *I2C);

uint8_t GetSegmentValueFromDigit(uint8_t digit, uint8_t invertOutput);
uint8_t GetSegmentValueFromCharacter(char character, uint8_t invertOutput);
uint32_t GetPortValueFromDigits(uint8_t digit0, uint8_t digit1, uint8_t digit2, uint8_t digit3, uint8_t dots);
uint32_t GetPortValueFromCharacters(char digit0, char digit1, char digit2, char digit3, char dots);