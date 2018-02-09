#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_SEPOLICY_DIRS += \
    vendor/aosp/sepolicy/qcom/common \
    vendor/aosp/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)

