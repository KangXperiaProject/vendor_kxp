# Inherit device configuration
$(call inherit-product, device/semc/shakira/device_shakira.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# es209ra overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/es209ra

# Setup device specific product configuration.
PRODUCT_NAME := aokp_shakira
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := shakira
PRODUCT_MODEL := Xperia X8
PRODUCT_MANUFACTURER := SEMC

#Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E15i BUILD_ID=4.1.A.0.562 BUILD_DISPLAY_ID=ITL41F BUILD_FINGERPRINT="SEMC/LT18i_1255-1753/LT18i:4.0.3/4.1.A.0.572/zf1_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.A.0.562 zf1_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip
