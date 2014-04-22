# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/samsung/e120k/full_e120k.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := e120k

# Device identifier
PRODUCT_NAME := slim_e120k
PRODUCT_DEVICE := e120k

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SHV-E120K TARGET_DEVICE=SHV-E120K BUILD_FINGERPRINT="samsung/SHV-E120K/SHV-E120K:4.1.2/JZO54K/E120KKKMK1:user/release-keys" PRIVATE_BUILD_DESC="SHV-E120K-user 4.1.2 JZO54K E120KKKMK1 release-keys"
