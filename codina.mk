# Include common makefile
$(call inherit-product, device/samsung/u8500-common/common.mk)

#For better compatibility with ROMs (like Slim, PAC)
$(call inherit-product, vendor/samsung/u8500-common/codina/codina-vendor-blobs.mk)

# Overlay
LOCAL_PATH := device/samsung/codina

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is hdpi.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += hdpi

PRODUCT_PROPERTY_OVERRIDES += \
     ro.sf.lcd_density=240

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.samsungcodina:root/fstab.samsungcodina \
    $(LOCAL_PATH)/rootdir/init.recovery.samsungcodina.rc:root/init.recovery.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.rc:root/init.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungcodina.rc:root/ueventd.samsungcodina.rc
    
# STE Modem
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ste_modem.sh:system/etc/ste_modem.sh

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/adm.sqlite-u8500:system/etc/adm.sqlite-u8500

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf



# Xperia Keyboard
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/xperia/app/xperiaIME.apk:system/app/xperiaIME.apk \
    $(LOCAL_PATH)/xperia/lib/libXT9Engine.so:system/lib/libXT9Engine.so \
    $(LOCAL_PATH)/xperia/lib/libXT9Engine.so:system/lib/libXT9Engine.so \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_PLlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-4_PLlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-28_ENubUN_xt9_3.ldb:system/usr/xt9/SEMC_810_r1-28_ENubUN_xt9_3.ldb


