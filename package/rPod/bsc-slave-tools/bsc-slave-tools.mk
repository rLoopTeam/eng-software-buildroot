BSC_SLAVE_TOOLS_VERSION = 99e763b74aeaf5b33947f6b2ff16b739ac83042a
BSC_SLAVE_TOOLS_SITE = $(call github,rLoopTeam,bsc-slave-tools,$(BSC_SLAVE_TOOLS_VERSION))
BSC_SLAVE_TOOLS_INSTALL_TARGET = YES
BSC_SLAVE_TOOLS_DEPENDENCIES = bsc-slave

define BSC_SLAVE_TOOLS_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define BSC_SLAVE_TOOLS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/i2ccat $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/i2cSetParameter $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
