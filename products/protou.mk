# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := protou

TARGET_BOOTANIMATION_NAME := vertical-480x800

DEVICE_PACKAGE_OVERLAYS += vendor/aokp/overlay/protou

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/htc/protou/protou.mk)

# Device naming
PRODUCT_RELEASE_NAME := Desire X
PRODUCT_VERSION_DEVICE_SPECIFIC := -Protou
PRODUCT_DEVICE := protou
PRODUCT_NAME := aokp_protou
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=protou BUILD_ID=JRO03C BUILD_FINGERPRINT=ro.build.fingerprint=htc_europe/protou/protou:4.1.1/JRO03C/162361.3:user/release-keys

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation-alt.zip
