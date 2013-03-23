#we will change the $USER variable here to make our builds have better naming :)
#USER := kxp_jb-mr1-build4
KXP_VERSION_NUMBER := 42200400
KXP_VERSION_RELEASEDATE := 20130226-0000
# version is like this -> 411 for jellybean 4.1.1, 002 for build2, 02 for r2 = 41100202
#for milestone we use triple digits like 101, 102 for milestone 1, 2 etc

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=kxp \
    ro.goo.rom=kxp \
    ro.goo.version=$(KXP_VERSION_NUMBER)

#we will use our own bootlogo 
PRODUCT_COPY_FILES += \
   vendor/kxp/prebuilt/bootlogo/$(BOOTLOGO_SIZE).rle:root/logo.rle

#Use a free terminal emulator as AOKP has none
PRODUCT_COPY_FILES += \
    vendor/kxp/prebuilt/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so


# Unofficial packages that KangXperiaProject uses from trees outside AOKP
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    Trebuchet \
    Thinkfree \
    CMFileManager \
    AndroidTerminalEmulator
