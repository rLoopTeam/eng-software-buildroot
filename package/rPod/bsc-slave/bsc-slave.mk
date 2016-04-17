BSC_SLAVE_VERSION = ae2676a1d58d63b49d1ccb851eba71f9c3da6488
BSC_SLAVE_SITE = $(call github,rLoopTeam,bsc-slave,$(BSC_SLAVE_VERSION))
BSC_SLAVE_INSTALL_TARGET = YES
BSC_SLAVE_DEPENDENCIES = linux

$(eval $(kernel-module))
$(eval $(generic-package))

