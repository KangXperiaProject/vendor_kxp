# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for urushi
$(call inherit-product-if-exists, device/semc/urushi/full_urushi.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# urushi overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/urushi

# Setup device specific product configuration.
PRODUCT_NAME := aokp_urushi
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := urushi
PRODUCT_MODEL := Xperia Ray
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT11i BUILD_FINGERPRINT="SEMC/MT11i_1254-2184/MT11i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="MT11i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy urushi specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_480_854 \
    ThinkFree  
