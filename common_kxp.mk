#we will change the $USER variable here to make our builds have better naming :)
USER := kxp_build2

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=kxp \
    ro.goo.rom=kxp \
    ro.goo.version=2201

#Ota Updater Pro app
PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=kxp \
    otaupdater.otaver=build2 \
    otaupdater.otatime=20120917-0000 \
    otaupdater.noflash=1 \
    otaudpater.rebootcmd=$$NULL$$

PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/OTAUpdater-1.0.2.apk:system/app/OTAUpdater-1.0.2.apk

#we will use our own bootlogo (when it is created)
#PRODUCT_COPY_FILES += \
#   vendor/kxp/prebuilt/bootlogo/$(PRODUCT_DEVICE).rle:root/initlogo.rle

#Use a free file manager and terminal untill AOKP adds an official filemanager
PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/AndroidTerminalEmulator.apk:system/app/AndroidTerminalEmulator.apk \
    vendor/kxp/prebuilt/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so \
    vendor/kxp/prebuilt/app/FileManager.apk:system/app/FileManager.apk



# Unofficial packages that KangXperiaProject uses from trees outside AOKP
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    Trebuchet 
#    Spearmint \
#    Grape \
#    Bubble \
#    Cherry \
#    Orange \
#    AchepClock
