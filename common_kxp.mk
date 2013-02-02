#we will change the $USER variable here to make our builds have better naming :)
USER := kxp_milestone1-r2
KXP_VERSION_NUMBER := 41210102
KXP_VERSION_RELEASEDATE := 20130101-0000
# version is like this -> 411 for jellybean 4.1.1, 002 for build2, 02 for r2 = 41100202
#for milestone we use triple digits like 101, 102 for milestone 1, 2 etc

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=kxp \
    ro.goo.rom=kxp \
    ro.goo.version=$(KXP_VERSION_NUMBER)

######################################################################################################
#Ota Updater Pro app
#PRODUCT_PROPERTY_OVERRIDES += \
#    otaupdater.otaid=kxp_$(TARGET_PRODUCT) \
#    otaupdater.otaver=$(KXP_VERSION_NUMBER) \
#    otaupdater.otatime=$(KXP_VERSION_RELEASEDATE) \
#    otaupdater.noflash=1 \
#    otaudpater.rebootcmd=NULL
#note : please use ROM name  "kxp_aokp_<devicename>" when updating the OTA server e.g. kxp_aokp_nozomi
#
#PRODUCT_COPY_FILES += \
#    vendor/kxp/prebuilt/app/OTAUpdater-1.0.5.apk:system/app/OTAUpdater-1.0.5.apk
#######################################################################################################

#we will use our own bootlogo 
PRODUCT_COPY_FILES += \
   vendor/kxp/prebuilt/bootlogo/$(BOOTLOGO_SIZE).rle:root/logo.rle

#Use a free terminal emulator as AOKP has none
PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/app/AndroidTerminalEmulator.apk:system/app/AndroidTerminalEmulator.apk \
    vendor/kxp/prebuilt/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so


# Unofficial packages that KangXperiaProject uses from trees outside AOKP
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    Trebuchet \
    Thinkfree \
    CMFileManager
#    Spearmint \
#    Grape \
#    Bubble \
#    Cherry \
#    Orange \
#    AchepClock
