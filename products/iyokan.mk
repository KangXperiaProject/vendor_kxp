# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for iyokan
$(call inherit-product-if-exists, device/semc/iyokan/full_iyokan.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 480x854
$(call inherit-product, vendor/kxp/common_kxp.mk)

# iyokan overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/iyokan

# Setup device specific product configuration.
PRODUCT_NAME := aokp_iyokan
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := iyokan
PRODUCT_MODEL := Xperia Pro
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MK16i BUILD_FINGERPRINT="SEMC/MK16i_1254-2184/MK16i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="MK16i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy iyokan specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=Snapdragon S2 \
    ro.device.front_cam=VGA \
    ro.device.gpu=Adreno 205 \
    ro.device.rear_cam=8 MP \
    ro.device.screen_res=480 x 854 Pixels
