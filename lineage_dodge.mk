#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dodge device
$(call inherit-product, device/oneplus/dodge/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Addons
TARGET_DISABLE_EPPE := true
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_BCR := true

# Gms 
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := false

# Lawnchair Prebuilt
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

RISING_MAINTAINER=OscarM1019
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := lineage_dodge
PRODUCT_DEVICE := dodge
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2653

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 15 AP3A.240617.008 1759672914946 release-keys" \
    BuildFingerprint=OnePlus/CPH2653EEA/OP5D55L1:15/AP3A.240617.008/V.R4T3.1accb8e_566b33_566b34:user/release-keys \
    DeviceName=OP5D55L1 \
    DeviceProduct=CPH2653 \
    SystemDevice=OP5D55L1 \
    SystemName=CPH2653 \
    RisingChipset="Snapdragon® 8 Elite" \
    RisingMaintainer="OscarM1019"
