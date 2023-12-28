# Board specific SELinux policy variable definitions
MTK_SEPOLICY_PATH := device/mediatek/sepolicy_vndr

ifeq ($(BOARD_MTK_SEPOLICY_IS_LEGACY), true)
# Build with broken namespaces
# Userspace blobs are still dependent older props that
# do not pass the VTS test cases.
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/legacy/non_plat
endif

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/non_plat \
    $(MTK_SEPOLICY_PATH)/basic/debug/non_plat \
    $(MTK_SEPOLICY_PATH)/bsp/non_plat \
    $(MTK_SEPOLICY_PATH)/bsp/debug/non_plat \
    $(MTK_SEPOLICY_PATH)/modem

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/plat_private \
    $(MTK_SEPOLICY_PATH)/basic/debug/plat_private \
    $(MTK_SEPOLICY_PATH)/bsp/plat_private \
    $(MTK_SEPOLICY_PATH)/bsp/debug/plat_private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/plat_public \
    $(MTK_SEPOLICY_PATH)/basic/debug/plat_public \
    $(MTK_SEPOLICY_PATH)/bsp/plat_public \
    $(MTK_SEPOLICY_PATH)/bsp/debug/plat_public
