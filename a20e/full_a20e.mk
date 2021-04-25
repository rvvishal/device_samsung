# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a20/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a20e
PRODUCT_NAME := full_a20e
PRODUCT_MODEL := a20e
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := A202F
PRODUCT_PDA_MODEL_VERSION := DDU5BTF1
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
   ro.build.fingerprint=google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys
