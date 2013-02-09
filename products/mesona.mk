# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for mesona
$(call inherit-product-if-exists, device/sony/mesona/full_mesona.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 320x480
$(call inherit-product, vendor/kxp/common_kxp.mk)

# mesona overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/mesona

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mesona
PRODUCT_BRAND := sony
PRODUCT_DEVICE := mesona
PRODUCT_MODEL := Xperia Miro
PRODUCT_MANUFACTURER := sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST23i_1257-4009 BUILD_FINGERPRINT=SEMC/ST23i_1257-4009/ST23i:4.0.4/6.1.A.0.452/O_5_zw:user/release-keys PRIVATE_BUILD_DESC="ST23i-user 4.0.4 6.1.A.0.452 O_5_zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy mesona specific prebuilt files
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
    ro.device.cpu=Snapdragon_S1_MSM7225A \
    ro.device.front_cam=VGA \
    ro.device.gpu=Adreno_200 \
    ro.device.rear_cam=5MP \
    ro.device.screen_res=320x480_Pixels
