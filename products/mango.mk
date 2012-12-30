# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for mango
$(call inherit-product-if-exists, device/semc/mango/full_mango.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 320x480
$(call inherit-product, vendor/kxp/common_kxp.mk)

# mango overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/mango

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mango
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := mango
PRODUCT_MODEL := Xperia Mini Pro
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SK17i BUILD_FINGERPRINT="SEMC/SK17i_1254-2184/SK17i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="SK17i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy mango specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_320_480 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip

#TWRP
#KXP_INCLUDE_TWRP := true
TWRP_RAMDISK_DEVICE := smultron

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=Snapdragon_S2 \
    ro.device.front_cam=NA \
    ro.device.gpu=Adreno_205 \
    ro.device.rear_cam=5MP \
    ro.device.screen_res=320x480_Pixels
