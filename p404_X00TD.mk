#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Project 404 Stuff
$(call inherit-product, vendor/404/configs/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
P404_BUILDTYPE=UMAI

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := p404_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X00TD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X00TD \
    PRODUCT_DEVICE=X00TD \
    PRODUCT_NAME=WW_X00TD \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 1309 release-keys"
