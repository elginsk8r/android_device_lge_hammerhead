# Disable Modules
TARGET_KERNEL_NO_MODULES := true

# Kernel
BUILD_KERNEL := true
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := evervolv_hammerhead_defconfig
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
