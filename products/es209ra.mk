# Inherit AOSP device configuration for es209ra
$(call inherit-product, device/semc/es209ra/device_es209ra.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# es209ra overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/es209ra

# Setup device specific product configuration.
PRODUCT_NAME := aokp_es209ra
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := es209ra
PRODUCT_MODEL := Xperia X10i
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=LT18i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT15i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

#Fix signal strength
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril.v3=signalstrength
