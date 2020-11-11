#include "INA226_Driver.h"

static uint8_t DEVICE_ADDR;
static uint8_t WriteRegister_INA226(uint8_t addr, uint8_t reg, uint16_t value, SMBUS_HandleTypeDef *I2C);
static uint8_t ReadRegister_INA226(uint8_t addr, uint8_t reg, uint8_t *output, SMBUS_HandleTypeDef *I2C);

uint8_t Init_INA226(INA226_Config *configuration, SMBUS_HandleTypeDef *I2C) 
{
    DEVICE_ADDR = configuration->DEVICE_ADDR;
    uint16_t configReg = 0x4000;
    configReg |= configuration->OP_MODE;
    configReg |= (configuration->SHNT_VOLT_CONV_TIME << 3);    
    configReg |= (configuration->VBUS_CONV_TIME << 6);
    configReg |= (configuration->AVG_CONFIG << 9);
    uint8_t status = INA226_SUCCESS;
    status &= WriteRegister_INA226(DEVICE_ADDR, INA226_CONFIG_REG, configReg, I2C);
    status &= WriteRegister_INA226(DEVICE_ADDR, INA226_CAL_REG, configuration->CALIBRATION_VALUE, I2C);
    status &= WriteRegister_INA226(DEVICE_ADDR, INA226_ALERT_LIM_REG, configuration->ALERT_LIM, I2C);
    status &= WriteRegister_INA226(DEVICE_ADDR, INA226_MASK_EN_REG, configuration->MASK_ENABLE_CONFIG, I2C);
    return status;
}

uint8_t Reset_INA226(SMBUS_HandleTypeDef *I2C) 
{
    return WriteRegister_INA226(DEVICE_ADDR, INA226_CONFIG_REG, 0x8000, I2C);
}

uint8_t ReadShuntVoltage_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output) 
{
    return ReadRegister_INA226(DEVICE_ADDR, INA226_SHUNT_VOLTAGE_REG, output, I2C);
}

uint8_t ReadBusVoltage_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output) 
{
    return ReadRegister_INA226(DEVICE_ADDR, INA226_BUS_VOLTAGE_REG, output, I2C);
}

uint8_t ReadBusPower_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output) 
{
    return ReadRegister_INA226(DEVICE_ADDR, INA226_PWR_REG, output, I2C);
}

uint8_t ReadBusCurrent_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output) 
{
    return ReadRegister_INA226(DEVICE_ADDR, INA226_CURRENT_REG, output, I2C);
}

uint8_t ReadCalibrationRegister_INA226(SMBUS_HandleTypeDef *I2C, uint16_t *output) 
{
    return ReadRegister_INA226(DEVICE_ADDR, INA226_CAL_REG, output, I2C);
}

uint8_t WriteRegister_INA226(uint8_t addr, uint8_t reg, uint16_t value, SMBUS_HandleTypeDef *I2C) 
{
    uint8_t buffer[2];
    buffer[0] = value;
    buffer[1] = value >> 8;

    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, INA226_READY_TRIALS, INA226_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Write(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, buffer, 2, INA226_Timeout);
    
    if (status == HAL_OK)
    {
        return INA226_SUCCESS;
    }
    return INA226_FAILURE;
}

uint8_t ReadRegister_INA226(uint8_t addr, uint8_t reg, uint8_t *output, SMBUS_HandleTypeDef *I2C) 
{
    uint8_t buffer[2];

    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, INA226_READY_TRIALS, INA226_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Read(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, buffer, 2, INA226_Timeout);
    *output = buffer[0];

    if (status == HAL_OK)
    {
        return INA226_SUCCESS;
    }
    return INA226_FAILURE;
}