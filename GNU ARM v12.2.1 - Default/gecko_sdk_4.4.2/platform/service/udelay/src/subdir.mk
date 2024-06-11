################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/udelay/src/sl_udelay.c 

S_UPPER_SRCS += \
C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/udelay/src/sl_udelay_armv6m_gcc.S 

OBJS += \
./gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.o \
./gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o 

C_DEPS += \
./gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.o: C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/udelay/src/sl_udelay.c gecko_sdk_4.4.2/platform/service/udelay/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32MG12P332F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be\config" -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be\config\btconf" -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_assert" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_log" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//protocol/bluetooth/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//protocol/bluetooth/bgcommon/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//protocol/bluetooth/bgstack/ll/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/bootloader" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/bootloader/api" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/gatt_service_device_information" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/i2cspm/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/in_place_ota_dfu" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/leddrv/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_mbedtls_support/config" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_mbedtls_support/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//util/third_party/mbedtls/include" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//util/third_party/mbedtls/library" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/mpu/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_psa_driver/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/common" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/ble" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/wmbus" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/sidewalk" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/rail_util_power_manager_init" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/sensor_rht" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/sensor_select" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/si70xx/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_protocol_crypto/src" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/udelay/inc" -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be\autogen" -Os -Wall -Wextra -Werror -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/udelay/src/sl_udelay_armv6m_gcc.S gecko_sdk_4.4.2/platform/service/udelay/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be\config" -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be\config\btconf" -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_assert" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_log" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//protocol/bluetooth/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//protocol/bluetooth/bgcommon/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//protocol/bluetooth/bgstack/ll/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/bootloader" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/bootloader/api" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/gatt_service_device_information" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/i2cspm/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/in_place_ota_dfu" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/leddrv/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_mbedtls_support/config" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_mbedtls_support/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//util/third_party/mbedtls/include" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//util/third_party/mbedtls/library" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/mpu/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_psa_driver/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/common" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/ble" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/wmbus" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/protocol/sidewalk" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/rail_util_power_manager_init" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/sensor_rht" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//app/bluetooth/common/sensor_select" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/si70xx/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/security/sl_component/sl_protocol_crypto/src" -I"C:/Users/guill/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/udelay/inc" -I"C:\Users\guill\SimplicityStudio\v5_workspace\soc_empty_gp_rl_be\autogen" '-DEFR32MG12P332F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -imacrossl_gcc_preinclude.h -c -x assembler-with-cpp -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


