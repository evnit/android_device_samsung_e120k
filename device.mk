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

# Get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/e120k/e120k-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
device/samsung/e120k/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
device/samsung/e120k/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
device/samsung/e120k/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
device/samsung/e120k/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
device/samsung/e120k/ramdisk/init.qcom.lpm_boot.sh:root/init.qcom.lpm_boot.sh \
device/samsung/e120k/ramdisk/init.qcom.sh:root/init.qcom.sh \
device/samsung/e120k/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# Inherit from celox-common
$(call inherit-product, device/samsung/celox-common/celox-common.mk)
