# Inherit common stuff
$(call inherit-product, vendor/spirit/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/spirit/prebuilt/common/bootanimation/1280.zip:system/media/bootanimation.zip
endif
