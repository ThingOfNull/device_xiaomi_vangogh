#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_vangogh.mk

# lineage-23.2 / Android 16: use bp4a release to match BUILD_ID (BP4A.251205.006).
# The source tree is at AOSP android-16.0.0_r4 (BP4A level). Using bp4a ensures all
# aconfig flags are enabled consistently with the codebase expectations.
# bp4a inherits bp3a inherits bp2a, so all previous flags remain active.
COMMON_LUNCH_CHOICES := \
    lineage_vangogh-bp4a-user \
    lineage_vangogh-bp4a-userdebug \
    lineage_vangogh-bp4a-eng
