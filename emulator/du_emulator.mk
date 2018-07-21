PRODUCT_COPY_FILES += \
    vendor/extras/emulator/fstab.ranchu:root/fstab.ranchu

$(call inherit-product, build/target/product/sdk_x86.mk)

$(call inherit-product, vendor/extras/emulator/common.mk)

# Override product naming for DU
PRODUCT_NAME := du_emulator

DEVICE_PACKAGE_OVERLAYS += vendor/extras/emulator/overlay
