DATALOGGING_VERSION = 4194ec3c607278293325d8e45d540b82587c8cfa
DATALOGGING_SITE = $(call github,rLoopTeam,eng-software-pi,$(DATALOGGING_VERSION))
DATALOGGING_INSTALL_TARGET = YES

define DATALOGGING_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)/data_store/datastored/
endef

define DATALOGGING_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/data_store/datastored/S60datalogging $(TARGET_DIR)/etc/init.d/datalogging
	$(INSTALL) -D -m 0755 $(@D)/data_store/datastored/datalogd $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

