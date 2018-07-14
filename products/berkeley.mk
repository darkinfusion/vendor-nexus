# Copyright (C) 2017 The ABC rom
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

# Include pure telephony configuration
include vendor/nexus/configs/darkinfusion_phone.mk

# Inherit AOSP device configuration for angler
$(call inherit-product, device/huawei/berkeley/aosp_berkeley.mk)

# Override AOSP build properties
PRODUCT_NAME := berkeley
PRODUCT_DEVICE := berkeley
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor View 10
