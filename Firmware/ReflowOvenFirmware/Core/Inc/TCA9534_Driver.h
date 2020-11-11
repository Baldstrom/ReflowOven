#pragma once

#include "stm32f3xx_hal.h"

#define TCA9534_INPUT_PORT_REG      0x00
#define TCA9534_OUTPUT_PORT_REG     0x01
#define TCA9534_POL_INV_REG         0x02
#define TCA9534_DIR_CONFIG_REG      0x03

#define TCA9534_SUCCESS             0x00
#define TCA9534_FAILURE             0x01

#define TCA9534_Timeout             1000
#define TCA9534_READY_TRIALS        128

typedef struct _TCA9534_Config {
    uint8_t DEV_ADDR;
    uint8_t IO_CONFIG;
    uint8_t INVERSION_CONFIG;
} TCA9534_Config;

uint8_t Init_TCA9534(TCA9534_Config *configuration, SMBUS_HandleTypeDef *I2C);
uint8_t ReadGPIO_TCA9534(uint8_t *output, SMBUS_HandleTypeDef *I2C);
uint8_t WriteGPIO_TCA9534(uint8_t byte, SMBUS_HandleTypeDef *I2C);
