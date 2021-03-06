# Copyright 2014 The Android Open Source Project
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

include device/sony/shinano/BoardConfig.mk
include device/sony/shinano/BoardConfig2.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D6602,D6603,D6633,D6643,D6653,z3,leo

BOARD_HARDWARE_CLASS += device/sony/leo/cmhw

TARGET_BOOTLOADER_BOARD_NAME := D6603

#Reserve space for data encryption (12656259072-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688

#BOARD_KERNEL_CMDLINE += mem=1281M@255M mem=1409M@2048M

PRODUCT_VENDOR_KERNEL_HEADERS += device/sony/leo/kernel-headers


# Kernel Toolchain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.9-uber/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

# Rom Toolchain
TARGET_GCC_VERSION_EXP := 4.9-uber

# Optimizations
CLANG_O3 := true
STRICT_ALIASING := false
KRAIT_TUNINGS := true
GRAPHITE_OPTS := false
ENABLE_GCCONLY := true


TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
TARGET_TAP_TO_WAKE_STRING := true

