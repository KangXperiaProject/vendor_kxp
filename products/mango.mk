
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for smultron
$(call inherit-product-if-exists, device/semc/mango/full_mango.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# coconut overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/mango

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mango
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := mango
PRODUCT_MODEL := Xperia Mini Pro
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SK17i BUILD_FINGERPRINT="SEMC/SK17i_1249-7380/SK17i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="SK17i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

#Dalvik fix
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy coconut specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip
