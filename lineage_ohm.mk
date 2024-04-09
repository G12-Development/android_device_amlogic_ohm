#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Not set in time to check, so set before everything else
PRODUCT_IS_ATV := true

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

PRODUCT_SYSTEM_NAME := ohm_gtv
PRODUCT_SYSTEM_DEVICE := ohm_gtv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ohm_gtv-userdebug 12 SC eng.bin.ya.20230223.173800 test-keys" \
    TARGET_DEVICE=$(PRODUCT_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Amlogic/ohm_gtv/ohm:12/SC/bin.yang02231735:userdebug/test-keys
