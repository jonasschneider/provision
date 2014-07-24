echo "first boot, yay"

# Remove our firstboot service so that it won't run again
update-rc.d firstboot remove
rm /etc/init.d/firstboot /root/firstboot

# Reboot into the new kernel
#/sbin/reboot
