PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# general properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.build.selinux=1

# Allow tethering without provisioning app
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/du/prebuilt/common/bin/sysinit:system/bin/sysinit

# Init files
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/init.local.rc:system/etc/init/dirtyunicorns.rc

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Backup tool
PRODUCT_COPY_FILES += \
    vendor/extras/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/extras/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/extras/build/tools/50-du.sh:system/addon.d/50-du.sh

# Weather client
PRODUCT_COPY_FILES += \
    vendor/du/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/permissions/org.pixelexperience.weather.client.xml \
    vendor/du/etc/default-permissions/org.pixelexperience.weather.client.xml:system/etc/default-permissions/org.pixelexperience.weather.client.xml

# Packages
include vendor/du/config/packages.mk

# Branding
include vendor/du/config/branding.mk

# Themes
include vendor/themes/common.mk

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/common

WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
