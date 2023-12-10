#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device
$(call inherit-product, device/lge/flashlm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_flashlm
PRODUCT_DEVICE := flashlm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := V50 ThinQ
TARGET_VENDOR_PRODUCT_NAME := flashlm_lao_com
TARGET_VENDOR_DEVICE_NAME := flashlm

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="flashlm_lao_com" \
    PRIVATE_BUILD_DESC="flashlm_lao_com-user 12 SKQ1.211103.001 2214500223708 release-keys"

BUILD_FINGERPRINT := "lge/flashlm_lao_com/flashlm:12/SKQ1.211103.001/2214500223708:user/release-keys"
