#pragma once

#include "stm32f3xx_hal.h"

#define INA226_CONFIG_REG               0x00
#define INA226_SHUNT_VOLTAGE_REG        0x01
#define INA226_BUS_VOLTAGE_REG          0x02
#define INA226_PWR_REG                  0x03
#define INA226_CURRENT_REG              0x04
#define INA226_CAL_REG                  0x05
#define INA226_MASK_EN_REG              0x06
#define INA226_ALERT_LIM_REG            0x07
#define INA226_MANUFACTURER_ID_REG      0xFE
#define INA226_DIE_ID_REG               0xFF

#define INA226_SUCCESS                  0x00
#define INA226_FAILURE                  0x01

#define INA226_READY_TRIALS             100
#define INA226_Timeout                  1000

typedef enum _INA226_AVERAGING_MODE {
    AVG1,
    AVG4,
    AVG16,
    AVG64,
    AVG128,
    AVG256,
    AVG512,
    AVG1024
} INA226_AVERAGING_MODE;

typedef enum _INA226_CONVERSION_TIME {
    us140,
    us204,
    us332,
    us588,
    us1100,
    us2116,
    us4156,
    us8224
} INA226_CONVERSION_TIME;

typedef enum _INA226_OPERATING_MODE {
    SHTDOWN,
    TIGGERED_SHUNT_VOLTAGE,
    TIGGERED_BUS_VOLTAGE,
    TRIGGERED_SHUNT_BUS_VOLTAGE,
    PWRDWN,
    CONTINUOUS_SHUNT_VOLTAGE,
    CONTINUOUS_BUS_VOLTAGE,
    CONTINUOUS_SHUNT_BUS_VOLTAGE
} INA226_OPERATING_MODE;

typedef struct _INA226_CONFIG {
    uint8_t DEVICE_ADDR;
    INA226_AVERAGING_MODE AVG_CONFIG;
    INA226_CONVERSION_TIME VBUS_CONV_TIME;
    INA226_CONVERSION_TIME SHNT_VOLT_CONV_TIME;
    INA226_OPERATING_MODE OP_MODE;
    uint16_t CALIBRATION_VALUE;
    uint16_t MASK_ENABLE_CONFIG;
    uint16_t ALERT_LIM;
} INA226_Config;

uint8_t Init_INA226(INA226_Config *configuration, SMBUS_HandleTypeDef *I2C);
uint8_t Reset_INA226(SMBUS_HandleTypeDef *I2C);

uint8_t ReadShuntVoltage_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output);
uint8_t ReadBusVoltage_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output);
uint8_t ReadBusPower_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output);
uint8_t ReadBusCurrent_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output);
uint8_t ReadCalibrationRegister_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output);