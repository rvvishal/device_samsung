DEVICE_PATH := device/samsung/a20

# Kernel
TARGET_KERNEL_CONFIG := a20_defconfig

# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528 # 55MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4320133120 #4.02GB

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
