# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for tapioca
$(call inherit-product-if-exists, device/sony/tapioca/full_tapioca.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 320x480
$(call inherit-product, vendor/kxp/common_kxp.mk)

# tapioca overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/tapioca

# Setup device specific product configuration.
PRODUCT_NAME := aokp_tapioca
PRODUCT_BRAND := sony
PRODUCT_DEVICE := tapioca
PRODUCT_MODEL := Xperia Tipo
PRODUCT_MANUFACTURER := sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST21i_1257-4009 BUILD_FINGERPRINT=SEMC/ST21i_1257-4009/ST21i:4.0.4/6.1.A.0.452/O_5_zw:user/release-keys PRIVATE_BUILD_DESC="ST21i-user 4.0.4 6.1.A.0.452 O_5_zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy tapioca specific prebuilt files
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
    ro.device.cpu=Snapdragon_S1_MSM7225AA \
    ro.device.front_cam=N.A. \
    ro.device.gpu=Adreno_200 \
    ro.device.rear_cam=3.2MP \
    ro.device.screen_res=320x480_Pixels
