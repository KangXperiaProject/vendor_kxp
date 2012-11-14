# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit device configuration for mimmi
$(call inherit-product-if-exists, device/semc/mimmi/device_mimmi.mk)

# Call KXP vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# mimmi overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/mimmi

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mimmi
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := mimmi
PRODUCT_MODEL := U20i
PRODUCT_MANUFACTURER := Sony Ericsson

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=U20 BUILD_FINGERPRINT="google/yakju/maguro:4.1.1/JRO03C/398337:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03C 398337 release-keys"

# Camera
PRODUCT_PACKAGES += \
    LegacyCamera \
    Mms \
    Music

# Copy mimmi specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_240_320 \ 

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_240_320.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=armeabi-v6l \
	ro.device.gpu=Adreno_200 \
    ro.device.front_cam=no \
    ro.device.rear_cam=5MP \
    ro.device.screen_res=240x320_Pixels
