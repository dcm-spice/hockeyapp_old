LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_FILENAME := libhockeyapp
LOCAL_MODULE := hockeyapp_static
LOCAL_SRC_FILES := jni/HockeyApp.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../breakpad/src/common/android/include \
					$(LOCAL_PATH)/../breakpad/src \
					$(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)

$(call import-module,breakpad/android/google_breakpad)
