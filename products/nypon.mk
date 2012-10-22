# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/nypon/full_nypon.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 540x960
$(call inherit-product, vendor/kxp/common_kxp.mk)

# nypon overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/nypon

# Setup device specific product configuration.
PRODUCT_NAME := aokp_nypon
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := nypon
PRODUCT_MODEL := Xperia P
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST22i_1257-4009 BUILD_FINGERPRINT=SEMC/ST22i_1257-4009/ST22i:4.0.4/6.1.A.0.452/O_5_zw:user/release-keys PRIVATE_BUILD_DESC="ST22i-user 4.0.4 6.1.A.0.452 O_5_zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_540_960 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=St-Ericsson_Nova-Thor_U8500 \
    ro.device.front_cam=1.3MP \
    ro.device.gpu=Mali_400 \
    ro.device.rear_cam=8MP \
    ro.device.screen_res=540x960_Pixels
