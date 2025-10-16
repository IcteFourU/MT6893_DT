#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oplus/MT6893/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_MT6893
PRODUCT_DEVICE := MT6893
PRODUCT_BRAND := Oplus
PRODUCT_MODEL := MT6893
PRODUCT_MANUFACTURER := Oplus

# Build info
PRODUCT_BUILD_PROP_OVERRIDES := BuildDesc=$(call normalize-path-list, "sys_mssi_64_cn_armv82-user-13-TP1A.220905.001-1677828988354-release-keys")
PRODUCT_GMS_CLIENTID_BASE := android-oplus

TARGET_DISABLE_EPPE := true


# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 50
AXION_CAMERA_FRONT_INFO := 32

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := IcteFourU

# Processor name (underscores become spaces)
AXION_PROCESSOR := Mediatek_Dimensity_1200

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := true

PERF_ANIM_OVERRIDE := true

TARGET_INCLUDE_ACCORD := false

TARGET_HAS_UDFPS := true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.perf.scroll_opt=true \
    persist.sys.perf.scroll_opt.heavy_app=2
