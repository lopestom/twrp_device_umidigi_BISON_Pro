LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), BISON_Pro)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
