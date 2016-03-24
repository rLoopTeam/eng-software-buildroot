BSC_SLAVE_VERSION = 8e7e682e8fb752349eabd2e8d174402abcd14d7c
BSC_SLAVE_SITE = $(call github,rLoopTeam,bsc-slave,$(BSC_SLAVE_VERSION))
BSC_SLAVE_INSTALL_TARGET = YES
BSC_SLAVE_DEPENDENCIES = linux

$(eval $(kernel-module))
$(eval $(generic-package))

