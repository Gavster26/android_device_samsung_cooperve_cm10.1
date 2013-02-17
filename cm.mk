## Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

## Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

## Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

## Inherit device configuration
$(call inherit-product, device/samsung/cooperve/full_cooperve.mk)

## Include FM-Radio stuff
##$(call inherit-product, vendor/cm/products/bcm_fm_radio.mk)

## Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyCooperve
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S5830i

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_cooperve
PRODUCT_DEVICE := cooperve

## Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320
