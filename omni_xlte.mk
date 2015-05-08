# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/dexp/xlte/full_xlte.mk)



## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xlte
PRODUCT_NAME := omni_xlte
PRODUCT_BRAND := dexp
PRODUCT_MODEL := xlte
PRODUCT_MANUFACTURER := dexp
PRODUCT_RESTRICT_VENDOR_FILES := false
