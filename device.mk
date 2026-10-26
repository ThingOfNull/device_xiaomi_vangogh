#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Fingerprint
TARGET_HAS_UDFPS := true

# Inherit from sm7250-common
$(call inherit-product, device/xiaomi/sm7250-common/lito.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# VINTF: skip kernel config requirements check during build
# vangogh kernel 4.19 is missing a few FCM 6 configs
# (CRYPTO_CHACHA20POLY1305, SONY_FF, TRACE_GPU_MEM, XFRM_MIGRATE,
#  and ANDROID_PARANOID_NETWORK should be n instead of y).
# TODO: fix these in kernel defconfig and re-enable
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/vangogh/vangogh-vendor.mk)
