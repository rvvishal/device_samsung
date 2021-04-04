DEVICE_PATH := device/samsung/a10

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/samsung/exynos7885/exynos7885-vendor.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# FastCharge
#PRODUCT_PACKAGES += \
#    lineage.fastcharge@1.0-service.samsung

# Init scripts
PRODUCT_PACKAGES += \
    init.target.rc \
    init.usb_accessory.rc \
    fstab.enableswap

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc_key:system/etc/nfc_key \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.controls.xml:system/etc/permissions/android.software.controls.xml

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.universal7885

# Recovery
PRODUCT_PACKAGES += \
    fastbootd \
    init.recovery.exynos7885.rc

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.samsung-universal7885

# Skip Mount
PRODUCT_COPY_FILES += \
    build/target/product/gsi/gsi_skip_mount.cfg:system/system_ext/etc/init/config/skip_mount.cfg

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Spectrum files
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/spectrum/init.spectrum.rc:$(TARGET_COPY_OUT_ROOT)/init.spectrum.rc \
    $(DEVICE_PATH)/spectrum/init.spectrum.sh:$(TARGET_COPY_OUT_ROOT)/init.spectrum.sh

# System properties
-include $(LOCAL_PATH)/product_prop.mk

# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# Touch
PRODUCT_PACKAGES += \
    lineage.touch@1.0-service.samsung

# Wifi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 29

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vndkcore.libraries.29.txt:system/system_ext/apex/com.android.vndk.v29/etc/vndkcore.libraries.29.txt \
    $(LOCAL_PATH)/configs/vndkprivate.libraries.29.txt:system/system_ext/apex/com.android.vndk.v29/etc/vndkprivate.libraries.29.txt \
    $(LOCAL_PATH)/configs/placeholder:system/system_ext/apex/com.android.vndk.v29/lib/libstagefright_foundation.so  
