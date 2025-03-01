#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Product Specifics
PRODUCT_NAME := aosp_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

#AOSP Specifics
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Blur
TARGET_ENABLE_BLUR := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V14.0.5.0.TGCINXM:user/release-keys"
