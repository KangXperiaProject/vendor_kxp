
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/hikari/full_hikari.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# hikari overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/hikari

# Setup device specific product configuration.
PRODUCT_NAME := aokp_hikari
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := hikari
PRODUCT_MODEL := Xperia Acro S
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26w_1266-3189 BUILD_FINGERPRINT=SEMC/LT26w_1266-3189/LT26w:4.0.4/6.1.A.1.58/xft_zw:user/release-keys PRIVATE_BUILD_DESC="LT26w-user 4.0.4 6.1.A.1.58 xft_zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_720_1280 \
    ThinkFree  
