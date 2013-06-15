# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := APQ8064Pro

#Platform
TARGET_BOARD_PLATFORM := msm8960
#TARGET_BOARD_PLATFORM_GPU := qcom-adreno320

# CPU
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true


#-------------------------------------------------------------------------------------------------
# Kernel 3.4
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0 vmalloc=0x12c00000
BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000

# Kernel 125
TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef52l/kernel125
TARGET_PREBUILT_KERNEL := device/pantech/ef52l/kernel125
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel125 \

# Kernel 115
#TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef52l/kernel115
#TARGET_PREBUILT_KERNEL := device/pantech/ef52l/kernel115
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel115 \

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITON := true
BOARD_EGL_CFG := device/pantech/ef52l/egl.cfg

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP config
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
SP1_NAME := "modem"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "rawdata"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0