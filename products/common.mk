# Generic product
PRODUCT_NAME := vanir
PRODUCT_BRAND := vanir
PRODUCT_DEVICE := generic

# Build packages included in manifest
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    busybox

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg \
    ro.modversion=v3.0

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=300 \
    net.bt.name=Android \
    dalvik.vm.stack-trace-file=/tmp/stack-trace.txt \
    dalvik.vm.heapstartsize=48m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-flags=v=n,o=v,u=n,m=y \
    dalvik.vm.lockprof.threshold=850 \
    dalvik.vm.verify-bytecode=false \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    persist.sys.purgeable_assets=1 \
    windowsmgr.max_events_per_sec=280 \
    pm.sleep_mode=1 \
    ro.HOME_APP_ADJ=1 \
    persist.sys.use_dithering=0 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.config.nocheckin=1 \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    debug.composition.type=gpu \
    ro.mot.eri.losalert.delay=600 \
    ro.HOME_APP_MEM=8192 \
    ro.FOREGROUND_APP_MEM=8192 \
    ro.VISIBLE_APP_MEM=8192 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=10000 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    movfilter=40 \
    movehyst=0 \
    per_sec=300 \
    TCHTHR=28 \
    ro.semc.xloud.supported=true \
    persist.service.xloud.enable=1 \
    ro.semc.sound_effects_enabled=true \
    ro.service.swiqi.supported=true \
    persist.service.swiqi.enable=1

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40C BUILD_ID=JOP40C BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/vanir/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/vanir/proprietary/common/xbin/su:system/xbin/su \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/bash:system/xbin/bash \
    vendor/vanir/proprietary/common/xbin/crond:system/xbin/crond \
    vendor/vanir/proprietary/common/xbin/crontab:system/xbin/crontab \
    vendor/vanir/proprietary/common/xbin/nano:system/xbin/nano \
    vendor/vanir/proprietary/common/xbin/openvpn:system/xbin/openvpn \
    vendor/vanir/proprietary/common/xbin/run-parts:system/xbin/run-parts \
    vendor/vanir/proprietary/common/xbin/scp:system/xbin/scp \
    vendor/vanir/proprietary/common/xbin/sh:system/xbin/sh \
    vendor/vanir/proprietary/common/xbin/ssh:system/xbin/ssh \
    vendor/vanir/proprietary/common/xbin/zipalign:system/xbin/zipalign \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/vanir/proprietary/common/xbin/vanirtweakapply:system/xbin/vanirtweakapply \
    vendor/vanir/proprietary/common/xbin/vanir:system/xbin/vanir \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
	vendor/vanir/proprietary/common/xbin/vanirnice:system/xbin/banirnice


# Misc Files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# bash stuff... config files and so's
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/lib/libncurses.so:system/lib/libncurses.so \
    vendor/vanir/proprietary/common/etc/bash/bash_logout:system/etc/bash/bash_logout \
    vendor/vanir/proprietary/common/etc/bash/bashrc:system/etc/bash/bashrc

# missing guts for stuff that needs guts
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/vanir/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so

# Data Files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/data/cron/root:data/cron/root

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# init.d Tweaks
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/vanir/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/vanir/proprietary/common/etc/init.d/98SONIC_SHOCK:system/etc/init.d/98SONIC_SHOCK \
    vendor/vanir/proprietary/common/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/vanir/proprietary/common/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \
    vendor/vanir/proprietary/common/etc/cron/cron.minutely/nicetweaks.sh:/system/etc/cron/cron.minutely/nicetweaks.sh \
    vendor/vanir/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk

# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes \
       CMFileManager

PRODUCT_COPY_FILES += \
       vendor/vanir/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml
