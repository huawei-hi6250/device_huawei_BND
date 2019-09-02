# Copyright (C) 2014 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/huawei/BND/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_BND
PRODUCT_DEVICE := BND
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor 7X

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := $(DEVICE_PATH)/overlay

# Include vendor makefiles
$(call inherit-product-if-exists, $(DEVICE_VENDOR_PATH)/BND-vendor.mk)
