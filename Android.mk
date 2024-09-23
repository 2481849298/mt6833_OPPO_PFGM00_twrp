LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP5231)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif