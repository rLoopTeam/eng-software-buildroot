BSC_SLAVE_VERSION = 6fccf38453d7fdbe530e9f73ce3db822fd9f04b1
BSC_SLAVE_SITE = $(call github,rLoopTeam,bsc-slave,$(BSC_SLAVE_VERSION))
BSC_SLAVE_INSTALL_TARGET = YES
BSC_SLAVE_DEPENDENCIES = linux

$(eval $(kernel-module))
$(eval $(generic-package))

