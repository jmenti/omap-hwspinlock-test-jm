# SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
#
# TI OMAP HwSpinlock Unit Test
#

obj-m = omap_hwspinlock_test.o

all:
ifeq ($(KERNELDIR),)
	@echo "Error: KERNELDIR not set, exiting..."
	@echo "Eg: make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- KERNELDIR=<linux-kernel rootdir>"
	@exit 1
endif
	make ${MAKE_OPTS} -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(RM) -r *.o *.ko *.mod* *.dwo .*.dwo .*.cmd *.symvers modules.order
