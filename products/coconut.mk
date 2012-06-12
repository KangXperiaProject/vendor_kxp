# Inherit AOSP device configuration for smultron
$(call inherit-product, device/semc/coconut/device_coconut.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# coconut overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/coconut

# Setup device specific product configuration.
PRODUCT_NAME := aokp_coconut
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := coconut
PRODUCT_MODEL := Live with Walkman
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST15i BUILD_FINGERPRINT="SEMC/WT19i_1254-7338/WT19i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="WT19i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"


# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy coconut specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip
