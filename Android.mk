LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifneq ($(filter cooperve,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
