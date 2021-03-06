# Inherit AOSP device configuration for hayabusa
$(call inherit-product-if-exists, device/sony/hayabusa/full_hayabusa.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 720x1280
$(call inherit-product, vendor/kxp/common_kxp.mk)

# hayabusa overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/hayabusa

# Setup device specific product configuration.
PRODUCT_NAME := aokp_hayabusa
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := hayabusa
PRODUCT_MODEL := Xperia TX
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT29i_1266-7707 BUILD_FINGERPRINT=Sony//LT29i_1266-7707/LT29i:4.0.4/7.0.A.1.303/0Pr_xw:user/release-keys PRIVATE_BUILD_DESC="LT29i-user 4.0.4 7.0.A.1.303 0Pr_xw test-keys"

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
