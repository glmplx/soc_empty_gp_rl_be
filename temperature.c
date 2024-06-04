/*
 * temperature.c
 *
 *  Created on: 30 mai 2024
 *      Author: barth
 */
#include "app_log.h"
#include "temperature.h"
#include "sl_sensor_rht.h"
#include <stdint.h>

int16_t read_temp(void){
  int16_t ble_temp;
  int32_t   temper_data  = 0;
  uint32_t  humid_data   = 0;

  if(sl_sensor_rht_get(&humid_data, &temper_data) == SL_STATUS_OK){    // Acquisition de temp & humid
      app_log_info("Temp value  : %ld.\n", temper_data);
      app_log_info("Humid value : %ld.\n", humid_data);  //ajout build test

      ble_temp = temper_data / 10;
      app_log_info("BLE Temp value  : %d.\n", ble_temp);

  }
  else{
      ble_temp = 0x8000;
      app_log_info("BLE Temp value  : %d.\n", ble_temp);
      app_log_error("No Temp value could be read!!\n");
  }

  return ble_temp;
}
