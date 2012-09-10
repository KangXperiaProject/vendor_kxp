# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/semc/anzu/full_anzu.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# Anzu overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/anzu

# Setup device specific product configuration.
PRODUCT_NAME := aokp_anzu
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := anzu
PRODUCT_MODEL := Xperia Arc
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT18i BUILD_FINGERPRINT="SEMC/LT18i_1254-2184/LT18i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree  
