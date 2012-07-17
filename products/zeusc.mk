
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for zeus
$(call inherit-product-if-exists, device/semc/zeusc/full_zeusc.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# Zeus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/zeus

# Setup device specific product configuration.
PRODUCT_NAME := aokp_zeusc
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := zeusc
PRODUCT_MODEL := Xperia Play CDMA
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=R800i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip
