$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# If you're using 4.2/Jelly Bean, use full_base.mk instead of full.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Inherit the Vendor Blobs
$(call inherit-product-if-exists, vendor/samsung/cooperve/cooperve-vendor.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES := ldpi mdpi

DEVICE_PACKAGE_OVERLAYS := device/samsung/cooperve/overlay

PRODUCT_PACKAGES += \
    libOmxCore \
    make_ext4fs \
    FM \
    rzscontrol \
    SamsungServiceMode \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    screencap

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/cooperve/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Keychars
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/samsung/cooperve/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/samsung/cooperve/prebuilt/keychars/sec_key.kcm.bin:system/usr/keychars/sec_key.kcm.bin

# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/cooperve/prebuilt/keylayout/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
    device/samsung/cooperve/prebuilt/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/cooperve/prebuilt/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/cooperve/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/cooperve/prebuilt/keylayout/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl 

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml 

## Kernel Modules
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/brcm_headsetsw.ko:system/lib/modules/brcm_headsetsw.ko \
    device/samsung/cooperve/prebuilt/brcm_switch.ko:system/lib/modules/brcm_switch.ko \
    device/samsung/cooperve/prebuilt/dhd.ko:system/lib/modules/dhd.ko \
    device/samsung/cooperve/prebuilt/gememalloc.ko:system/lib/modules/gememalloc.ko \
    device/samsung/cooperve/prebuilt/hx170dec.ko:system/lib/modules/hx170dec.ko \
    device/samsung/cooperve/prebuilt/h6270enc.ko:system/lib/modules/h6270enc.ko

## GPS
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/glconfig.xml:system/etc/gps/glconfig.xml \
    device/samsung/cooperve/prebuilt/glconfig2075.xml:system/etc/gps/glconfig2075.xml \
    device/samsung/cooperve/prebuilt/glconfig4751.xml:system/etc/gps/glconfig4751.xml \
    device/samsung/cooperve/prebuilt/gps.conf:system/etc/gps.conf 

## Media
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/asound.conf:system/etc/asound.conf \
    device/samsung/cooperve/prebuilt/audio.conf:system/etc/bluetooth/audio.conf \
    device/samsung/cooperve/prebuilt/vold.fstab:system/etc/vold.fstab 

## Wifi mac adress fix
PRODUCT_COPY_FILES += \
    device/samsung/cooperve/prebuilt/get_macaddrs:system/bin/get_macaddrs

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_NAME := full_cooperve
PRODUCT_DEVICE := cooperve
PRODUCT_MODEL := GT-S5360
