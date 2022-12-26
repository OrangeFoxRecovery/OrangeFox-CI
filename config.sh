#!/bin/bash

# Device
export FOX_BRANCH="main"
export DT_LINK="https://github.com/Invernomut0/android_device_oneplus_guacamole_unified_ORANGEFOX.git -b main"

export DEVICE="guacamole"
export OEM="Oneplus"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="vendorbootimage"

export OUTPUT="OrangeFox*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    "https://github.com/whitehatpiratephreak/android_kernel_oneplus_sm8150.git oneplus/sm8150_s_12.1_op7pro"
)

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=whitehatpiratephreak"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
