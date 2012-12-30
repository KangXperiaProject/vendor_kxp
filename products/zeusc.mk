# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for zeus
$(call inherit-product-if-exists, device/semc/zeusc/full_zeusc.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 480x854
$(call inherit-product, vendor/kxp/common_kxp.mk)

# Zeus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/zeus

# Setup device specific product configuration.
PRODUCT_NAME := aokp_zeusc
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := zeusc
PRODUCT_MODEL := Xperia Play CDMA
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=R800i BUILD_FINGERPRINT="SEMC/R800i_0000-0000/R800i:4.0.3/4.1.H.0.4/-z9-3w:user/release-keys" PRIVATE_BUILD_DESC="R800i-user 4.0.3 4.1.H.0.4 -z9-3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

#TWRP
#KXP_INCLUDE_TWRP := true
TWRP_RAMDISK_DEVICE := anzu

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=Snapdragon_S2 \
    ro.device.front_cam=VGA \
    ro.device.gpu=Adreno_205 \
    ro.device.rear_cam=5MP \
    ro.device.screen_res=480x854_Pixels
