#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X6871 device
$(call inherit-product, device/infinix/X6871/device.mk)

# Inherit common Infinity stuff
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_DEVICE := X6871
PRODUCT_NAME := infinity_X6871
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6871
PRODUCT_MANUFACTURER := infinix

# Infinity-X Maintainer
INFINITY_MAINTAINER := MBuTT3178

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_64_armv82_infinix-user 15 AP3A.240905.015.A2 979290 release-keys" \
    BuildFingerprint=Infinix/X6871-OP/Infinix-X6871:15/AP3A.240905.015.A2/145015:user/release-keys
