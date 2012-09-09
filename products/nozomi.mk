
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/nozomi/full_nozomi.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# Nozomi overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/nozomi

# Setup device specific product configuration.
PRODUCT_NAME := aokp_nozomi
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := nozomi
PRODUCT_MODEL := Xperia S
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i_1257-4009 BUILD_FINGERPRINT=SEMC/LT26i_1257-4009/LT26i:4.0.4/6.1.A.0.452/O_5_zw:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 4.0.4 6.1.A.0.452 O_5_zw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_720_1280 \
    ThinkFree  
