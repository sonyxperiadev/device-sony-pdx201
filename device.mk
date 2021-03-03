# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/sony/pdx201/rootdir

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/pdx201/overlay

# Device Specific Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Sensors Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/sensors/config/seine_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/seine_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/seine_stk3x3x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/seine_stk3x3x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/seine_lsm6dsm_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/seine_lsm6dsm_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/nicobar_somc_default_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/nicobar_somc_default_sensors.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/nicobar_ak0991x_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/nicobar_ak0991x_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/nicobar_lsm6dsm_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/nicobar_lsm6dsm_0_somc_product.json

# Camera Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/camera/camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_config.xml \
    $(DEVICE_PATH)/vendor/etc/camera/imx486_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx486_chromatix.xml \
    $(DEVICE_PATH)/vendor/etc/camera/s5k4h7yx_front_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h7yx_front_chromatix.xml \
    $(DEVICE_PATH)/vendor/etc/camera/s5k4h7yx_tele_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h7yx_tele_chromatix.xml \
    $(DEVICE_PATH)/vendor/etc/camera/s5k4h7yx_uwide_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h7yx_uwide_chromatix.xml

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/vendor/etc/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf

# Audio calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Bluetooth_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/General_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Global_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Handset_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Hdmi_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Headset_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Speaker_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/workspaceFile.qwsp \
    $(DEVICE_PATH)/vendor/etc/acdbdata/adsp_avs_config.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/adsp_avs_config.acdb

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# BT/Wifi patch file
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/bdwlan.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/bdwlan.bin

# Device Init
PRODUCT_PACKAGES += \
    fstab.pdx201 \
    ramdisk-fstab.pdx201 \
    init.recovery.pdx201 \
    init.pdx201

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk

# SAR
PRODUCT_PACKAGES += \
    TransPowerSensors

# Generic Sensors Configuration
PRODUCT_PACKAGES += \
    nicobar_qrd_ak991x_0.json \
    nicobar_ak991x_0.json \
    nicobar_bu52053nvx_0.json \
    nicobar_qrd_lsm6dso_0.json \
    nicobar_default_sensors.json \
    nicobar_tmd2725.json \
    nicobar_lsm6dso_0.json \
    nicobar_qrd_tmd2725.json \
    nicobar_bmp285_0.json \
    sns_distance_bound.json \
    sns_mag_cal_legacy.json \
    sns_rotv.json \
    sns_aont.json \
    sns_dae.json \
    sns_amd_sw_enabled.json \
    sns_pedometer.json \
    sns_mag_cal.json \
    sns_basic_gestures.json \
    sns_cm.json \
    sns_multishake.json \
    sns_rmd.json \
    sns_ccd_v2_walk.json \
    sns_amd_sw_disabled.json \
    sns_tilt.json \
    sns_tilt_sw_disabled.json \
    sns_ccd.json \
    sns_bring_to_ear.json \
    sns_diag_filter.json \
    sns_amd.json \
    sns_tilt_to_wake.json \
    sns_gyro_cal.json \
    sns_tilt_sw_enabled.json \
    sns_dpc.json \
    sns_smd.json \
    sns_geomag_rv.json \
    sns_facing.json \
    lsm6dsm_0.json \
    stk3x3x_0.json \
    sns_fmv.json \
    sns_device_orient.json

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=420 \
    ro.usb.pid_suffix=20c

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/seine/platform.mk)

# copy NFC firmware
$(call inherit-product-if-exists, vendor/nxp/nxp-vendor.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/sony/seine-common/seine-partial.mk)
