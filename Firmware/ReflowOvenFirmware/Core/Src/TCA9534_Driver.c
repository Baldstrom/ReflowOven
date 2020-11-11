#include "TCA9534_Driver.h"

static uint8_t DEVICE_ADDR;
static uint8_t WriteRegister_TCA9534(uint8_t addr, uint8_t reg, uint8_t value, SMBUS_HandleTypeDef *I2C);
static uint8_t ReadRegister_TCA9534(uint8_t addr, uint8_t reg, uint8_t *output, SMBUS_HandleTypeDef *I2C);

uint8_t Init_TCA9534(TCA9534_Config *configuration, SMBUS_HandleTypeDef *I2C) 
{
    DEVICE_ADDR = configuration->DEV_ADDR << 1;
    uint8_t SUCCESS = TCA9534_SUCCESS;
    SUCCESS &= WriteRegister_TCA9534(DEVICE_ADDR, TCA9534_DIR_CONFIG_REG, configuration->IO_CONFIG, I2C);
    SUCCESS &= WriteRegister_TCA9534(DEVICE_ADDR, TCA9534_POL_INV_REG, configuration->INVERSION_CONFIG, I2C);
    return SUCCESS;
}

uint8_t ReadGPIO_TCA9534(uint8_t *output, SMBUS_HandleTypeDef *I2C) 
{
    return ReadRegister_TCA9534(DEVICE_ADDR, TCA9534_INPUT_PORT_REG, output, I2C);
}

uint8_t WriteGPIO_TCA9534(uint8_t byte, SMBUS_HandleTypeDef *I2C)
{
    return WriteRegister_TCA9534(DEVICE_ADDR, TCA9534_OUTPUT_PORT_REG, byte, I2C);
}

uint8_t WriteRegister_TCA9534(uint8_t addr, uint8_t reg, uint8_t value, SMBUS_HandleTypeDef *I2C) 
{
    uint8_t buffer[1];
    buffer[0] = value;
    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, TCA9534_READY_TRIALS, TCA9534_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Write(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, buffer, 1, TCA9534_Timeout);
    
    if (status == HAL_OK)
    {
        return TCA9534_SUCCESS;
    }
    return TCA9534_FAILURE;
}

uint8_t ReadRegister_TCA9534(uint8_t addr, uint8_t reg, uint8_t *output, SMBUS_HandleTypeDef *I2C) 
{
    uint8_t buffer[1];
    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, TCA9534_READY_TRIALS, TCA9534_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Read(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, buffer, 1, TCA9534_Timeout);
    *output = buffer[0];

    if (status == HAL_OK)
    {
        return TCA9534_SUCCESS;
    }
    return TCA9534_FAILURE;
}

