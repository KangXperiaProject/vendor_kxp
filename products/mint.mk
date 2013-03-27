# Inherit AOSP device configuration for mint
$(call inherit-product-if-exists, device/sony/mint/full_mint.mk)


# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 720x1280
$(call inherit-product, vendor/kxp/common_kxp.mk)

# mint overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/mint

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mint
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := mint
PRODUCT_MODEL := Xperia T
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT30p_1268-8479 BUILD_FINGERPRINT=Sony/LT30p_1268-8479/LT30p:4.1.2/9.1.A.0.489/Fv5_tw:user/release-keys PRIVATE_BUILD_DESC="LT30p-user 4.1.2 9.1.A.0.489 Fv5_tw test-keys"

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true


# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
