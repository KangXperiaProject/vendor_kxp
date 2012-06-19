# Inherit device configuration
$(call inherit-product, device/semc/robyn/device_mimmi.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call kxp vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# mimmi overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/mimmi

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mimmi
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := mimmi
PRODUCT_MODEL := U20i
PRODUCT_MANUFACTURER := Sony Ericsson

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_240_320.zip:system/media/bootanimation.zip
