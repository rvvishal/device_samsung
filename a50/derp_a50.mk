$(call inherit-product, device/samsung/a50/full_a50.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Build type: official
DERP_OFFICIAL := true
DERP_MAINTAINER := Hrx

# Sakura gapps
TARGET_GAPPS_ARCH := arm64
#SAKURA_GAPPS := false
#SAKURA_BUILD_TYPE=microg

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Set bootanimation resolution to 720p
TARGET_BOOT_ANIMATION_RES := 720

# Use OnePlus launcher
# SAKURA_OPLAUNCHER := true

TARGET_USES_BLUR := true

PRODUCT_NAME := derp_a50
