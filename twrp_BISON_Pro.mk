#
# Copyright (C) 2020 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := BISON Pro

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from star device
$(call inherit-product, device/umidigi/BISON_Pro/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := BISON_Pro
PRODUCT_NAME := twrp_BISON_Pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := BISON Pro
PRODUCT_MANUFACTURER := HXY

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=BISON_Pro \
    PRODUCT_NAME=BISON_Pro \
    PRIVATE_BUILD_DESC="full_g2069dpd_v2_gd_ym_bisonpro_n_r-user 11 RP1A.200720.011 2105241743 release-keys"

BUILD_FINGERPRINT := UMIDIGI/BISON_Pro/BISON_Pro:11/RP1A.200720.011/2105241743:user/release-keys

# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000
