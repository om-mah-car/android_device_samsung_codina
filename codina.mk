# Include common makefile
$(call inherit-product, device/samsung/u8500-common/common.mk)

# For better compatibility with ROMs (like Slim, PAC)
$(call inherit-product, vendor/samsung/u8500-common/codina/codina-vendor-blobs.mk)

LOCAL_PATH := device/samsung/codina

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/device_tunables.rc:root/device_tunables.rc \
    $(LOCAL_PATH)/rootdir/fstab.samsungcodina:root/fstab.samsungcodina \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.rc:root/init.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.samsungcodina.rc:root/init.recovery.samsungcodina.rc \
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
    
# WIFI fix
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/strace/strace:system/xbin/strace


