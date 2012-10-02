#we will change the $USER variable here to make our builds have better naming :)
USER := kxp_build4

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=kxp \
    ro.goo.rom=kxp \
    ro.goo.version=4110400
#goo version is like this -> 411 for jellybean 4.1.1, 02 for build2, 02 for r2

#Ota Updater Pro app
PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=$(PRODUCT_DEVICE)_$(USER) \
    otaupdater.otaver=$(USER) \
    otaupdater.otatime=20121003-0000 \
    otaupdater.noflash=1 \
    otaudpater.rebootcmd=NULL

PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/OTAUpdater-1.0.4.apk:system/app/OTAUpdater-1.0.4.apk

#we will use our own bootlogo 
PRODUCT_COPY_FILES += \
   vendor/kxp/prebuilt/bootlogo/$(BOOTLOGO_SIZE).rle:root/logo.rle

#Use a free file manager and terminal untill AOKP adds an official filemanager
PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/AndroidTerminalEmulator.apk:system/app/AndroidTerminalEmulator.apk \
    vendor/kxp/prebuilt/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so \
    vendor/kxp/prebuilt/app/FileManager.apk:system/app/FileManager.apk



# Unofficial packages that KangXperiaProject uses from trees outside AOKP
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    Trebuchet \
    LegacyCamera 
#    Spearmint \
#    Grape \
#    Bubble \
#    Cherry \
#    Orange \
#    AchepClock
