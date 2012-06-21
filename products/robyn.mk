# Inherit device configuration
$(call inherit-product, device/semc/robyn/device_robyn.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call kxp vendor to get unofficial additions
$(call inherit-product, vendor/kxp/common_kxp.mk)

# robyn overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/kxp/overlay/robyn

# Setup device specific product configuration.
PRODUCT_NAME := aokp_robyn
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := robyn
PRODUCT_MODEL := E10i
PRODUCT_MANUFACTURER := Sony Ericsson

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_240_320.zip:system/media/bootanimation.zip
