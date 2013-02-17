# Copyright (C) 2010 The Android Open Source Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.

## Inherit products
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, device/samsung/bcm21553-common/common.mk)
$(call inherit-product, vendor/samsung/cooperve/vendor_blobs.mk)

## Inherit overlays
## $(call inherit-product, device/mdpi-common/mdpi.mk)
DEVICE_PACKAGE_OVERLAYS := device/samsung/cooperve/overlay

## MDPI assets
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

## Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/root/fsr.ko:root/fsr.ko \
    device/samsung/cooperve/prebuilt/root/fsr_stl.ko:root/fsr_stl.ko \
    device/samsung/cooperve/prebuilt/root/rfs_fat.ko:root/rfs_fat.ko \
    device/samsung/cooperve/prebuilt/root/rfs_glue.ko:root/rfs_glue.ko \
    device/samsung/cooperve/prebuilt/root/j4fs.ko:root/j4fs.ko \
    device/samsung/cooperve/prebuilt/root/sec_param.ko:root/sec_param.ko

## Ramdisk (need to take a look)
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/root/ueventd.gt-s5830i.rc:root/ueventd.gt-s5830i.rc \
    device/samsung/cooperve/prebuilt/root/init.gt-s5830i.rc:root/init.gt-s5830i.rc

## Other kernel modules not in ramdisk
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/cooperve/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
