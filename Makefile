#
# Makefile for HDMI linux kernel module.
#

ccflags-$(CONFIG_RK_HDMI_DEBUG) = -DDEBUG -DHDMI_DEBUG
ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf-
CONFIG_RK_HDM=m
KERNELDIR ?= /home/pillar/BeagleBone/bb-kernel/KERNEL/build
PWD := $(shell pwd)
it66121-y := rk_hdmi_edid.o rk_hdmi_lcdc.o rk_hdmi_task.o rk_hdmi_sysfs.o rk_hdmi_parse_dt.o
it66121-y += chips/
obj-m = it66121.o
default:
	make -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE)  modules
