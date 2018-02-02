# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
CUSTOM_VERSION := PixelExperience_$(CUSTOM_BUILD)-$(PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    org.pixelexperience.version=$(CUSTOM_VERSION) \
    org.pixelexperience.build_date=$(CUSTOM_BUILD_DATE) \
    org.pixelexperience.build_type=$(CUSTOM_BUILD_TYPE)

# Fingerprint
TARGET_PRODUCT_SHORT := $(CUSTOM_BUILD)
TARGET_PRODUCT_SHORT := $(subst aosp_,,$(TARGET_PRODUCT_SHORT))
ROM_FINGERPRINT := PixelExperience/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date +%Y%m%d.%H:%M)
PRODUCT_PROPERTY_OVERRIDES += \
    org.pixelexperience.fingerprint=$(ROM_FINGERPRINT)
