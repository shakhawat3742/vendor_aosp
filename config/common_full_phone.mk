IS_PHONE := true

# Inherit common stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true
