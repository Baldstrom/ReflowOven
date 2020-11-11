/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define CAN_SIL_Pin GPIO_PIN_13
#define CAN_SIL_GPIO_Port GPIOC
#define DLED0_Pin GPIO_PIN_4
#define DLED0_GPIO_Port GPIOA
#define DLED1_Pin GPIO_PIN_5
#define DLED1_GPIO_Port GPIOA
#define DLED2_Pin GPIO_PIN_6
#define DLED2_GPIO_Port GPIOA
#define DLED3_Pin GPIO_PIN_7
#define DLED3_GPIO_Port GPIOA
#define SW1_Pin GPIO_PIN_0
#define SW1_GPIO_Port GPIOB
#define SW2_Pin GPIO_PIN_1
#define SW2_GPIO_Port GPIOB
#define SW3_Pin GPIO_PIN_2
#define SW3_GPIO_Port GPIOB
#define SD_WR_PROT_Pin GPIO_PIN_10
#define SD_WR_PROT_GPIO_Port GPIOB
#define SD_DET_Pin GPIO_PIN_11
#define SD_DET_GPIO_Port GPIOB
#define DLED4_Pin GPIO_PIN_8
#define DLED4_GPIO_Port GPIOA
#define DLED5_Pin GPIO_PIN_9
#define DLED5_GPIO_Port GPIOA
#define CURRENT_ALRT_Pin GPIO_PIN_4
#define CURRENT_ALRT_GPIO_Port GPIOB
#define RELAY_SET_Pin GPIO_PIN_5
#define RELAY_SET_GPIO_Port GPIOB
#define ENC_SW_Pin GPIO_PIN_6
#define ENC_SW_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
