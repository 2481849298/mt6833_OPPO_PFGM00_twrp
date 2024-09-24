DEVICE_PATH := device/oplus/OP5231


# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# OEM otacerts
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/otacert
    
# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Extra required packages
PRODUCT_PACKAGES += \
    libion
    
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mtk \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd
    
BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1721011260820:user/release-keys

# f2fs utilities
PRODUCT_PACKAGES_DEBUG += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs \
    bootctl \
    update_engine_client