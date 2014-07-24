all: debian-installer/initrd.gz

debian-installer:
	curl http://ftp.nl.debian.org/debian/dists/wheezy/main/installer-amd64/current/images/netboot/netboot.tar.gz | tar xzv
	curl http://ftp.nl.debian.org/debian/dists/wheezy/main/installer-amd64/current/images/netboot/pxelinux.0 > pxelinux.0
	mv debian-installer/amd64/initrd{,.free}.gz

debian-installer/amd64/initrd.nonfree.gz: debian-installer
	../util/add-firmware-to.sh debian-installer/amd64/initrd.free.gz debian-installer/amd64/initrd.nonfree.gz wheezy

debian-installer/initrd.gz: debian-installer debian-installer/amd64/initrd.nonfree.gz
	ln -s debian-installer/amd64/initrd{.nonfree,}.gz
