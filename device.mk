DEVICE_PATH := device/oplus/OP5231

BOARD_SHIPPING_API_LEVEL := 31
BOARD_API_LEVEL := 31
SHIPPING_API_LEVEL := 31
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_TARGET_VNDK_VERSION := 31

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
    fastbootd
    
ro.vendor.build.fingerprint=oplus/ossi/ossi:12/SP1A.210812.016/1712044009060:user/release-keys

# f2fs utilities
PRODUCT_PACKAGES_DEBUG += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs \
    bootctl \
    update_engine_client