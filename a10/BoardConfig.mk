DEVICE_PATH := device/samsung/a10

# Kernel
TARGET_KERNEL_CONFIG := a10_defconfig

# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3556769792

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
