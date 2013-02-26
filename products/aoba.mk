
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/aoba/full_aoba.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 720x1280
$(call inherit-product, vendor/kxp/common_kxp.mk)

# hayabusa overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/aoba

# Setup device specific product configuration.
PRODUCT_NAME := aokp_aoba
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := aoba
PRODUCT_MODEL := Xperia ION
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT28h_1267-9107 BUILD_FINGERPRINT=SEMC/LT28h_1267-9107/LT28h:4.0.4/6.1.E.3.7/-PN-zw:user/release-keys PRIVATE_BUILD_DESC="LT28h-user 4.0.4 6.1.E.3.7 -PN-zw test-keys"


# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
