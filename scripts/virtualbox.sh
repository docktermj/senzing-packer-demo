# Log activity.

echo "==============================================================================="
echo "virtualbox.sh"
echo "==============================================================================="

# VirtualBox-specific configuration.

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

# required for VirtualBox 4.3.26

yum -y install \
    bzip2

# Run VBoxLinuxAdditions.run.

cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso

