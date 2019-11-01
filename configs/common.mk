#
# Copyright (C) 2020 Lucid Project
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

# Include support for additional filesystems
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Lucid Packages
PRODUCT_PACKAGES += \
    LucidLauncher \
    ThemePicker \
    LucidThemesStub

# Offline charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Common overlays
DEVICE_PACKAGE_OVERLAYS += vendor/lucid/overlay

# World APN list
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Branding stuffs
LUCID_VERSION := 1.0
LUCID_VERSION_CODE := Queen-Cake
LUCID_BUILD_NUMBER := LPBN.Q0202.$(shell date -u +%d).$(shell date -u +%m)001

ifndef LUCID_BUILDTYPE
  LUCID_BUILDTYPE := unofficial
endif

LUCID_TARGET_ZIP := lucid-$(LUCID_BUILD)-Q-$(LUCID_VERSION)-$(shell date -u +%Y%m%d)-$(LUCID_BUILDTYPE).zip

# Props
include vendor/lucid/configs/props.mk
