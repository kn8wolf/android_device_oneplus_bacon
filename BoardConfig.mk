#
# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from MSM8974 common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

# Compiler flags
TARGET_GCC_VERSION_EXP := 4.9-cortex-a15
TARGET_USE_PIPE := true
USE_O3_OPTIMIZATIONS := true
SUPPRES_UNUSED_WARNING := true
KRAIT_TUNINGS := true
ENABLE_GCCONLY := true
GRAPHITE_OPTS := true
STRICT_ALIASING := true
TARGET_USE_O_LEVEL_3 := true

# Kernel
TARGET_KERNEL_CONFIG := ak_bacon_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=bacon user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-5.2-cortex-a15/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
BOARD_CUSTOM_BOOTIMG_MK := device/oneplus/bacon/mkbootimg.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oneplus/bacon/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13271448576
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59914792960
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G

# Recovery
TARGET_RECOVERY_FSTAB := device/oneplus/bacon/rootdir/etc/fstab.bacon

TARGET_OTA_ASSERT_DEVICE := bacon,A0001

TARGET_INIT_VENDOR_LIB := libinit_bacon

TARGET_WCNSS_MAC_PREFIX := e8bba8

# Workaround for factory issue
BOARD_VOLD_CRYPTFS_MIGRATE := true

BOARD_NFC_CHIPSET := pn547

AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true

# inherit from the proprietary version
-include vendor/oneplus/bacon/BoardConfigVendor.mk
