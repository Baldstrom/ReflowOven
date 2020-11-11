#include "PCF8551ATT_Driver.h"

static uint8_t DEVICE_ADDR;
static uint8_t WriteRegister_PCF8551(uint8_t addr, uint8_t reg, uint8_t value, SMBUS_HandleTypeDef *I2C);
static uint8_t ReadRegister_PCF8551(uint8_t addr, uint8_t reg, uint8_t *output, SMBUS_HandleTypeDef *I2C);
static uint8_t WriteMultipleRegister_PCF8551(uint8_t addr, uint8_t reg, uint8_t *value, uint8_t num, SMBUS_HandleTypeDef *I2C);

uint8_t Init_PCF8551(PCF8551_Config *configuration, SMBUS_HandleTypeDef *I2C)
{
    uint8_t status = PCF8551_SUCCESS;
    DEVICE_ADDR = configuration->DEV_ADDR;
    uint8_t devCtlReg = !!configuration->CLOCK_OUT_ENABLED;
    devCtlReg |= configuration->INT_OSC_ENABLED << 1;
    devCtlReg |= configuration->FRAME_FREQ << 2;
    status &= WriteRegister_PCF8551(DEVICE_ADDR, PCF8551_DEVICE_CTL_REG, devCtlReg, I2C);
    uint8_t displayCtlReg = configuration->DISPLAY_ENABLE;
    displayCtlReg |= configuration->BIAS_MODE << 1;
    displayCtlReg |= configuration->DRIVE_MODE << 2;
    displayCtlReg |= configuration->BOOST << 4;
    status &= WriteRegister_PCF8551(DEVICE_ADDR, PCF8551_DISPLAY_CTL_1, displayCtlReg, I2C);
    displayCtlReg = configuration->INVERSION_MODE;
    displayCtlReg |= configuration->BLINK << 1;
    status &= WriteRegister_PCF8551(DEVICE_ADDR, PCF8551_DISPLAY_CTL_2, displayCtlReg, I2C);
    return status;
}

uint8_t WriteSegment_PCF8551(PCF8551_COM_PORT port, PCF8551_SEG segment, uint8_t value, SMBUS_HandleTypeDef *I2C)
{
    uint8_t reg = (port + 1) * (uint8_t) PCF8551_COM0_SEG0 + (uint8_t) segment;
    uint8_t status = WriteRegister_PCF8551(DEVICE_ADDR, reg, value, I2C);
    return status;
}

uint8_t WritePort_PCF8551(PCF8551_COM_PORT port, uint32_t value, SMBUS_HandleTypeDef *I2C)
{
    uint8_t buffer[4];
    buffer[0] = value;
    buffer[1] = value >> 8;
    buffer[2] = value >> 16;
    buffer[3] = value >> 24;

    uint8_t reg = (port + 1) * (uint8_t) PCF8551_COM0_SEG0;

    return WriteMultipleRegister_PCF8551(DEVICE_ADDR, reg, buffer, 4, I2C);
}

uint32_t GetPortValueFromDigits(uint8_t digit0, uint8_t digit1, uint8_t digit2, uint8_t digit3, uint8_t dots)
{   
    uint32_t portValue;
    portValue = GetSegmentValueFromDigit(digit0, 0);
    portValue |= GetSegmentValueFromDigit(digit1, 0) << 8;
    portValue |= GetSegmentValueFromDigit(digit2, 0) << 16;
    portValue |= GetSegmentValueFromDigit(digit3, 0) << 24;
    
    return portValue;
}

uint32_t GetPortValueFromCharacters(char digit0, char digit1, char digit2, char digit3, char dots) 
{
    uint32_t portValue;
    portValue = GetSegmentValueFromCharacter(digit0, 0);
    portValue |= GetSegmentValueFromCharacter(digit1, 0) << 8;
    portValue |= GetSegmentValueFromCharacter(digit2, 0) << 16;
    portValue |= GetSegmentValueFromCharacter(digit3, 0) << 24;
    
    return portValue;
}

uint8_t WriteRegister_PCF8551(uint8_t addr, uint8_t reg, uint8_t value, SMBUS_HandleTypeDef *I2C) 
{
    uint8_t buffer[1];
    buffer[0] = value;

    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, PCF8551_READY_TRIALS, PCF8551_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Write(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, buffer, 1, PCF8551_Timeout);
    
    if (status == HAL_OK)
    {
        return PCF8551_SUCCESS;
    }
    return PCF8551_FAILURE;
}

