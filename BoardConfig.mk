###
##
# Device tree for Samsung Galaxy A3 2016 with Exynos7580 SoC
# Copyright (C) 2017, Victor Lourme <contact@zeroside.co>
##
###

# Define device codename we support
TARGET_OTA_ASSERT_DEVICE := a3xelte,a3xeltexx,a3xelteub,a3xeltedo,a3xeltekx

# Define device-tree path
DEVICE_PATH := device/samsung/a3xeltexx

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7580
TARGET_SLSI_VARIANT := cm

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7580

# Architecture
FORCE_32_BIT := true

ifneq ($(FORCE_32_BIT),true)
TARGET_BOARD_SUFFIX := _64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true
else
TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
endif

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bluetooth
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/configs/bluetooth/libbt_vndcfg.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Hardware
BOARD_HARDWARE_CLASS := $(DEVICE_PATH)/lineagehw
BOARD_HARDWARE_CLASS += hardware/samsung/lineagehw

# Nexus Hardware
BOARD_NEXUS_HARDWARE_CLASS += $(DEVICE_PATH)/nexus/hardware

# Init
TARGET_INIT_VENDOR_LIB := libinit_sec
TARGET_UNIFIED_DEVICE := true

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_USE_NON_TREBLE_CAMERA := true

# Graphics
USE_OPENGL_RENDERER := true

# Surface
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Surface Vertical Syncing
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

# Wifi-Direct
BOARD_USES_WFD := true

# Exynos BGRA mixer
BOARD_USE_BGRA_8888_FB := true

# Shader cache config options
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size
MAX_EGL_CACHE_SIZE := 2048*1024

EXYNOS5_ENHANCEMENTS := true

ifdef EXYNOS5_ENHANCEMENTS
SOONG_TARGET_GLOBAL_CFLAGS += -DEXYNOS5_ENHANCEMENTS
endif

# Samsung LSI OpenMAX
SOONG_TARGET_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := cortex-a53

# (G)SCALER
BOARD_USES_SCALER := true

# Virtual Display
BOARD_USES_VIRTUAL_DISPLAY := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true

# HDMI
BOARD_HDMI_INCAPABLE := true
BOARD_USES_GSC_VIDEO := true

# Audio
TARGET_AUDIOHAL_VARIANT := samsung

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# OMX Rescaling
TARGET_OMX_LEGACY_RESCALING := true

# Kernel
TARGET_KERNEL_CONFIG := lineage-a3xeltexx_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a3xeltexx
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive

# Kernel configuration
TARGET_LINUX_KERNEL_VERSION := 3.10
ifeq ($(FORCE_32_BIT),true)
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
endif
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048

# Extracted with libbootimg
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100  --board SRPOJ08A000KU
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Partitions
BOARD_HAS_NO_MISC_PARTITION := false
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12096372736
BOARD_FLASH_BLOCK_SIZE := 4096

# Block based
BOARD_DISABLE_BLOCK_BASED_OTA := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_DOWNLOAD_MODE := true

# Charger/Healthd
WITH_LINEAGE_CHARGER := false
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# LED
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/a3xeltexx/sepolicy

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# PowerHAL
TARGET_POWERHAL_VARIANT := samsung

# Properties
TARGET_SYSTEM_PROP += device/samsung/a3xeltexx/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/ramdisk/fstab.samsungexynos7580

# Radio
BOARD_MODEM_TYPE := tss310
BOARD_PROVIDES_LIBRIL := true
BOARD_VENDOR :=

# Dual-SIM Support
ifeq ($(BOARD_HAS_DUAL_SIM), true)

    # Define 2 SIMS for libril
    SIM_COUNT := 2

endif

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WPA_SUPPLICANT_USE_HIDL          := true
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# MACLOADER
BOARD_HAVE_SAMSUNG_WIFI          := true

# NFC
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOOTLOADER_BOARD_NAME)

# inherit from the proprietary version
-include vendor/samsung/a3xeltexx/BoardConfigVendor.mk
