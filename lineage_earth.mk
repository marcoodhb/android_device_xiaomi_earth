#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/earth/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion
TARGET_DISABLE_EPPE := true
AXION_CAMERA_REAR_INFO := 50,0.08
AXION_CAMERA_FRONT_INFO := 5
TARGET_INCLUDES_LOS_PREBUILTS := true
AXION_MAINTAINER := Marco
AXION_PROCESSOR := Mediatek_Helio_G85
PERF_GOV_SUPPORTED ?= true
PERF_DEFAULT_GOV ?= schedutil
PERF_ANIM_OVERRIDE ?= false
GPU_FREQS_PATH := /sys/kernel/ged/hal/opp_logs
GPU_MIN_FREQ_PATH := /sys/module/ged/parameters/gpu_bottom_freq
TARGET_IS_LOW_RAM ?= true

PRODUCT_NAME := lineage_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C

PRODUCT_SYSTEM_NAME := earth_global
PRODUCT_SYSTEM_DEVICE := earth

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="earth-user 14 UP1A.230105.007 V816.0.12.0.UCVMIXM release-keys" \
    BuildFingerprint=Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.12.0.UCVMIXM:user/release-keys
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
