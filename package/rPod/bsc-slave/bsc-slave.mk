BSC_SLAVE_VERSION = 921d54ceefe2da6368381895e032fa08b139ee7c
BSC_SLAVE_SITE = $(call github,rLoopTeam,bsc-slave,$(BSC_SLAVE_VERSION))
BSC_SLAVE_INSTALL_TARGET = YES
BSC_SLAVE_DEPENDENCIES = linux

$(eval $(kernel-module))
$(eval $(generic-package))

