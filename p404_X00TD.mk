#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common P404 stuff.
$(call inherit-product, vendor/404/configs/common.mk)
P404_BUILDTYPE := RIPPA

# Gapps
TARGET_GAPPS_ARCH := arm64
$(call inherit-product, vendor/google/pixel/config.mk)
$(call inherit-product, vendor/google/gms/config.mk)

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := p404_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001.A1 7474174 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys"
