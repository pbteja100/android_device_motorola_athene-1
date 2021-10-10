# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Jelly
# TARGET_USE_JELLY := true

# Required packages
# PRODUCT_PACKAGES += Jelly

# Required packages
PRODUCT_PACKAGES += Calendar

# Local Terminal
PRODUCT_PACKAGES += Terminal

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit from athene device
$(call inherit-product, device/motorola/athene/device.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := aosip_athene
PRODUCT_RELEASE_NAME := athene
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola

BOARD_VENDOR := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="coral-user 11 RQ3A.210905.001 7511028 release-keys" \

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.210905.001/7511028:user/release-keys
VENDOR_BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.210905.001/7511028:user/release-keys
