# Disable Modules
TARGET_KERNEL_NO_MODULES := true

# Kernel
BUILD_KERNEL := true
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := hammerhead_defconfig

# TWRP
DEVICE_RESOLUTION := 1080x1920
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := false
TW_INCLUDE_JB_CRYPTO := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# The real path for this is /sys/devices/mdp.0/qcom,cmdss_fb_primary.160/leds/lcd-backlight/brightness but the comma doesn't compile correctly
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.160/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_TIMEOUT := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
