################################################################################
#
# bootgen
#
################################################################################

BOOTGEN_VERSION = 2019.2
BOOTGEN_SITE = $(call github,Xilinx,bootgen,$(BOOTGEN_VERSION))
BOOTGEN_DEPENDENCIES = openssl
BOOTGEN_LICENSE = Apache-2.0 GPL-3.0-or-later BSD-4-Clause-UC OpenSSL CC0-1.0 MIT-like
BOOTGEN_LICENSE_FILES = LICENSE

HOST_BOOTGEN_DEPENDENCIES = host-libopenssl

HOST_CXXFLAGS = -std=c++0x -O -Wall -Wno-reorder -Wno-deprecated-declarations

define HOST_BOOTGEN_BUILD_CMDS
	$(HOST_MAKE_ENV) $(MAKE) -C $(@D) $(HOST_CONFIGURE_OPTS)
endef

define HOST_BOOTGEN_INSTALL_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bootgen $(HOST_DIR)/bin/bootgen
endef

$(eval $(host-generic-package))