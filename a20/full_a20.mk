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
PRODUCT_DEVICE := a20
PRODUCT_NAME := full_a20
PRODUCT_MODEL := a20
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := A205F
PRODUCT_PDA_MODEL_VERSION := DDU3BTF1
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# BUILD_FINGERPRINT := "samsung/a10dd/a10:10/QP1A.190711.020/A105FDDU3BTF1:user/release-keys"

# PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=a10dd \
        PRIVATE_BUILD_DESC="a10dd-user 10 QP1A.190711.020 $(PRODUCT_PDA_VERSION) release-keys"