uint8_t WriteMultipleRegister_PCF8551(uint8_t addr, uint8_t reg, uint8_t *value, uint8_t num, SMBUS_HandleTypeDef *I2C) 
{

    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, PCF8551_READY_TRIALS, PCF8551_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Write(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, value, num, PCF8551_Timeout);
    
    if (status == HAL_OK)
    {
        return PCF8551_SUCCESS;
    }
    return PCF8551_FAILURE;
}

uint8_t ReadRegister_PCF8551(uint8_t addr, uint8_t reg, uint8_t *output, SMBUS_HandleTypeDef *I2C) 
{
    uint8_t buffer[1];

    HAL_StatusTypeDef status = HAL_OK;
    while (HAL_I2C_IsDeviceReady(I2C, addr, PCF8551_READY_TRIALS, PCF8551_Timeout) != HAL_OK);
    
    status = HAL_I2C_Mem_Read(I2C, addr, reg, I2C_MEMADD_SIZE_8BIT, buffer, 1, PCF8551_Timeout);
    *output = buffer[0];

    if (status == HAL_OK)
    {
        return PCF8551_SUCCESS;
    }
    return PCF8551_FAILURE;
}

uint8_t GetSegmentValueFromDigit(uint8_t digit, uint8_t invertOutput)
{
    uint8_t segVal = 0x00;
    switch(digit) {
        case 1:
            segVal = 0x00;
            break;
        case 2:
            segVal = 0x00;
            break;
        case 3:
            segVal = 0x00;
            break;
        case 4:
            segVal = 0x00;
            break;
        case 5:
            segVal = 0x00;
            break;
        case 6:
            segVal = 0x00;
            break;
        case 7:
            segVal = 0x00;
            break;
        case 8:
            segVal = 0x00;
            break;
        case 9:
            segVal = 0x00;
            break;
    }
    if (invertOutput) {
        return ~segVal;
    }
    return segVal;
}

uint8_t GetSegmentValueFromCharacter(char character, uint8_t invertOutput) 
{
    uint8_t segVal = 0x00;
    switch(character) {
        case 'a':
        case 'A':
            segVal = 0x00;
            break;
        case 'b':
        case 'B':
            segVal = 0x00;
            break;
        case 'c':
        case 'C':
            segVal = 0x00;
            break;
        case 'd':
        case 'D':
            segVal = 0x00;
            break;
        case 'e':
        case 'E':
            segVal = 0x00;
            break;
        case 'f':
        case 'F':
            segVal = 0x00;
            break;
        case 'g':
        case 'G':
            segVal = 0x00;
            break;
        case 'h':
        case 'H':
            segVal = 0x00;
            break;
        case 'i':
        case 'I':
            segVal = 0x00;
            break;
        case 'j':
        case 'J':
            segVal = 0x00;
            break;
        case 'k':
        case 'K':
            segVal = 0x00;
            break;
        case 'l':
        case 'L':
            segVal = 0x00;
            break;
        case 'm':
        case 'M':
            segVal = 0x00;
            break;
        case 'n':
        case 'N':
            segVal = 0x00;
            break;
        case 'o':
        case 'O':
            segVal = 0x00;
            break;
        case 'p':
        case 'P':
            segVal = 0x00;
            break;
        case 'q':
        case 'Q':
            segVal = 0x00;
            break;
        case 'r':
        case 'R':
            segVal = 0x00;
            break;
        case 's':
        case 'S':
            segVal = 0x00;
            break;
        case 't':
        case 'T':
            segVal = 0x00;
            break;
        case 'u':
        case 'U':
            segVal = 0x00;
            break;
        case 'v':
        case 'V':
            segVal = 0x00;
            break;
        case 'w':
        case 'W':
            segVal = 0x00;
            break;
        case 'x':
        case 'X':
            segVal = 0x00;
            break;
        case 'y':
        case 'Y':
            segVal = 0x00;
            break;
        case 'z':
        case 'Z':
            segVal = 0x00;
            break;
    }
    if (invertOutput) {
        return ~segVal;
    }
    return segVal;
}
