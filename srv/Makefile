all: debian-installer/amd64/initrd.gz

debian-installer: pxe_config
	curl http://ftp.nl.debian.org/debian/dists/wheezy/main/installer-amd64/current/images/netboot/netboot.tar.gz | tar xzv
	curl http://ftp.nl.debian.org/debian/dists/wheezy/main/installer-amd64/current/images/netboot/pxelinux.0 > pxelinux.0
	mv debian-installer/amd64/initrd{,.free}.gz
	cp pxe_config pxelinux.cfg/default

debian-installer/amd64/initrd.nonfree.gz: debian-installer
	../util/add-firmware-to.sh debian-installer/amd64/initrd.free.gz debian-installer/amd64/initrd.nonfree.gz wheezy

debian-installer/amd64/initrd.gz: debian-installer debian-installer/amd64/initrd.nonfree.gz
	cd debian-installer/amd64; ln -s initrd{.nonfree,}.gz
	touch $@
