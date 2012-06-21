#we will use our own bootlogo (when it is created)
#PRODUCT_COPY_FILES += \
#   vendor/kxp/prebuilt/bootlogo/$(PRODUCT_DEVICE).rle:root/initlogo.rle

#Use a free file manager and android terminal untill AOKP adds alternative opensource packages
PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/FileManager.apk:system/app/FileManager.apk \
    vendor/kxp/prebuilt/app/AndroidTerm.apk:system/app/AndroidTerm.apk \
    vendor/kxp/prebuilt/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Unofficial packages that KangXperiaProject uses from trees outside AOKP
PRODUCT_PACKAGES += \
    Apollo \
    Spearmint \
    Grape \
    Bubble \
    Cherry \
    DSPManager \
    Trebuchet
