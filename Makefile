obj-m := elantech.o
KVERSION := $(shell uname -r)
KSOURCE := /lib/modules/$(KVERSION)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KSOURCE) M=$(PWD) modules

build: all

clean:
	@rm -fr *.mod.c *.mod *.o .*.cmd *.ko *~
	@rm -fr .tmp_versions
	@rm -fr modules.order
	@rm -fr Module.symvers
