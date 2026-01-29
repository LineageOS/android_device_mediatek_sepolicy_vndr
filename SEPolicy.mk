# Board specific SELinux policy variable definitions
MTK_SEPOLICY_PATH := device/mediatek/sepolicy_vndr

include device/lineage/sepolicy/libperfmgr/sepolicy.mk

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/non_plat \
    $(MTK_SEPOLICY_PATH)/bsp/non_plat \
    $(MTK_SEPOLICY_PATH)/modem

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/plat_private \
    $(MTK_SEPOLICY_PATH)/bsp/plat_private \

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/plat_public \
    $(MTK_SEPOLICY_PATH)/bsp/plat_public \

ifneq ($(TARGET_BUILD_VARIANT),user)
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/bsp/debug/non_plat \
    $(MTK_SEPOLICY_PATH)/basic/debug/non_plat

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/debug/plat_private \
    $(MTK_SEPOLICY_PATH)/bsp/debug/plat_private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/debug/plat_public \
    $(MTK_SEPOLICY_PATH)/bsp/debug/plat_public
endif
