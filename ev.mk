#
# Copyright (C) 2013 The Evervolv Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Call this first so apn list is actually copied
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/gsm.mk)

# Product makefile
$(call inherit-product, device/lge/hammerhead/aosp_hammerhead.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Pull all dictionaries
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/dictionaries/intl.mk)

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += $(SRC_EVERVOLV_DIR)/overlay/hot_reboot

# 1080p
PRODUCT_PACKAGE_OVERLAYS += $(SRC_EVERVOLV_DIR)/overlay/1080p

# Extra overlay for Evervolv
PRODUCT_PACKAGE_OVERLAYS += device/lge/hammerhead/overlay_ev

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/1080p/media/bootanimation.zip:system/media/bootanimation.zip

#
# Evervolv product configuration.
#
PRODUCT_NAME    := ev_hammerhead
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := hammerhead
PRODUCT_MODEL   := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_CODENAME := Pugno
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus 5\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.0/LRX21O/1570415:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 5.0 LRX21O 1570415 release-keys"
