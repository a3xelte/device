###
##
# Device tree for Samsung Galaxy A3 2016 with Exynos7580 SoC
# Copyright (C) 2017, Emre Simsek <emresimsek6643@gmail.com>
##
###

# Define device-tree path
LOCAL_PATH := device/samsung/a3xeltexx

# Include layers
DEVICE_PACKAGE_OVERLAYS += device/samsung/a3xeltexx/overlay

# Define screen size for prebuilt apps
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

# Use dtbhtoolExynos to build dt.img
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

#########################################
### AUDIO
#########################################

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Packages
PRODUCT_PACKAGES += \
    audio.primary.universal7580 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

#########################################
### Transport Manifest
#########################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/manifest.xml:system/vendor/manifest.xml

#########################################
### Bluetooth
#########################################

# Packages
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

#########################################
### GPS
#########################################

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

# Packages
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

#########################################
### Permissions
#########################################

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

#########################################
### Seccomp
#########################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

#########################################
### Sensorhub
#########################################

# Packages
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

#########################################
### Filesystem tools
#########################################

# Packages
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

#########################################
### Key-layout
#########################################

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/configs/keylayout/gpio_keys.kl:system/usr/keylayout/gpio_keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

#########################################
### Lights
#########################################

# Packages
PRODUCT_PACKAGES += \
    lights.universal7580 \
    android.hardware.light@2.0-impl

#########################################
### Media
#########################################

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Packages / OMX
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0
    
# media build properties
PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so,libsomxcore.so \
    persist.media.treble_omx=false

#########################################
### Graphics
#########################################

# Packages / Hardware Composition
PRODUCT_PACKAGES += \
    libhwc2on1adapter \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# Packages / Renderscript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Packages / DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

#########################################
### Shims
#########################################

# Packages
PRODUCT_PACKAGES += \
    gpsd_shim \
    libandroid_runtime_shim \
    libexynoscamera_shim \
    libshim_camera

#########################################
### Ramdisk
#########################################

# Packages
PRODUCT_PACKAGES += \
    fstab.samsungexynos7580 \
    init.baseband.rc \
    init.samsung.rc \
    init.samsungexynos7580.rc \
    init.samsungexynos7580.usb.rc \
    init.wifi.rc \
    ueventd.samsungexynos7580.rc

#########################################
### Wi-FI
#########################################

# Packages / Network Utils
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Configuration / Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/cred.conf:system/etc/wifi/cred.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/filter_ie:system/etc/wifi/filter_ie

# Packages / Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl \
    android.hardware.wifi@1.0-service \
    libnetcmdiface \
    libwpa_client \
    hostapd \
    macloader \
    wificond \
    wifiloader \
    wifilogd \
    wlutil \
    wpa_supplicant \
    wpa_supplicant.conf

#########################################
### Samsung
#########################################

# Packages / SSM
PRODUCT_PACKAGES += \
    SamsungServiceMode

# Binary / SSWAP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/external/sswap:root/sbin/sswap

#########################################
### Radio Interface Layer
#########################################

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/radio/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/configs/radio/cbd:system/bin/cbd \
    $(LOCAL_PATH)/ramdisk/vendor/rild.rc:system/vendor/etc/init/rild.rc

# Configuration / Dual-SIM Support
ifeq ($(BOARD_HAS_DUAL_SIM), true)

    # Ramdisk / Dual-SIM Service
    PRODUCT_COPY_FILES += \
         $(LOCAL_PATH)/ramdisk/vendor/rild-dsds.rc:system/vendor/etc/init/rild-dsds.rc

endif

# Packages / RIL
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    modemloader \
    libxml2 \
    rild \
    libril \
    libreference-ril \
    libsecril-client \
    libsecril-client-sap \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0

#########################################
### Power
#########################################

# Binary / Samsung Health Daemon
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/external/healthd:root/sbin/healthd

# Packages
PRODUCT_PACKAGES += \
    power.exynos5 \
    android.hardware.power@1.0-impl

#########################################
### NFC
#########################################

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \

# Packages
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.bacon \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.0-impl

#########################################
### Camera
#########################################

# Packages
PRODUCT_PACKAGES += \
    Snap \
    android.hardware.camera.provider@2.4-impl \
    camera.device@3.2-impl

#########################################
### Keymaster
#########################################

# Packages
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

#########################################
### Memtrack
#########################################

# Packages
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

#########################################
### Vibrator
#########################################

# Packages
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

#########################################
### Charger
#########################################

# Packages
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos7580/exynos7580.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/a3xeltexx/a3xeltexx-vendor.mk)
