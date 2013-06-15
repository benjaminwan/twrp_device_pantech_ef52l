# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ef52l

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52l/device_ef52l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := cm_ef52l
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := IM-A870L
PRODUCT_MANUFACTURER := PANTECH

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=VEGA_IM-A870L BUILD_FINGERPRINT=VEGA/VEGA_IM-A870L/ef52l:4.1.2/JZO54K/IM-A870L.003:user/release-keys PRIVATE_BUILD_DESC="msm8960-user 4.1.2 JZO54K IM-A870L.003 release-keys" BUILD_NUMBER=S1235125.EF52L_003
