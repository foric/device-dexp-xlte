#
# Copyright (C) 2014 The Android Open-Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Recovery
PRODUCT_PACKAGES += \
    minivold \
e2fsck

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img 


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fstab.qcom:root/fstab.qcom \
$(LOCAL_PATH)/recovery/init.class_main.sh:root/init.class_main.sh \
$(LOCAL_PATH)/recovery/init.mdm.sh:root/init.mdm.sh \
$(LOCAL_PATH)/recovery/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
$(LOCAL_PATH)/recovery/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
$(LOCAL_PATH)/recovery/init.qcom.factory.sh:root/init.qcom.factory.sh \
$(LOCAL_PATH)/recovery/init.qcom.sh:root/init.qcom.sh \
$(LOCAL_PATH)/recovery/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
$(LOCAL_PATH)/recovery/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
$(LOCAL_PATH)/recovery/init.qcom.usb.sh:root/init.qcom.usb.sh \
$(LOCAL_PATH)/recovery/ueventd.qcom.rc:root/ueventd.qcom.rc

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/init:root/init 

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
