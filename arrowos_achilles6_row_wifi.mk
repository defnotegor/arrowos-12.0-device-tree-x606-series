#
# Copyright (C) 2022 The ArrowOS Project
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

PRODUCT_DEVICE := achilles6
PRODUCT_NAME := arrow_achilles6
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo TB-X606F
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# ArrowOS Official
ARROW_OFFICIAL := false

# Device identifier
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_achilles6_row_wifi-user 10 QP1A.190711.020 124 release-keys"

BUILD_FINGERPRINT := Lenovo/achilles6_row_wifi/achilles6:10/QP1A.190711.020/124:user/release-keys
