#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := Amlogic
PRODUCT_DEVICE := ohm
PRODUCT_GMS_CLIENTID_BASE := android-droid-tv
PRODUCT_MANUFACTURER := Amlogic
PRODUCT_MODEL := ohm
PRODUCT_NAME := lineage_ohm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ohm_gtv \
    PRIVATE_BUILD_DESC="ohm_gtv-userdebug 12 SC eng.bin.ya.20230223.173800 test-keys"

BUILD_FINGERPRINT := Amlogic/ohm_gtv/ohm:12/SC/bin.yang02231735:userdebug/test-keys
