# Inherit AOSP device configuration for satsuma
$(call inherit-product, device/semc/satsuma/device_satsuma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# satsuma overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/satsuma

# Setup device specific product configuration.
PRODUCT_NAME := aokp_satsuma
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := satsuma
PRODUCT_MODEL := Xperia Active
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST17i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip
