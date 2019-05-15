# Log activity.

echo "==============================================================================="
echo "base.sh"
echo "==============================================================================="

# Update sudoers.

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Yum installs.

yum -y install \
    gcc \
    make \
    gcc-c++ \
    kernel-devel-`uname -r` \
    perl

