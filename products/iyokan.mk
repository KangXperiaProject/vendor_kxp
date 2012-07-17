
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for iyokan
$(call inherit-product-if-exists, device/semc/iyokan/full_iyokan.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# urushi overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/urushi

# Setup device specific product configuration.
PRODUCT_NAME := aokp_iyokan
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := iyokan
PRODUCT_MODEL := Xperia Pro
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MK16i BUILD_FINGERPRINT="SEMC/MK16i_1251-0386/MK16i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys ro.build.description=MK16i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip
