THEOS_DEVICE_IP = 192.168.0.110
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouKuAdSkip
YouKuAdSkip_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
