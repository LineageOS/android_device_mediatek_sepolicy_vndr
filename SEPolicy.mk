# Board specific SELinux policy variable definitions
MTK_SEPOLICY_PATH := device/mediatek/sepolicy_vndr

include device/lineage/sepolicy/libperfmgr/sepolicy.mk

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/vendor \
    $(MTK_SEPOLICY_PATH)/bsp/vendor \
    $(MTK_SEPOLICY_PATH)/modem

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/private \
    $(MTK_SEPOLICY_PATH)/bsp/private \

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/public \
    $(MTK_SEPOLICY_PATH)/bsp/public \

ifneq ($(TARGET_BUILD_VARIANT),user)
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/bsp/debug/vendor \
    $(MTK_SEPOLICY_PATH)/basic/debug/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/debug/private \
    $(MTK_SEPOLICY_PATH)/bsp/debug/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/debug/public \
    $(MTK_SEPOLICY_PATH)/bsp/debug/public
endif
