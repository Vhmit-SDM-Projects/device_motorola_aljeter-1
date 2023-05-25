#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/aljeter/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Target
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_aljeter
PRODUCT_DEVICE := aljeter
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G6 Play
PRODUCT_MANUFACTURER := Motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aljeter-user 9 PPPS29.55-35-18-7 6a0d0 release-keys" \
    PRODUCT_NAME="aljeter"

BUILD_FINGERPRINT := motorola/aljeter/aljeter:9/PPPS29.55-35-18-7/6a0d0:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
