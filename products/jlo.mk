# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for jlo
$(call inherit-product-if-exists, device/sony/jlo/full_jlo.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 480x854
$(call inherit-product, vendor/kxp/common_kxp.mk)

# jlo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/jlo

# Setup device specific product configuration.
PRODUCT_NAME := aokp_jlo
PRODUCT_BRAND := sony
PRODUCT_DEVICE := jlo
PRODUCT_MODEL := Xperia J
PRODUCT_MANUFACTURER := sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST26i_1257-4009 BUILD_FINGERPRINT=SEMC/ST26i_1257-4009/ST26i:4.0.4/6.1.A.0.452/O_5_zw:user/release-keys PRIVATE_BUILD_DESC="ST26i-user 4.0.4 6.1.A.0.452 O_5_zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy jlo specific prebuilt files
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
    ro.device.cpu=Snapdragon_S1_MSM8227A \
    ro.device.front_cam=VGA \
    ro.device.gpu=Adreno_200 \
    ro.device.rear_cam=5MP \
    ro.device.screen_res=480x854_Pixels
