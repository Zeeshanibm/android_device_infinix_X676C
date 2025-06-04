# twrp_Infinix-X676C.mk

# This is the product makefile for TWRP recovery for Infinix-X676C

PRODUCT_NAME := twrp_Infinix-X676C
PRODUCT_DEVICE := Infinix-X676C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X676C

# Include the base lineage recovery makefile or TWRP recovery makefile
$(call inherit-product, $(LOCAL_DIR)/lineage_X676C.mk)

# Add TWRP specific features
PRODUCT_COPY_FILES += \
    $(LOCAL_DIR)/proprietary-files.txt

# Use TWRP recovery
PRODUCT_PACKAGES := \
    recovery

# Enable SELinux permissive for recovery (optional)
BOARD_SEPOLICY_DIRS += device/infinix/X676C/sepolicy
