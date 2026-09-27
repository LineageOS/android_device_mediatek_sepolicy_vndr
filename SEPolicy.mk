# Board specific SELinux policy variable definitions
MTK_SEPOLICY_PATH := device/mediatek/sepolicy_vndr
TRUSTY_DEVICE_PATH := device/generic/trusty

include device/lineage/sepolicy/libperfmgr/sepolicy.mk

BOARD_VENDOR_SEPOLICY_DIRS += $(MTK_SEPOLICY_PATH)/base/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(MTK_SEPOLICY_PATH)/base/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(MTK_SEPOLICY_PATH)/base/public

BOARD_VENDOR_SEPOLICY_DIRS += $(TRUSTY_DEVICE_PATH)/custom_vm/sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(TRUSTY_DEVICE_PATH)/sepolicy/system_ext/private

ifneq ($(TARGET_BUILD_VARIANT),user)
BOARD_VENDOR_SEPOLICY_DIRS += $(MTK_SEPOLICY_PATH)/debug/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(MTK_SEPOLICY_PATH)/debug/private 
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(MTK_SEPOLICY_PATH)/debug/public 
endif
