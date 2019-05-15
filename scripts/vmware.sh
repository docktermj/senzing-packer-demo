# Log activity.

echo "==============================================================================="
echo "vmware.sh"
echo "==============================================================================="

# VMware-specific configuration.

# Yum installs.

yum -y install \
    fuse-libs \
    open-vm-tools
