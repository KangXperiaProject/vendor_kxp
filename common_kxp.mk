#we will use our own bootlogo (when it is created)
#PRODUCT_COPY_FILES += \
#   vendor/kxp/prebuilt/bootlogo/$(PRODUCT_DEVICE).rle:root/initlogo.rle

#Use a free file manager untill AOKP adds an official filemanager
PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/FileManager.apk:system/app/FileManager.apk
