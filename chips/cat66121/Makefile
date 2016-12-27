ccflags-$(CONFIG_RK_HDMI_DEBUG) = -DDEBUG -DHDMI_DEBUG
ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf-
KERNELDIR ?= /home/pillar/BeagleBone/bb-kernel/KERNEL/build
PWD := $(shell pwd)
it66121-y      += cat66121_hdmi.o \
					cat66121_hdmi_hw.o \
				 	hdmitx_input.o \
				 	hdmitx_drv.o \
					csc.o \
					rk_hdmi_task.o \
					rk_hdmi_lcdc.o \
					hdmitx_hdcp.o \
					sha1.o

obj-m = it66121.o
default:
	make -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE)  modules

