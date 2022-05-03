#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common FusionOS stuff
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)
FLUID_BUILD_VARIANT := UNOFFICIAL

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

# GApps
PRODUCT_GMS_CLIENTID_BASE := android-asus
IS_PHONE := true
ifeq ($(WITH_GAPPS),true)
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
endif

PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=Kneba \
  ro.fluid.cpu=SDM636

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="coral-user 12 SP2A.220405.003 8210211 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/coral/coral:12/SP2A.220405.003/8210211:user/release-keys"
