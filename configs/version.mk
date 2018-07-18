# Copyright (C) 2016 The Pure Nexus Project
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
# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DARKINFUSION_BRANCH=O

# DARKINFUSION RELEASE VERSION
DARKINFUSION_VERSION_MAJOR = 6
DARKINFUSION_VERSION_MINOR = 1
DARKINFUSION_VERSION_MAINTENANCE =

VERSION := $(DARKINFUSION_VERSION_MAJOR).$(DARKINFUSION_VERSION_MINOR)$(DARKINFUSION_VERSION_MAINTENANCE)

ifndef DARKINFUSION_BUILDTYPE
    ifdef RELEASE_TYPE
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^DARKINFUSION_||g')
        DARKINFUSION_BUILDTYPE := $(RELEASE_TYPE)
    else
        DARKINFUSION_BUILDTYPE := UNOFFICIAL
    endif
endif

ifdef DARKINFUSION_BUILDTYPE
    ifeq ($(DARKINFUSION_BUILDTYPE), RELEASE)
       DARKINFUSION_VERSION := $(TARGET_PRODUCT)_$(DARKINFUSION_BRANCH)-$(VERSION)-RELEASE-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(DARKINFUSION_BUILDTYPE), NIGHTLY)
        DARKINFUSION_VERSION := $(TARGET_PRODUCT)_$(DARKINFUSION_BRANCH)-$(VERSION)-NIGHTLY-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(DARKINFUSION_BUILDTYPE), WEEKLY)
        DARKINFUSION_VERSION := $(TARGET_PRODUCT)_$(DARKINFUSION_BRANCH)-$(VERSION)-WEEKLY-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(DARKINFUSION_BUILDTYPE), EXPERIMENTAL)
        DARKINFUSION_VERSION := $(TARGET_PRODUCT)_$(DARKINFUSION_BRANCH)-$(VERSION)-EXPERIMENTAL-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(DARKINFUSION_BUILDTYPE), UNOFFICIAL)
        DARKINFUSION_VERSION := $(TARGET_PRODUCT)_$(DARKINFUSION_BRANCH)-$(VERSION)-UNOFFICIAL-$(shell date -u +%Y%m%d)
    endif
else
    # We reset back to UNOFFICIAL
    DARKINFUSION_VERSION := $(TARGET_PRODUCT)_$(DARKINFUSION_BRANCH)-$(VERSION)-UNOFFICIAL-$(shell date -u +%Y%m%d)
   endif
