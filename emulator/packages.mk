# Packages
PRODUCT_PACKAGES += \
    WallpaperPicker \
    WeatherClienti \
#    GoldfishParts

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni
 
# Additional tools
PRODUCT_PACKAGES += \
    bash \
    e2fsck \
    fsck.exfat \
    htop \
    lsof \
    mke2fs \
    mount.exfat \
    nano \
    openvpn \
    powertop \
    tune2fs \
    vim \
    mkfs.ntfs \
    mount.ntfs \
    fsck.ntfs
