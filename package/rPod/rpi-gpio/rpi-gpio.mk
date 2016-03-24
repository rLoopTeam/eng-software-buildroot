################################################################################
#
# rpi-gpio
#
################################################################################

RPI_GPIO_VERSION = 0.6.2
RPI_GPIO_SOURCE = RPi.GPIO-$(RPI_GPIO_VERSION).tar.gz
RPI_GPIO_SITE = https://pypi.python.org/packages/source/R/RPi.GPIO
RPI_GPIO_SETUP_TYPE = distutils

$(eval $(python-package))
