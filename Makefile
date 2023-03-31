ARCHS = armv7 armv7s arm64 arm64e
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
export THEOS=/var/theos
THEOS_PACKAGE_SCEME = rootless
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = adtnim

adtnim_FILES = Tweak.x
adtnim_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += adttnim
include $(THEOS_MAKE_PATH)/aggregate.mk
