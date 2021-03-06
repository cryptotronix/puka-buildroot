################################################################################
#
# puka-conf
#
################################################################################
PUKA_CONF_INSTALL_STAGING = NO
PUKA_CONF_INSTALL_TARGET = YES

define PUKA_CONF_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0644 $(PUKA_CONF_PKGDIR)/openssl.cnf $(TARGET_DIR)/etc/ssl/openssl.cnf
    $(INSTALL) -D -m 0644 $(PUKA_CONF_PKGDIR)/puka_engine.cnf $(TARGET_DIR)/etc/ssl/puka-engine.cnf
    $(INSTALL) -D -m 0644 $(PUKA_CONF_PKGDIR)/profile $(TARGET_DIR)/etc/profile
endef

$(eval $(generic-package))
