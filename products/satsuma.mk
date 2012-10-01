# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for satsuma
$(call inherit-product-if-exists, device/semc/satsuma/full_satsuma.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 320x480
$(call inherit-product, vendor/kxp/common_kxp.mk)

# satsuma overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/satsuma

# Setup device specific product configuration.
PRODUCT_NAME := aokp_satsuma
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := satsuma
PRODUCT_MODEL := Xperia Active
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST17i BUILD_FINGERPRINT="SEMC/ST17i_1254-2184/ST17i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="ST17i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy satsuma specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_320_480 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=Snapdragon S2 \
    ro.device.front_cam=NA \
    ro.device.gpu=Adreno 205 \
    ro.device.rear_cam=5 MP \
    ro.device.screen_res=320 x 480 Pixels
