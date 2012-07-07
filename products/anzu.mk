# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/semc/anzu/device_anzu.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Anzu overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/anzu

# Setup device specific product configuration.
PRODUCT_NAME := aokp_anzu
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := anzu
PRODUCT_MODEL := Xperia Arc
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=LT18i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT15i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Apollo

# Copy anzu specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip
