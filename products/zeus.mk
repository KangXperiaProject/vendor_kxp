# Inherit AOSP device configuration for zeus
$(call inherit-product, device/semc/zeus/device_zeus.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Zeus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/zeus

# Setup device specific product configuration.
PRODUCT_NAME := aokp_zeus
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := zeus
PRODUCT_MODEL := Xperia Play
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=R800i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Apollo

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
