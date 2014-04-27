For AOKP:
1/ Creat vendor/aokp/products/e120k.mk
source e120k.mk:
<i>################# Start
# Inherit AOSP device configuration for e120k.
$(call inherit-product, device/samsung/e120k/full_e120k.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/e120k

# Setup device specific product configuration.
PRODUCT_DEVICE := e120k
PRODUCT_NAME := aokp_e120k
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SHV-E120K

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SHV-E120K TARGET_DEVICE=SHV-E120K BUILD_FINGERPRINT=samsung/SHV-E120K/SHV-E120K:4.1.2/JZO54K/KKMK1:user/release-keys PRIVATE_BUILD_DESC="SHV-E120K-user 4.1.2 JZO54K KKMK1 release-keys"
PRODUCT_RELEASE_NAME := SHV-E120K

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
####################### End</i>

2/ copy, paste and rename vendor/aokp/overlay/samsung/i9100 to e120k (modify you want)
3/ Compile rom
