# Include common makefile
$(call inherit-product, device/samsung/u8500-common/common.mk)

#For better compatibility with ROMs (like Slim, PAC)
$(call inherit-product, vendor/samsung/u8500-common/codina/codina-vendor-blobs.mk)

ifneq ($(TARGET_SCREEN_HEIGHT),800)
# Call cm.mk because somehow it's not being called!
$(call inherit-product, device/samsung/codina/cm.mk)
endif

LOCAL_PATH := device/samsung/codina

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    GalaxyAce2Settings \
    CMAccount \
    libasound \
    lights.montblanc

# Filesystem management tools

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.samsungcodina:root/fstab.samsungcodina \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.rc:root/init.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.usb.rc:root/init.samsungcodina.usb.rc \
    $(LOCAL_PATH)/rootdir/prerecovery.rc:root/prerecovery.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungcodina.rc:root/ueventd.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/recovery.rc:root/init.recovery.codina.rc
    
# STE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ste_modem.sh:system/etc/ste_modem.sh

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/adm.sqlite-u8500:system/etc/adm.sqlite-u8500 \

PRODUCT_PACKAGES += \
    libomxil-bellagio 

# Dbus
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dbus.conf:system/etc/dbus.conf

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Graphics
PRODUCT_PACKAGES += \
    libblt_hw 

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Xperia Keyboard
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/xperia/app/xperiaIME.apk:system/app/xperiaIME.apk \
    $(LOCAL_PATH)/xperia/lib/libXT9Engine.so:system/lib/libXT9Engine.so \
    $(LOCAL_PATH)/xperia/lib/libXT9Engine.so:system/lib/libXT9Engine.so \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-1_SUlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-1_SUlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-1_TAlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-1_TAlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-2_DAusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-2_DAusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-2_ELusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-2_ELusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-2_JWlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-2_JWlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_BSlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-3_BSlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_HElsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-3_HElsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_KKlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-3_KKlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_MKlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-3_MKlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_SQlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-3_SQlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_THlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-3_THlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_UKlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-3_UKlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-3_VIlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-3_VIlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4-12-1_SVusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-4-12-1_SVusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_CAlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-4_CAlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_EUlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-4_EUlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_GLlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-4_GLlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_HLlbUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-4_HLlbUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_ISlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-4_ISlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_MSlbUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-4_MSlbUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_PLlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-4_PLlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_ROlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-4_ROlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-4_RUlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-4_RUlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_ARlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-5_ARlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_CSlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-5_CSlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_ETlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_ETlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_HIlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_HIlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_HRlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_HRlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_HUlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_HUlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_IDlbUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-5_IDlbUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_SKlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-5_SKlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_SLlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_SLlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_SRlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_SRlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_TLlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-5_TLlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-5_TRlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-5_TRlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-7_FAlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-7_FAlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-9_LTlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-9_LTlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-1_SUlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-1_SUlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-9_LVlsUN_xt9.ldb:system/usr/xt9/SEMC_810_r1-9_LVlsUN_xt9.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-10_BGlsUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-10_BGlsUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-15_DEusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-15_DEusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-16_ESusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-16_ESusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-17_FIusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-17_FIusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-22_ITusUN_xt9_2.ldb:system/usr/xt9/SEMC_810_r1-22_ITusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-26_FRusUN_xt9_3.ldb:system/usr/xt9/SEMC_810_r1-26_FRusUN_xt9_3.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_810_r1-28_ENubUN_xt9_3.ldb:system/usr/xt9/SEMC_810_r1-28_ENubUN_xt9_3.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_811_r1-3-10-1_NLusUN_xt9_2.ldb:system/usr/xt9/SEMC_811_r1-3-10-1_NLusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_811_r1-4-10-1_PTusUN_xt9_2.ldb:system/usr/xt9/SEMC_811_r1-4-10-1_PTusUN_xt9_2.ldb \
    $(LOCAL_PATH)/xperia/usr/xt9/SEMC_820_r1-3_NOusUN_xt9_2.ldb:system/usr/xt9/SEMC_820_r1-3_NOusUN_xt9_2.ldb

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
