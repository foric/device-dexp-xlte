#
# Copyright (C) 2014 The Mokee OpenSource Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/dexp/xlte

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Assert
TARGET_OTA_ASSERT_DEVICE := xlte

# Platform
TARGET_ARCH := arm
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
#TARGET_CPU_VARIANT := krait
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_BOOTLOADER_BOARD_NAME := msm8916
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Power HAL
TARGET_POWERHAL_VARIANT := cm

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USES_QCOM_BSP := true
#HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true
PROTOBUF_SUPPORTED := true

# Kernel
#BOARD_KERNEL_CMDLINE := androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_KERNEL_BASE        := 0x80000000
#BOARD_KERNEL_PAGESIZE    := 2048
#BOARD_KERNEL_TAGS_OFFSET := 0x80000100
#BOARD_RAMDISK_OFFSET     := 0x01000000

#BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=disabled

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_MKBOOTIMG_ARGS := --dt $(LOCAL_PATH)/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100


# Partitions
#BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 2631680000
#BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
#BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432/cyanogenmod/
#BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 65
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Revcovery
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
DEVICE_RESOLUTION := 540x960

# SELinux
#BOARD_SEPOLICY_DIRS += \
#       device/dexp/xlte/sepolicy

#BOARD_SEPOLICY_UNION += \
#       file_contexts \
#       device.te \
#       vm_bms.te

# TWRP config
#TW_CUSTOM_THEME := $(LOCAL_PATH)/recovery/res
TARGET_CUSTOM_KERNEL_HEADERS := $(LOCAL_PATH)/include
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := false #true
BOARD_HAS_NO_REAL_SDCARD := false #true
TARGET_RECOVERY_QCOM_RTC_FIX := true
#BOARD_SUPPRESS_SECURE_ERASE := true

HAVE_SELINUX := true
#BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true


#RECOVERY_VARIANT=twrp
RECOVERY_VARIANT=philz

#TARGET_RECOVERY_INITRC :=$(LOCAL_PATH)/recovery/init.rc

TARGET_USERIMAGES_USE_F2FS := false
BOARD_USE_NTFS_3G := false
BOARD_HAS_NO_FB2PNG := false
BOARD_HAS_SLOW_STORAGE := true
BRIGHTNESS_SYS_FILE:= "/sys/class/leds/lcd-backlight/brightness"


# TWRP-Specific
#TW_THEME := portrait_hdpi
#TW_NEW_ION_HEAP := true
#TW_INTERNAL_STORAGE_PATH := "/data/media"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_TARGET_USES_QCOM_BSP := true
#TW_FLASH_FROM_STORAGE := true
TW_NO_USB_STORAGE := false #true
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INCLUDE_CRYPTO := false
#TW_INCLUDE_CRYPTO_SAMSUNG := false
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_MAX_BRIGHTNESS := 255
#TW_NO_SCREEN_TIMEOUT := true
#TW_NO_SCREEN_BLANK := true
#TW_NEVER_UNMOUNT_SYSTEM := true
#TW_NO_BATT_PERCENT := true
