TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = adttnim

adttnim_EXTRA_FRAMEWORKS += Cephei
adttnim_FRAMEWORKS = UIKit

adttnim_FILES = XXXRootListController.m
adttnim_FRAMEWORKS = UIKit
adttnim_PRIVATE_FRAMEWORKS = Preferences
adttnim_INSTALL_PATH = /Library/PreferenceBundles
adttnim_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
