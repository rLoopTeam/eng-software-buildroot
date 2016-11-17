BSC_SLAVE_TOOLS_VERSION = cb843728fd84442040e93a66826fc9a8191d2f20
BSC_SLAVE_TOOLS_SITE = $(call github,rLoopTeam,bsc-slave-tools,$(BSC_SLAVE_TOOLS_VERSION))
BSC_SLAVE_TOOLS_INSTALL_TARGET = YES

define BSC_SLAVE_TOOLS_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define BSC_SLAVE_TOOLS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/uartSetParameter $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/uarttelemetry $(TARGET_DIR)/bin
endef

$(eval $(generic-package))

