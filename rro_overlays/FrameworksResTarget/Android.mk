LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_IS_RUNTIME_RESOURCE_OVERLAY := true
LOCAL_CERTIFICATE := platform
LOCAL_PACKAGE_NAME := FrameworksResTarget
LOCAL_SDK_VERSION := current

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/overlay

include $(BUILD_PACKAGE)
