/***************************************************************************//**
 * @file
 * @brief Core application logic.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/
#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "app.h"
#include "app_log.h"
#include "sl_sensor_rht.h"
#include "temperature.h"
#include "gatt_db.h"
#include "sl_bt_api.h"
#include "sl_status.h"

#define TEMPERATURE_TIMER_SIGNAL (1<<0)


// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;

int step = 0;

/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
SL_WEAK void app_init(void)
{
 app_log_info("%s\n", __FUNCTION__); //renvoit le nom "app_init"
 sl_sensor_rht_init();
}

void timer_callback(sl_sleeptimer_timer_handle_t *handle, void *data){
  (void)handle;
  (void)data;
  app_log_info("Time step %d\n",step);
  step++;
  sl_bt_external_signal(TEMPERATURE_TIMER_SIGNAL);
}

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
SL_WEAK void app_process_action(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application code here!                              //
  // This is called infinitely.                                              //
  // Do not call blocking functions from here!                               //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
  sl_status_t sc;
  uint16_t temp_val;
  uint16_t balablalablab;

  static sl_sleeptimer_timer_handle_t timer_handle;

  switch (SL_BT_MSG_ID(evt->header)) {
    case sl_bt_evt_gatt_server_user_read_request_id : //Se reveille lors de la lecture de la température
      if(evt->data.evt_gatt_server_user_read_request.characteristic == gattdb_temperature){
          app_log_info("Display temperature.\n");
          app_log_info("It's cold outside.\n ");

          temp_val = read_temp();

          if(sl_bt_gatt_server_send_user_read_response(evt->data.evt_gatt_server_user_read_request.connection,
                                                       evt->data.evt_gatt_server_user_read_request.characteristic,
                                                       0,
                                                       sizeof(temp_val),
                                                       (const uint8_t*)&temp_val,
                                                       &balablalablab) == SL_STATUS_OK){
              app_log_info("Temperature has been displayed.\n");
              app_log_info("Sent value : %d.\n", temp_val);
          }
      }
    break;

    case sl_bt_evt_gatt_server_characteristic_status_id :
            app_log_info("co = %d\n",evt->data.evt_gatt_server_characteristic_status.characteristic);
            if(evt->data.evt_gatt_server_characteristic_status.characteristic == gattdb_temperature){ // verification de l'origne temp
                if(evt->data.evt_gatt_server_characteristic_status.client_config_flags == 1){ //appuie du bouton notify
                    app_log_info("Notification de Temperature DEPUIS UN BOUTON\n");
                    sl_sleeptimer_start_periodic_timer_ms(&timer_handle, 1000, timer_callback, NULL, 1,0);
                    step = 1;
                } else {
                    sl_sleeptimer_stop_timer(&timer_handle);
                }
            }

      break;

    // -------------------------------
    // This event indicates the device has started and the radio is ready.
    // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id:
      // Create an advertising set.
      sc = sl_bt_advertiser_create_set(&advertising_set_handle);
      app_assert_status(sc);

      // Generate data for advertising
      sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                 sl_bt_advertiser_general_discoverable);
      app_assert_status(sc);

      // Set advertising interval to 100ms.
      sc = sl_bt_advertiser_set_timing(
        advertising_set_handle,
        160, // min. adv. interval (milliseconds * 1.6)
        160, // max. adv. interval (milliseconds * 1.6)
        0,   // adv. duration
        0);  // max. num. adv. events
      app_assert_status(sc);
      // Start advertising and enable connections.
      sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                         sl_bt_legacy_advertiser_connectable);
      app_assert_status(sc);
      break;

    case sl_bt_evt_system_external_signal_id:
      if(evt->data.evt_system_external_signal.extsignals==TEMPERATURE_TIMER_SIGNAL){
          app_log_info("même signal\n");
          sl_bt_gatt_server_send_notification(evt->data.evt_gatt_server_user_read_request.connection,
                                              evt->data.evt_gatt_server_user_read_request.characteristic,
                                              sizeof(temp_val),
                                              (const uint8_t*)&temp_val);
      }
      break;


    case sl_bt_evt_connection_opened_id:
      app_log_info("%s : I m in\n",  __FUNCTION__);           // On indique que l'on est DEDANS
      temp_val = read_temp();
      app_log_info("Temp value (BLE) = %d.\n", temp_val);
      break;

    case sl_bt_evt_connection_closed_id:
      sl_sensor_rht_deinit() ; //désactivation du senseur
      app_log_info("%s : I m out\n",  __FUNCTION__); // on indique que l'on est PLUS dedans

      // -------------------------------
      // Generate data for advertising
      sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                 sl_bt_advertiser_general_discoverable);
      app_assert_status(sc);

      // Restart advertising after client has disconnected.
      sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                         sl_bt_legacy_advertiser_connectable);
      app_assert_status(sc);
      break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////

    // -------------------------------
    // Default event handler.
    default:
      break;
  }
}


