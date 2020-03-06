# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from E1M device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := fih
PRODUCT_DEVICE := E1M
PRODUCT_MANUFACTURER := fih
PRODUCT_NAME := lineage_E1M
PRODUCT_MODEL := FIH-E1M-FIH

PRODUCT_GMS_CLIENTID_BASE := android-fih
TARGET_VENDOR := fih
TARGET_VENDOR_PRODUCT_NAME := E1M
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="E1M_00WW_FIH-user 8.1.0 OPR1.170623.026 00WW_1_15P release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := FIH/E1M_00WW_FIH/E1M:8.1.0/OPR1.170623.026/00WW_1_15P:user/release-keys
