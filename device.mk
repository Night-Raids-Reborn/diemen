#
# Copyright (C) 2021-2022 frstprjkt.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit QTI Bluetooth
$(call inherit-product, vendor/qcom/opensource/commonsys-intf/bluetooth/bt-system-opensource-product.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# ANT+
PRODUCT_PACKAGES += \
    AntHalService-Soong \
    com.dsi.ant.antradio_library \
    com.dsi.ant@1.0

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    vendor.qti.hardware.audiohalext@1.0 \
    vendor.qti.hardware.audiohalext-utils

PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_PACKAGES += \
    tinymix \
    libaudio-resampler

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl \
    audio.bluetooth.default \
    BluetoothQti \
    libbluetooth_qti \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor

# Codec2
PRODUCT_PACKAGES += \
    com.android.media.swcodec \
    libsfplugin_ccodec

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_telephony.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/media_codecs_google_c2_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/media_codecs_google_c2_video.xml

# Dex
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := verify

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData \
    libqdMetaData.system

# Dynamic partitions setup
BOARD_BUILD_PRODUCT_IMAGE := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# File systems table
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_RAMDISK)/fstab.default

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.juice

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.0 \
    vendor.qti.hardware.perf@2.1 \
    vendor.qti.hardware.perf@2.2

# Overlays
PRODUCT_PACKAGES += \
   CarrierConfigOverlayJuice \
   DialerOverlayJuice \
   FrameworksResOverlayJuice \
   NotchBarKillerJuice

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti

# QTI
TARGET_COMMON_QTI_COMPONENTS := \
    bt \
    usb

# Sensors
PRODUCT_PACKAGES += \
    libsensorndkbridge \
    android.hardware.sensors@2.0-service.multihal

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/qcom/opensource/commonsys/packages/apps/Bluetooth \
    vendor/qcom/opensource/commonsys/system/bt/conf

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Vendor Overlay
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor-overlay/,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION))

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# Vulkan
PRODUCT_PACKAGES += \
    libvulkan

include vendor/xiaomi/juice/juice-vendor.mk
