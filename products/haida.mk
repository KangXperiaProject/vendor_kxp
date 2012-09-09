
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/semc/haida/full_haida.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# Anzu overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/anzu

# Setup device specific product configuration.
PRODUCT_NAME := aokp_haida
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := haida
PRODUCT_MODEL := Xperia Neo V
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT11i BUILD_FINGERPRINT="SEMC/MT11i_1254-2184/MT11ii:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="MT11ii-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree  
