# Copyright (C) 2011 The Android Open Source Project
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
#
#
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
#

# Screen resoultion in Pixels.
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Torch
PRODUCT_PACKAGES := \
    Torch

# Inherit from those products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Sony resources
$(call inherit-product, device/sony/common/resources.mk)

# Inherit from huashan device makefile
$(call inherit-product, device/sony/huashan/huashan.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := merk_huashan
PRODUCT_DEVICE := huashan
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := C5303

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/merk/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/merk/config/common.mk)

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5303 BUILD_FINGERPRINT=Sony/C5303/C5303:4.3/12.1.A.0.266/9f5_nw:user/release-keys 
PRIVATE_BUILD_DESC="C5303-user 4.3 JB-MR2-VISKAN-CAF-140119-1358 30 test-keys"
