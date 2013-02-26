
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/odin/full_odin.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 1080x1980
$(call inherit-product, vendor/kxp/common_kxp.mk)

# hayabusa overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/odin

# Setup device specific product configuration.
PRODUCT_NAME := aokp_odin
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := odin
PRODUCT_MODEL := Xperia ZL
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503_1270-4066 BUILD_FINGERPRINT=Sony/C6503_1270-4066/C6503:4.1.2/10.1.A.0.350/ofp_rw:userdebug/release-keys PRIVATE_BUILD_DESC="C6503-userdebug 4.1.2 10.1.A.1.350 ofp_rw test-keys"


# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1980.zip:system/media/bootanimation-alt.zip
