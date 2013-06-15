$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


PRODUCT_COPY_FILES += \
    device/pantech/ef52l/ramdisk/ueventd.rc:root/ueventd.rc \
    device/pantech/ef52l/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/pantech/ef52l/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/pantech/ef52l/ramdisk/fstab.qcom:root/fstab.qcom \


# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
