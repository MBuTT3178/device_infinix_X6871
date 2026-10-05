#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Infinix-X6871 device
$(call inherit-product, device/infinix/Infinix-X6871/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := Infinix-X6871
PRODUCT_NAME := lineage_Infinix-X6871
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6871
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_64_armv82_infinix-user 15 AP3A.240905.015.A2 979290 release-keys" \
    BuildFingerprint=Infinix/X6871-OP/Infinix-X6871:17/CP2A.260605.016/eng.androi:userdebug/release-keys
