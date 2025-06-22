#
# Copyright (C) 2022 The LineageOS Project
# Copyright (C) 2025 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from achilles6 device
$(call inherit-product, device/lenovo/achilles6/device.mk)

# Device identifier
PRODUCT_DEVICE := achilles6
PRODUCT_NAME := arrow_achilles6
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Tab M10 FHD Plus
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# ArrowOS Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_BLUR := true

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_achilles6_row_wifi-user 10 QP1A.190711.020 TB-X606F_USR_S000032_2009281511_WW_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/achilles6_row_wifi/achilles6_row_wifi:10/QP1A.190711.020/TB-X606F_USR_S000032_2009281511_WW_ROW:user/release-keys
