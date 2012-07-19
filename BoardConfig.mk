# Camera
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/samsung/trebon/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := GT-S7500

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_NAND_PAGE_SIZE := 4096 
BOARD_NAND_SPARE_SIZE := 128
# Audio
BOARD_PROVIDES_LIBAUDIO := true

TARGET_PROVIDES_LIBLIGHTS := true

BOARD_USE_CAF_LIBCAMERA := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE :=12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 979369984
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/samsung/trebon/kernel

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/trebon/recovery/recovery.rc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p23
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_HAS_NO_MISC_PARTITON := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/trebon/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/trebon/recovery/recovery_keys.c
BOARD_LDPI_RECOVERY := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO


#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/trebon/include

# OpenGL drivers config file path
BOARD_EGL_CFG := device/samsung/trebon/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27


# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME     := ar6000

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/trebon/releasetools/trebon_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/trebon/releasetools/trebon_img_from_target_files

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := trebon

# Mobile data
BOARD_USES_LIBSECRIL_STUB := true
BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
DCHECK_FOR_EXTERNAL_FORMAT := true
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALOC_BUFFERS 
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE
COMMON_GLOBAL_CFLAGS += -DHAVE_ARM_TLS_REGISTER

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome

# OMX
BOARD_HAVE_CODEC_SUPPORT := SAMSUNG_CODEC_SUPPORT
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CODEC_SUPPORT
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true


BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun
