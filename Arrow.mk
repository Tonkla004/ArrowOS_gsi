$(call inherit-product, vendor/arrow/config/common_full_phone.mk)
$(call inherit-product, vendor/arrow/config/common.mk)
$(call inherit-product, vendor/arrow/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/arrow/config/BoardConfigArrow.mk)
$(call inherit-product, device/arrow/sepolicy/common/sepolicy.mk)
-include vendor/arrow/build/core/config.mk

SELINUX_IGNORE_NEVERALLOWS := true
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

ARROW_GAPPS := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/naz664/ArrowOS_gsi/13.1/ota.json

# Set Bootanimation at 1080p
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_NOT_USES_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true

# APN
PRODUCT_PACKAGES += apns-conf.xml

