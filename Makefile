export ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HaraAd
HaraAd_FILES = Tweak.x
HaraAd_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
