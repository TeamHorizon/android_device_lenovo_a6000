# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl.a6000 \
    camera.device@1.0-impl.a6000 \
    libshim_atomic \
    Snap

# Build libstlport for vendor blobs
#PRODUCT_PACKAGES += \
#    libstlport

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Prebuilt Cam blobs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/camera.msm8916.so:system/lib/hw/camera.msm8916.so \
    $(LOCAL_PATH)/camera/libcamera2ndk.so:system/lib/libcamera2ndk.so \
    $(LOCAL_PATH)/camera/libcamera_client.so:system/lib/libcamera_client.so \
    $(LOCAL_PATH)/camera/libcamera_metadata.so:system/lib/libcamera_metadata.so \
    $(LOCAL_PATH)/camera/libcameraservice.so:system/lib/libcameraservice.so \
    $(LOCAL_PATH)/camera/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    $(LOCAL_PATH)/camera/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    $(LOCAL_PATH)/camera/libqomx_core.so:system/lib/libqomx_core.so \
    $(LOCAL_PATH)/camera/libmm-qcamera.so:system/lib/libmm-qcamera.so

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.cpp.duplication=false \
    persist.camera.hal.debug.mask=0 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true
