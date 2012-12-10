
# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/tsubasa/full_tsubasa.mk)

# Call KXP vendor to get unofficial additions
BOOTLOGO_SIZE := 720x1280
$(call inherit-product, vendor/kxp/common_kxp.mk)

# hayabusa overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/tsubasa

# Setup device specific product configuration.
PRODUCT_NAME := aokp_tsubasa
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := tsubasa
PRODUCT_MODEL := Xperia V
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT29i_1266-7707 BUILD_FINGERPRINT=Sony//LT29i_1266-7707/LT29i:4.0.4/7.0.A.1.303/0Pr_xw:user/release-keys PRIVATE_BUILD_DESC="LT29i-user 4.0.4 7.0.A.1.303 0Pr_xw test-keys"


# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    bootanimation_720_1280 \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

# Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.cpu=Snapdragon_S4_Krait \
    ro.device.front_cam=VGA \
    ro.device.gpu=Adreno_225 \
    ro.device.rear_cam=13MP \
    ro.device.screen_res=720x1280_Pixels
