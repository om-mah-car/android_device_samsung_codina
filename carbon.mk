# Specify phone tech before including full_phone
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-I8160

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit device configuration
$(call inherit-product, device/samsung/codina/full_codina.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_codina
PRODUCT_DEVICE := codina
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8160
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I8160 TARGET_DEVICE=codina
