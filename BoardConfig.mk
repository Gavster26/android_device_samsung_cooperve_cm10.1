#
# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/samsung/bcm-21553-common/BoardConfigCommon.mk

## Kernel, bootloader
TARGET_BOOTLOADER_BOARD_NAME := cooperve

## Recovery
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_BML_RECOVERY := /dev/block/bml8
TARGET_BOOTLOADER_BOARD_NAME := cooperve
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
TARGET_RECOVERY_INITRC := device/samsung/cooperve/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/cooperve/recovery/recovery.fstab
