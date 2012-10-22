# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/lotus/full_lotus.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 320x480
$(call inherit-product, vendor/kxp/common_kxp.mk)

# lotus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/lotus

# Setup device specific product configuration.
PRODUCT_NAME := aokp_lotus
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := lotus
PRODUCT_MODEL := Xperia Go
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST27i_1262-1120 BUILD_FINGERPRINT=SEMC/ST27i_1262-1120/ST27i:4.0.4/6.1.1.B.1.10/9bt3zw:user/release-keys PRIVATE_BUILD_DESC="ST27i-user 4.0.4 6.1.1.B.1.10 9bt3zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_320_480 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=St-Ericsson_Nova-Thor_U8500 \
    ro.device.front_cam=1.3MP \
    ro.device.gpu=Mali_400 \
    ro.device.rear_cam=8MP \
    ro.device.screen_res=320x480_Pixels
