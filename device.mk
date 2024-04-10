#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_AMLOGIC_SOC := s4

## Bluetooth
PRODUCT_PACKAGES += \
    OhmBluetoothOverlay

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/ne-common/ne.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/amlogic/ohm/ohm-vendor.mk)
