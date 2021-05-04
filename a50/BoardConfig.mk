DEVICE_PATH := device/samsung/a50

# Kernel
TARGET_KERNEL_CONFIG := A50_defconfig

# Inherit common board flags
include device/samsung/universal9610-common/BoardConfigCommon.mk

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5365760000

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab



# Assert
TARGET_OTA_ASSERT_DEVICE := a50,a50dd
