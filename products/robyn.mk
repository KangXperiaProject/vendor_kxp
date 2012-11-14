# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit device configuration for robyn
$(call inherit-product-if-exists, device/semc/robyn/device.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# robyn overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/robyn

# Setup device specific product configuration.
PRODUCT_NAME := aokp_robyn
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := robyn
PRODUCT_MODEL := E10i
PRODUCT_MANUFACTURER := Sony Ericsson

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E10 BUILD_FINGERPRINT="google/yakju/maguro:4.1.1/JRO03C/398337:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03C 398337 release-keys"

# Camera
PRODUCT_PACKAGES += \
    LegacyCamera \
    Mms \
    Music

# Copy robyn specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_240_320 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_240_320.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=armeabi-v6l \
	ro.device.gpu=Adreno_200 \
    ro.device.front_cam=no \
    ro.device.rear_cam=5MP \
    ro.device.screen_res=240x320_Pixels
