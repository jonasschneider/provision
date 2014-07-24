echo "first boot, yay"

### SSH
PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbc9w+07fcbzgGAruNg7aUQK3z/ZdJpW8AUC5aljiUwZp2UQr5kMN5NwG8RT0u8YDaUtSJqhCDsxgr6DJNVHA0e2iUHPuHXIapYi0vp39KygbRDMj+Cl6vJwMANJvRw+l880tsqh9GFpzzNND33xOJbfEUWseqwvx0/QFMBMsPNIWdsOdiOuURqNVsn896AB7g/T+fGde7RVpZSiWXymyynDj6D3+ZSnIZZtRCGEtq+zszyPTAb97TIBqvCMSaOQQyRRgZfVwE6OW9r74RQeMPTFlCLum3jN4K37i6rRtAvKm/YREUdnGUQALH3dl9jc8g4vkc6KuOQeEVz7XX3ITv jonas@daedalus.local"
apt-get -y install openssh-server
mkdir /root/.ssh
echo "$PUBKEY" > /root/.ssh/authorized_keys




# Remove our firstboot service so that it won't run again
update-rc.d firstboot remove
rm /etc/init.d/firstboot /root/firstboot

# Reboot into the new kernel
#/sbin/reboot
