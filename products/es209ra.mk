# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for es209ra
$(call inherit-product-if-exists, device/semc/es209ra/full_es209ra.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 480x854
$(call inherit-product, vendor/kxp/common_kxp.mk)

# es209ra overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/es209ra

# Setup device specific product configuration.
PRODUCT_NAME := aokp_es209ra
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := es209ra
PRODUCT_MODEL := Xperia X10
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT18i BUILD_FINGERPRINT="SEMC/LT18i_1254-2184/LT18i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy es209ra specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=QSD_8250 \
    ro.device.front_cam=NA \
    ro.device.gpu=Adreno_200 \
    ro.device.rear_cam=8MP \
    ro.device.screen_res=480x854_Pixels
