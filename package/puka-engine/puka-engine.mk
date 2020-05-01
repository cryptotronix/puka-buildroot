################################################################################
#
# puka-engine
#
################################################################################
PUKA_ENGINE_VERSION = d56c68eb413ddc18db074bdb78bc73d4b4799d49 
PUKA_ENGINE_SITE_METHOD = git
PUKA_ENGINE_SITE = ssh://git@github.com/cryptotronix/puka.git
PUKA_ENGINE_LICENSE = Apache-2.0 GPL-3.0-or-later BSD-4-Clause-UC OpenSSL CC0-1.0 MIT-like
PUKA_ENGINE_LICENSE_FILES = LICENSE
PUKA_ENGINE_INSTALL_STAGING = NO
PUKA_ENGINE_INSTALL_TARGET = YES
PUKA_ENGINE_DEPENDENCIES = openssl libopenssl util-linux glibc sqlite python3 libgpgme
PUKA_ENGINE_CONF_ENV = \
	GPG_ERROR_CONFIG=$(STAGING_DIR)/usr/bin/gpg-error-config
PUKA_ENGINE_CONF_OPTS += \
	--with-gpgme-prefix=$(STAGING_DIR)/usr \
	--with-enginesdir=$(TARGET_DIR)/usr/lib/engines-1.1
PUKA_ENGINE_AUTORECONF = YES

$(eval $(autotools-package))
